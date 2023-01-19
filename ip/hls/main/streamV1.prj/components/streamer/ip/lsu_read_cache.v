// (c) 1992-2022 Intel Corporation.                            
// Intel, the Intel logo, Intel, MegaCore, NIOS II, Quartus and TalkBack words    
// and logos are trademarks of Intel Corporation or its subsidiaries in the U.S.  
// and/or other countries. Other marks and brands may be claimed as the property  
// of others. See Trademarks on intel.com for full list of Intel trademarks or    
// the Trademarks & Brands Names Database (if Intel) or See www.Intel.com/legal (if Altera) 
// Your use of Intel Corporation's design tools, logic functions and other        
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Intel MegaCore Function License Agreement, or other applicable      
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Intel and sold by    
// Intel or its authorized distributors.  Please refer to the applicable          
// agreement for further details.                                                 


//
// Top level module for the "cached" lsu
// Latency  = 2
// Capacity = 1
//
// Description:
//
// This is essentially a streaming unit where threads can enter out of order
// It is organized as a direct mapped cache where there are N cache lines
// Each cache line is CACHESIZE bytes long
//
// By default, the values of N=8 and CACHESIZE=1024 bytes
//
// Feel free to change the parameters as determined by the data access patterns
//
// Note that this is a read only cache so one has to guarantee that data isn't
// going to get overwritten by some store within the kernel. The start signal
// is brought into this LSU to "flush" the cache once the kernel is started
//
// You'll notice that there are many similarities to the streaming unit including
// a FIFO size. Well, think of a cache as a FIFO where it can be accessed in any
// order :-)
//
// Note2: It is slightly different from other lsu's in that it needs a kernel start
// signal that tells it to invalidate it's contents
//

`default_nettype none

module lsu_read_cache
(
   clk, reset, flush, o_stall, i_valid, i_stall, i_nop, o_valid, o_readdata,
   o_active, //Debugging signal
   i_address, avm_address, avm_burstcount, avm_read,
   avm_readdata, avm_waitrequest, avm_byteenable, avm_readdatavalid,
   // profile
   req_cache_hit_count,
   ecc_err_status
);

/*************
* Parameters *
*************/
parameter AWIDTH=32;
parameter WIDTH_BYTES=32;
parameter MWIDTH_BYTES=32;
parameter ALIGNMENT_ABITS=6;
parameter BURSTCOUNT_WIDTH=6;
parameter KERNEL_SIDE_MEM_LATENCY=1;
parameter REQUESTED_SIZE=1024;
parameter ACL_BUFFER_ALIGNMENT=128;
parameter ACL_PROFILE=0;
parameter ASYNC_RESET=1;        // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
parameter SYNCHRONIZE_RESET=0;  // set to '1' to pass the incoming reset signal through a synchronizer before use
parameter enable_ecc = "FALSE"; // Enable error correction coding

// Derived parameters
localparam WIDTH=8*WIDTH_BYTES;
localparam MWIDTH=8*MWIDTH_BYTES;
localparam MBYTE_SELECT_BITS=$clog2(MWIDTH_BYTES);
localparam BYTE_SELECT_BITS=$clog2(WIDTH_BYTES);
localparam MAXBURSTCOUNT=2**(BURSTCOUNT_WIDTH-1);
localparam CACHESIZE=ACL_BUFFER_ALIGNMENT/MWIDTH_BYTES > 1 ? ACL_BUFFER_ALIGNMENT : MWIDTH_BYTES*2 ;
localparam FIFO_DEPTH=  CACHESIZE/MWIDTH_BYTES;
localparam FIFO_DEPTH_LOG2=$clog2(FIFO_DEPTH);
localparam CACHE_ADDRBITS=MBYTE_SELECT_BITS+FIFO_DEPTH_LOG2;
localparam N=( (REQUESTED_SIZE+CACHESIZE-1) / CACHESIZE) ;
localparam LOG2N=$clog2(N);
localparam LOG2N_P=(LOG2N == 0)? 1 : LOG2N;

/********
* Ports *
********/
// Standard globals
input wire clk;
input wire reset;
input wire flush;

// Upstream pipeline interface
output wire o_stall;
input wire i_valid;
input wire i_nop;
input wire [AWIDTH-1:0] i_address;

// Downstream pipeline interface
input wire i_stall;
output wire o_valid;
output wire [WIDTH-1:0] o_readdata;
output wire o_active;

// Avalon interface
output wire [AWIDTH-1:0] avm_address;
output wire [BURSTCOUNT_WIDTH-1:0] avm_burstcount;
output wire avm_read;
input wire [MWIDTH-1:0] avm_readdata;
input wire avm_waitrequest;
output wire [MWIDTH_BYTES-1:0] avm_byteenable;
input wire avm_readdatavalid;

// ACL PROFILE
output wire req_cache_hit_count;

output logic  [1:0] ecc_err_status;  // ecc status signals

/***************
* Architecture *
***************/

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 4;   // reset needs to fan out to each 'cache_valid' register, so provide adequate pipelining
   logic                         aclrn;
   logic [NUM_RESET_COPIES-1:0]  sclrn;
   logic                         resetn_synchronized;
   acl_reset_handler #(
      .ASYNC_RESET            (ASYNC_RESET),
      .USE_SYNCHRONIZER       (SYNCHRONIZE_RESET),
      .SYNCHRONIZE_ACLRN      (SYNCHRONIZE_RESET),
      .PIPE_DEPTH             (RESET_PIPE_DEPTH),
      .NUM_COPIES             (NUM_RESET_COPIES)
   ) acl_reset_handler_inst (
      .clk                    (clk),
      .i_resetn               (~reset),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );

wire stall_out;
wire prefetch_new_block;

reg [AWIDTH-1:0] reg_i_address;
reg reg_i_valid;
reg reg_i_nop;


reg [N-1:0] cache_valid;

wire cache_available;
reg cache_available_d1;

wire [MWIDTH-1:0] cache_data;
wire [WIDTH-1:0] extracted_cache_data;

wire [LOG2N_P-1:0] in_cache, in_cache_unreg;
generate
  if(N==1) begin : GEN_N_IS_1
    assign in_cache = 1'b0;
    assign in_cache_unreg = 1'b0;
  end
  else begin : GEN_N_GREATER_THAN_1
    assign in_cache = reg_i_address[CACHE_ADDRBITS+LOG2N-1:CACHE_ADDRBITS];
    assign in_cache_unreg = i_address[CACHE_ADDRBITS+LOG2N-1:CACHE_ADDRBITS];
  end
  if(ACL_PROFILE) begin: GEN_ACL_PROFILE
    reg R_thread_valid;
    assign req_cache_hit_count = R_thread_valid && cache_valid[in_cache];
    always@(posedge clk) begin
      R_thread_valid <= i_valid & !i_nop & !stall_out;
    end
  end
endgenerate


assign o_stall = stall_out;

assign prefetch_new_block = reg_i_valid && !reg_i_nop && !cache_valid[in_cache];

wire stall_out_from_output_reg;

assign stall_out = reg_i_valid  && !reg_i_nop && (prefetch_new_block || !cache_available || !cache_available_d1)  || reg_i_valid && stall_out_from_output_reg;

reg output_reg_valid;
reg [WIDTH-1:0] output_reg;
assign stall_out_from_output_reg = output_reg_valid && i_stall;

integer i;

always@(posedge clk or negedge aclrn)
begin
   if(~aclrn)
   begin
      cache_valid <= {N{1'b0}};

      reg_i_address <='0;
      reg_i_valid <= 1'b0;
      reg_i_nop <= 1'b0;

      output_reg_valid <= 1'b0;
      output_reg <= '0;

      cache_available_d1 <= 1'b0;
   end
   else
   begin
      cache_available_d1 <= cache_available;

      if (flush)
      begin
         cache_valid <= {N{1'b0}};
         $display("Flushing Cache\n");
      end
      else if (prefetch_new_block)
      begin
         $display("%m is Prefetching a cache block for address {%x} in line%d\n", reg_i_address, in_cache);

         cache_valid[in_cache] <= 1'b1;
      end

      if (!stall_out)
      begin
         reg_i_valid <= i_valid;
         reg_i_address <= i_address;
         reg_i_nop <= i_nop;
      end

      if (!stall_out_from_output_reg)
      begin
         output_reg <= extracted_cache_data;
         output_reg_valid <= reg_i_valid && !stall_out;
      end

      if (~sclrn[0]) begin
         cache_valid <= {N{1'b0}};

         //reg_i_address <='0;
         reg_i_valid <= 1'b0;
         reg_i_nop <= 1'b0;

         output_reg_valid <= 1'b0;
         //output_reg <= '0;

         cache_available_d1 <= 1'b0;
      end
   end
end

wire prefetch_active;

lsu_prefetch_block #(
   .DATAWIDTH( MWIDTH ),
   .MAXBURSTCOUNT( MAXBURSTCOUNT ),
   .BURSTCOUNTWIDTH( BURSTCOUNT_WIDTH ),
   .BYTEENABLEWIDTH( MWIDTH_BYTES ),
   .ADDRESSWIDTH( AWIDTH ),
   .FIFODEPTH( FIFO_DEPTH ),
   .FIFODEPTH_LOG2( FIFO_DEPTH_LOG2 ),
   .FIFOUSEMEMORY( 1 ),
   .N(N),
   .LOG2N(LOG2N),
   .ASYNC_RESET( ASYNC_RESET ),
   .SYNCHRONIZE_RESET( 0 ),
   .enable_ecc(enable_ecc)
) read_host (
   .clk(clk),
   .resetn(resetn_synchronized),
   .o_active(prefetch_active),

   .control_fixed_location( 1'b0 ),
   .control_read_base( {reg_i_address[AWIDTH-1:CACHE_ADDRBITS],{CACHE_ADDRBITS{1'b0}}} ),
   .control_read_length( CACHESIZE ),
   .control_go( prefetch_new_block ),
   .cache_line_to_write_to( in_cache ),
   .control_done(),
   .control_early_done(),

   .cache_line_to_read_from( in_cache_unreg ),
   .user_buffer_address( i_address[MBYTE_SELECT_BITS+FIFO_DEPTH_LOG2-1:MBYTE_SELECT_BITS] ),
   .user_buffer_data( cache_data ),
   .user_data_available( cache_available ),
   .read_reg_enable(~stall_out),

   .host_address( avm_address ),
   .host_read( avm_read ),
   .host_byteenable( avm_byteenable ),
   .host_readdata( avm_readdata ),
   .host_readdatavalid( avm_readdatavalid ),
   .host_burstcount( avm_burstcount ),
   .host_waitrequest( avm_waitrequest ),
   .ecc_err_status(ecc_err_status)
);

// Our RAM holds cache lines in chunks of MWIDTH (256 bits) so we need
// to extract the relevant bits with a mux for the user data
//
generate
if(MBYTE_SELECT_BITS != BYTE_SELECT_BITS)
begin
   assign extracted_cache_data = cache_data[reg_i_address[MBYTE_SELECT_BITS-1:BYTE_SELECT_BITS] * WIDTH +: WIDTH];
end
else
begin
   assign extracted_cache_data = cache_data;
end
endgenerate

assign o_readdata = output_reg;
assign o_valid = output_reg_valid;

assign o_active = reg_i_valid | prefetch_active;

endmodule

`default_nettype wire
