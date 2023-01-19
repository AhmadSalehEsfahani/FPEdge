//// (c) 1992-2022 Intel Corporation.                            
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
// Helper module to handle bursting large sequential blocks of memory to or
// from global memory.
//

`default_nettype none

/*****************************************************************************/
// Burst read host:
//   Keeps a local buffer populated with data from a sequential block of
//   global memory.  The block of global memory is specified by a base address
//   and size.
/*****************************************************************************/
module lsu_burst_read_host (
   clk,
   reset,
  o_active, //Debugging signal

   // control inputs and outputs
   control_fixed_location,
   control_read_base,
   control_read_length,
   control_go,
   control_done,
   control_early_done,

   // user logic inputs and outputs
   user_read_buffer,
   user_buffer_data,
   user_data_available,

   // host inputs and outputs
   host_address,
   host_read,
   host_byteenable,
   host_readdata,
   host_readdatavalid,
   host_burstcount,
   host_waitrequest,
   ecc_err_status
);
   /*************
   * Parameters *
   *************/
   parameter DATAWIDTH = 32;
   parameter MAXBURSTCOUNT = 4;
   parameter BURSTCOUNTWIDTH = 3;
   parameter BYTEENABLEWIDTH = 4;
   parameter ADDRESSWIDTH = 32;
   parameter FIFODEPTH = 32;
   parameter FIFODEPTH_LOG2 = 5;
   parameter FIFOUSEMEMORY = 1;  // set to 0 to use LEs instead
   parameter READTHRESHOLD = FIFODEPTH - MAXBURSTCOUNT - 4;
   parameter ASYNC_RESET=1;         // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
   parameter SYNCHRONIZE_RESET=0;   // set to '1' to pass the incoming reset signal through a synchronizer before use
   parameter enable_ecc = "FALSE";    // Enable error correction coding

   /********
   * Ports *
   ********/
   input wire clk;
   input wire reset;

   output wire o_active;

   // control inputs and outputs
   input wire control_fixed_location;
   input wire [ADDRESSWIDTH-1:0] control_read_base;
   input wire [ADDRESSWIDTH-1:0] control_read_length;
   input wire control_go;
   output wire control_done;
   output wire control_early_done;  // don't use this unless you know what you are doing, it's going to fire when the last read is posted, not when the last data returns!

   // user logic inputs and outputs
   input wire user_read_buffer;
   output wire [DATAWIDTH-1:0] user_buffer_data;
   output wire user_data_available;

   // host inputs and outputs
   input wire host_waitrequest;
   input wire host_readdatavalid;
   input wire [DATAWIDTH-1:0] host_readdata;
   output wire [ADDRESSWIDTH-1:0] host_address;
   output wire host_read;
   output wire [BYTEENABLEWIDTH-1:0] host_byteenable;
   output wire [BURSTCOUNTWIDTH-1:0] host_burstcount;
   output logic  [1:0] ecc_err_status; // ecc status signals

   /***************
   * Architecture *
   ***************/
   // internal control signals
   reg control_fixed_location_d1;
   wire fifo_empty;
   reg [ADDRESSWIDTH-1:0] address;
   reg [ADDRESSWIDTH-1:0] length;
   reg [FIFODEPTH_LOG2-1:0] reads_pending;
   wire increment_address;
   wire [BURSTCOUNTWIDTH-1:0] burst_count;
   wire [BURSTCOUNTWIDTH-1:0] first_short_burst_count;
   wire first_short_burst_enable;
   wire [BURSTCOUNTWIDTH-1:0] final_short_burst_count;
   wire final_short_burst_enable;
   wire [BURSTCOUNTWIDTH-1:0] burst_boundary_word_address;
   wire too_many_reads_pending;
   wire [FIFODEPTH_LOG2-1:0] fifo_used;

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 1;
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


   // registering the control_fixed_location bit
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         control_fixed_location_d1 <= '0;
      end
      else
      begin
         if (control_go == 1)
         begin
            control_fixed_location_d1 <= control_fixed_location;
         end
         if (~sclrn[0]) control_fixed_location_d1 <= '0;
      end
   end

   // host address logic
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         address <= '0;
      end
      else
      begin
         if(control_go == 1)
         begin
            address <= control_read_base;
         end
         else if((increment_address == 1) & (control_fixed_location_d1 == 0))
         begin
            address <= address + (burst_count * BYTEENABLEWIDTH);  // always performing word size accesses, increment by the burst count presented
         end
         if(~sclrn[0]) address <= '0;
      end
   end

   // host length logic
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         length <= '0;
      end
      else
      begin
         if(control_go == 1)
         begin
            length <= control_read_length;
         end
         else if(increment_address == 1)
         begin
            length <= length - (burst_count * BYTEENABLEWIDTH);  // always performing word size accesses, decrement by the burst count presented
         end
         if(~sclrn[0]) length <= '0;
      end
   end

   // controlled signals going to the host/control ports
   assign host_address = address;
   assign host_byteenable = -1;  // all ones, always performing word size accesses
   assign host_burstcount = burst_count;
   assign control_done = (length == 0) & (reads_pending == 0);  // need to make sure that the reads have returned before firing the done bit
   assign control_early_done = (length == 0);  // advanced feature, you should use 'control_done' if you need all the reads to return first
   assign host_read = (too_many_reads_pending == 0) & (length != 0);
   assign burst_boundary_word_address = ((address / BYTEENABLEWIDTH) & (MAXBURSTCOUNT - 1));
   assign first_short_burst_enable = (burst_boundary_word_address != 0);
   assign final_short_burst_enable = (length < (MAXBURSTCOUNT * BYTEENABLEWIDTH));

   assign first_short_burst_count = ((burst_boundary_word_address & 1'b1) == 1'b1)? 1 :  // if the burst boundary isn't a multiple of 2 then must post a burst of 1 to get to a multiple of 2 for the next burst
                             (((MAXBURSTCOUNT - burst_boundary_word_address) < (length / BYTEENABLEWIDTH))?
                             (MAXBURSTCOUNT - burst_boundary_word_address) : (length / BYTEENABLEWIDTH));
   assign final_short_burst_count = (length / BYTEENABLEWIDTH);

   assign burst_count = (first_short_burst_enable == 1)? first_short_burst_count :  // this will get the transfer back on a burst boundary,
                   (final_short_burst_enable == 1)? final_short_burst_count : MAXBURSTCOUNT;
   assign increment_address = (too_many_reads_pending == 0) & (host_waitrequest == 0) & (length != 0);
   assign too_many_reads_pending = (reads_pending + fifo_used) >= READTHRESHOLD;  // make sure there are fewer reads posted than room in the FIFO

   // tracking FIFO
   always @ (posedge clk or negedge aclrn)
   begin
      if (~aclrn)
      begin
         reads_pending <= 0;
      end
      else
      begin
         if(increment_address == 1)
         begin
            if(host_readdatavalid == 0)
            begin
               reads_pending <= reads_pending + burst_count;
            end
            else
            begin
               reads_pending <= reads_pending + burst_count - 1;  // a burst read was posted, but a word returned
            end
         end
         else
         begin
            if(host_readdatavalid == 0)
            begin
               reads_pending <= reads_pending;  // burst read was not posted and no read returned
            end
            else
            begin
               reads_pending <= reads_pending - 1;  // burst read was not posted but a word returned
            end
         end
         if(~sclrn[0]) reads_pending <= '0;
      end
   end

  assign o_active = |reads_pending;

	// read data feeding user logic
	assign user_data_available = !fifo_empty;
	acl_scfifo_wrapped the_host_to_user_fifo (
		.aclr (~aclrn),
		.clock (clk),
		.data (host_readdata),
		.empty (fifo_empty),
		.q (user_buffer_data),
		.rdreq (user_read_buffer),
		.usedw (fifo_used),
		.wrreq (host_readdatavalid),
    .almost_empty(),
    .almost_full(),
    .full(),
    .sclr(~sclrn[0]),
    .ecc_err_status(ecc_err_status)
	);
	defparam the_host_to_user_fifo.lpm_width = DATAWIDTH;
	defparam the_host_to_user_fifo.lpm_widthu = FIFODEPTH_LOG2;
	defparam the_host_to_user_fifo.lpm_numwords = FIFODEPTH;
	defparam the_host_to_user_fifo.lpm_showahead = "ON";
	defparam the_host_to_user_fifo.use_eab = (FIFOUSEMEMORY == 1)? "ON" : "OFF";
	defparam the_host_to_user_fifo.add_ram_output_register = "OFF";
	defparam the_host_to_user_fifo.underflow_checking = "OFF";
	defparam the_host_to_user_fifo.overflow_checking = "OFF";
	defparam the_host_to_user_fifo.enable_ecc = enable_ecc;

  initial
    if ( READTHRESHOLD > FIFODEPTH ||
         READTHRESHOLD > FIFODEPTH - 4 ||
         READTHRESHOLD < 1 )
     $error("Invalid FIFODEPTH and MAXBURSTCOUNT comination.  Produced READTHRESHOLD = %d\n",READTHRESHOLD);

endmodule

`default_nettype wire
