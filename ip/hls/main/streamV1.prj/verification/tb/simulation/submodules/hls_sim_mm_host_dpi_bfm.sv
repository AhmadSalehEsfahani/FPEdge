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


//BFM hierachy
`define MSTR_BFM bfm

module hls_sim_mm_host_dpi_bfm(
                                  // clock, reset
                                  clock,
                                  reset_n,

                                  // DPI control
                                  do_bind,
                                  enable,
                                  done_writes,
                                  done_reads,
                                  component_started,
                                  component_done,

                                  // CRA Agent (if it exists)
                                  done_writes_to_cra,
                                  agent_memory_writes_done,
                                  agent_busy_out,

                                  // Avalon MM-host
                                  avm_waitrequest,
                                  avm_write,
                                  avm_read,
                                  avm_address,
                                  avm_byteenable,
                                  avm_burstcount,
                                  avm_writedata,
                                  avm_readdata,
                                  avm_readdatavalid,

                                  );

   //importing verbosity and avalon_mm packages
   import verbosity_pkg::*;
   import avalon_mm_pkg::*;

   parameter COMPONENT_NAME                       = "dut";
   parameter COMPONENT_HAS_AGENT_RETURN           = 0;
   parameter COMPONENT_AGENT_WRITE_INTERFACE_NAME = "__ihc_hls_avs_write_stream__";
   parameter COMPONENT_AGENT_READ_INTERFACE_NAME  = "return";
   parameter COMPONENT_CRA_AGENT                  = 1; // 0 - agent memory with base address 0 (only data in the write stream , so calculate the address in this IP)
                                                       // 1 - this is the CRA agent and the write stream contains additional information (address, byte-enable, etc.)
   parameter NUM_AGENT_MEMORIES                   = 0; // If this is the CRA agent, we need to know how many agent memories to wait for

   parameter AV_ADDRESS_W               = 16; // Address width
   parameter AV_SYMBOL_W                = 8;  // Symbol width (default is byte)
   parameter AV_NUMSYMBOLS              = 4;  // Number of symbols per word
   parameter AV_BURSTCOUNT_W            = 3;  // Burst port width

   parameter USE_READ                   = 1;  // Use read interface pin
   parameter USE_WRITE                  = 1;  // Use write interface pin
   parameter USE_ADDRESS                = 1;  // Use address interface pinsp
   parameter USE_BYTE_ENABLE            = 1;  // Use byte_enable interface pins
   parameter USE_BURSTCOUNT             = 1;  // Use burstcount interface pin
   parameter USE_READ_DATA              = 1;  // Use readdata interface pin
   parameter USE_READ_DATA_VALID        = 1;  // Use readdatavalid interface pin
   parameter USE_WRITE_DATA             = 1;  // Use writedata interface pin
   parameter USE_BEGIN_TRANSFER         = 0;  // Use begintransfer interface pin
   parameter USE_BEGIN_BURST_TRANSFER   = 0;  // Use beginbursttransfer interface pin
   parameter USE_WAIT_REQUEST           = 1;  // Use waitrequest interface pin

   parameter AV_FIX_READ_LATENCY        = 0;  // Fixed read latency (cycles)

   parameter AV_BURST_LINEWRAP          = 0;  // Line wrap bursts (y/n)
   parameter AV_BURST_BNDR_ONLY         = 0;  // Assert Addr alignment

   parameter AV_READ_WAIT_TIME          = 0;  // Fixed wait time cycles when
   parameter AV_WRITE_WAIT_TIME         = 0;  // USE_WAIT_REQUEST is 0
   parameter REGISTER_WAITREQUEST       = 0;  //
   parameter AV_REGISTERINCOMINGSIGNALS = 0; // Indicate that waitrequest is come from register

   localparam AV_DATA_W = (AV_SYMBOL_W * AV_NUMSYMBOLS);

   // The agent write stream consists of a series of write commands packed as {lastwrite, byteenable, data, address}
   // Where last write indicates that it is now safe to start the component from the component's DPI controller
   localparam AGENT_WRITE_STREAM_ADDRESS_WIDTH    = 64;
   localparam AGENT_WRITE_STREAM_DATA_WIDTH       = AV_SYMBOL_W*AV_NUMSYMBOLS;
   localparam AGENT_WRITE_STREAM_BYTEENABLE_WIDTH =  AV_NUMSYMBOLS; // AV_SYMBOL_W is always 8
   localparam AGENT_WRITE_STREAM_WIDTH = (COMPONENT_CRA_AGENT == 1) ? AGENT_WRITE_STREAM_ADDRESS_WIDTH + AGENT_WRITE_STREAM_DATA_WIDTH + AGENT_WRITE_STREAM_BYTEENABLE_WIDTH :
                                                                      AGENT_WRITE_STREAM_DATA_WIDTH;

   import "DPI-C" context function void __ihc_hls_dbgs(string msg);
   import "DPI-C" context function int __ihc_hls_get_agent_return_info(string component_name, string interface_name, inout bit [AGENT_WRITE_STREAM_ADDRESS_WIDTH-1:0] done_address, inout bit [AGENT_WRITE_STREAM_ADDRESS_WIDTH-1:0] data_address);

   function int lindex;
      // returns the left index for a vector having a declared width
      // when width is 0, then the left index is set to 0 rather than -1
      input [31:0] width;
      lindex = (width > 0) ? (width-1) : 0;
   endfunction

   input                                            clock;
   input                                            reset_n;
   input                                            do_bind;
   input                                            enable;
   output reg                                       done_writes;
   output                                           done_reads;
   input                                            component_started;
   input                                            component_done;

   output                                           done_writes_to_cra;
   input  [lindex(NUM_AGENT_MEMORIES):0]            agent_memory_writes_done;
   output                                           agent_busy_out;


   output                                           avm_waitrequest;
   output                                           avm_readdatavalid;
   output [lindex(AV_SYMBOL_W * AV_NUMSYMBOLS):0]   avm_readdata;
   input                                            avm_write;
   input                                            avm_read;
   input  [lindex(AV_ADDRESS_W):0]                  avm_address;
   input  [lindex(AV_NUMSYMBOLS):0]                 avm_byteenable;
   input  [lindex(AV_BURSTCOUNT_W):0]               avm_burstcount;
   input  [lindex(AV_SYMBOL_W * AV_NUMSYMBOLS):0]   avm_writedata;


  altera_avalon_mm_master_bfm #(
  	.AV_ADDRESS_W               (AV_ADDRESS_W      ),
  	.AV_SYMBOL_W                (AV_SYMBOL_W       ),
  	.AV_NUMSYMBOLS              (AV_NUMSYMBOLS     ),
  	.AV_BURSTCOUNT_W            (AV_BURSTCOUNT_W   ),
  	.USE_READ                   (USE_READ                ),
  	.USE_WRITE                  (USE_WRITE               ),
  	.USE_ADDRESS                (USE_ADDRESS             ),
  	.USE_BYTE_ENABLE            (USE_BYTE_ENABLE         ),
  	.USE_BURSTCOUNT             (USE_BURSTCOUNT          ),
  	.USE_READ_DATA              (USE_READ_DATA           ),
  	.USE_READ_DATA_VALID        (USE_READ_DATA_VALID     ),
  	.USE_WRITE_DATA             (USE_WRITE_DATA          ),
  	.USE_BEGIN_TRANSFER         (USE_BEGIN_TRANSFER      ),
  	.USE_BEGIN_BURST_TRANSFER   (USE_BEGIN_BURST_TRANSFER),
  	.USE_WAIT_REQUEST           (USE_WAIT_REQUEST        ),
  	.USE_TRANSACTIONID          (0),
  	.USE_WRITERESPONSE          (0),
  	.USE_READRESPONSE           (0),
  	.USE_CLKEN                  (0),
  	.AV_CONSTANT_BURST_BEHAVIOR (1),
  	.AV_BURST_LINEWRAP          (0),
  	.AV_BURST_BNDR_ONLY         (0),
  	.AV_MAX_PENDING_READS       (0),
  	.AV_MAX_PENDING_WRITES      (0),
  	.AV_FIX_READ_LATENCY        (AV_FIX_READ_LATENCY),
  	.AV_READ_WAIT_TIME          (AV_READ_WAIT_TIME         ),
  	.AV_WRITE_WAIT_TIME         (AV_WRITE_WAIT_TIME        ),
  	.REGISTER_WAITREQUEST       (REGISTER_WAITREQUEST      ),
  	.AV_REGISTERINCOMINGSIGNALS (AV_REGISTERINCOMINGSIGNALS),
  	.VHDL_ID                    (0)
  ) bfm (
  	.clk                    (clock),                     //       clk.clk
  	.reset                  (~reset_n),                  // clk_reset.reset
  	.avm_address            (avm_address),       //        m0.address
  	.avm_burstcount         (avm_burstcount),    //          .burstcount
  	.avm_readdata           (avm_readdata),      //          .readdata
  	.avm_writedata          (avm_writedata),     //          .writedata
  	.avm_waitrequest        (avm_waitrequest),   //          .waitrequest
  	.avm_write              (avm_write),         //          .write
  	.avm_read               (avm_read),          //          .read
  	.avm_byteenable         (avm_byteenable),    //          .byteenable
  	.avm_readdatavalid      (avm_readdatavalid), //          .readdatavalid
  	.avm_begintransfer      (),                          // (terminated)
  	.avm_beginbursttransfer (),                          // (terminated)
  	.avm_arbiterlock        (),                          // (terminated)
  	.avm_lock               (),                          // (terminated)
  	.avm_debugaccess        (),                          // (terminated)
  	.avm_transactionid      (),                          // (terminated)
  	.avm_readid             (8'b00000000),               // (terminated)
  	.avm_writeid            (8'b00000000),               // (terminated)
  	.avm_clken              (),                          // (terminated)
  	.avm_response           (2'b00),                     // (terminated)
  	.avm_writeresponsevalid (1'b0),                      // (terminated)
  	.avm_readresponse       (8'b00000000),               // (terminated)
  	.avm_writeresponse      (8'b00000000)                // (terminated)
  );

  ////////////////////////////////////////////////////////////////////////////////////////////
  // Control the MM Host BFM
  ////////////////////////////////////////////////////////////////////////////////////////////

  //initialize the Host BFM
  initial
  begin
    `MSTR_BFM.init();
  end

  function automatic write_to_agent(input bit [63:0] addr, input bit [63:0] data, input bit [7:0] byteenable);
    `MSTR_BFM.set_command_address(addr);
    `MSTR_BFM.set_command_data(data, 0);
    `MSTR_BFM.set_command_byte_enable(byteenable, 0);
    `MSTR_BFM.set_command_burst_count(1);
    `MSTR_BFM.set_command_burst_size(1);
    `MSTR_BFM.set_command_request(REQ_WRITE);
    `MSTR_BFM.push_command();
  endfunction

  task read_from_agent(input bit [63:0] addr);
    `MSTR_BFM.set_command_address(addr);
    `MSTR_BFM.set_command_burst_count(1);
    `MSTR_BFM.set_command_burst_size(1);
    `MSTR_BFM.set_command_request(REQ_READ);
    `MSTR_BFM.push_command();
  endtask

  ////////////////////////////////////////////////////////////////////////////////////////////
  // Handle Writes
  ////////////////////////////////////////////////////////////////////////////////////////////

  logic            [AGENT_WRITE_STREAM_WIDTH - 1 : 0] input_stream_data;
  logic    [AGENT_WRITE_STREAM_ADDRESS_WIDTH - 1 : 0] wr_addr;
  logic       [AGENT_WRITE_STREAM_DATA_WIDTH - 1 : 0] wr_data;
  logic [AGENT_WRITE_STREAM_BYTEENABLE_WIDTH - 1 : 0] wr_byteenable;
  logic                                               wr_last;

  logic wr_valid;
  logic ready_for_write;
  logic [lindex(NUM_AGENT_MEMORIES):0] agent_memory_writes_done_r;

  hls_sim_stream_source_dpi_bfm
  #(  .STREAM_DATAWIDTH   (AGENT_WRITE_STREAM_WIDTH),
      .COMPONENT_NAME     (COMPONENT_NAME),
      .INTERFACE_NAME     (COMPONENT_AGENT_WRITE_INTERFACE_NAME))
  agent_input_stream
  (
      .source_data    (input_stream_data),
      .source_ready   (ready_for_write),
      .source_valid   (wr_valid),

      .do_bind        (do_bind),
      .enable         (enable),

      .clock          (clock),
      .resetn         (reset_n),
      .clock2x        (1'b0)

  );

  generate
    if (COMPONENT_CRA_AGENT == 1) begin
      assign wr_addr       = input_stream_data[AGENT_WRITE_STREAM_ADDRESS_WIDTH - 1 : 0];
      assign wr_data       = input_stream_data[AGENT_WRITE_STREAM_ADDRESS_WIDTH + AGENT_WRITE_STREAM_DATA_WIDTH - 1 : AGENT_WRITE_STREAM_ADDRESS_WIDTH];
      assign wr_byteenable = input_stream_data[AGENT_WRITE_STREAM_ADDRESS_WIDTH + AGENT_WRITE_STREAM_DATA_WIDTH + AGENT_WRITE_STREAM_BYTEENABLE_WIDTH - 1 : AGENT_WRITE_STREAM_ADDRESS_WIDTH + AGENT_WRITE_STREAM_DATA_WIDTH];
    end else begin

      logic [AGENT_WRITE_STREAM_ADDRESS_WIDTH-1:0] addr_r;
      logic addr_inc;

      always @(posedge clock or negedge reset_n) begin
        if (~reset_n | wr_last) begin
          addr_r <= {AGENT_WRITE_STREAM_ADDRESS_WIDTH{1'b0}};
        end else begin
          addr_r <= addr_r + {{(AGENT_WRITE_STREAM_ADDRESS_WIDTH-AV_NUMSYMBOLS-1){1'b0}}, addr_inc, {$clog2(AV_NUMSYMBOLS){1'b0}}};
        end
      end

      assign addr_inc = ready_for_write & wr_valid;

      assign wr_addr       = addr_r;
      assign wr_data       = input_stream_data;
      assign wr_byteenable = {AV_NUMSYMBOLS{1'b1}};
    end
  endgenerate

  // track last write so we know when to start the component
  logic wr_valid_r;
  logic wr_last_sanitized;
  always @(posedge clock or negedge reset_n) begin
    if (!reset_n) begin
      wr_valid_r <= 1'b0;
    end else begin
      wr_valid_r <= wr_valid;
    end
  end
  assign wr_last = (COMPONENT_CRA_AGENT == 1) ? (wr_valid & (input_stream_data === {AGENT_WRITE_STREAM_WIDTH{1'b0}}) ) : // for the CRA agent, the last write is encoded as all 0's
                                                (wr_valid_r & ~wr_valid); // the stream is prepopulated, so we are done when there is no more data
  assign wr_last_sanitized = (wr_last === 1'bx) ? 1'b0 : wr_last; //sanitize wr_last because it is used for syncronization in the component DPI controller


  // Send write commands to the BFM on negative clock edges to avoid race conditions due to blocking assignments in the BFM
  always @(negedge clock) begin
    if (enable & wr_valid & ready_for_write & !wr_last) begin
      write_to_agent(wr_addr, wr_data, wr_byteenable);
    end
  end

  // Flush out response for write command created by host bfm
  always @(`MSTR_BFM.signal_write_response_complete) begin
     `MSTR_BFM.pop_response();
  end

  // signal last write to the component DPI controller
  always @(posedge clock or negedge reset_n) begin
    if (!reset_n) begin
      done_writes <= 1'b0;
    end else begin
      if (do_bind) begin
        done_writes <= 1'b0;
      end else if ((COMPONENT_CRA_AGENT == 1) && component_started) begin
        done_writes <= wr_last_sanitized | (wr_valid === 1'b0);
      end else begin
        done_writes <= done_writes | wr_last_sanitized;
      end
    end
  end

  // used for agent memories to signal CRA if it exists
  logic done_writes_r;
  always @(posedge clock or negedge reset_n) begin
    if (!reset_n) begin
      done_writes_r <= 1'b0;
    end else begin
      if (do_bind) begin
        done_writes_r <= 1'b0;
      end else begin
        done_writes_r <= done_writes;
      end
    end
  end
  assign done_writes_to_cra = (done_writes & ~done_writes_r);


  // If this is the CRA agent, we need to wait for the non-CRA agent memories to finish their writes before we write it to prevent the start bit from being written too early
  // else just write as soon as the component and testbench are ready
  always @(posedge clock or negedge reset_n) begin
    if (!reset_n) begin
      agent_memory_writes_done_r <= 'b0;
    end else begin
      agent_memory_writes_done_r <= (wr_last === 1'b1) ? 'b0 : (agent_memory_writes_done | agent_memory_writes_done_r);
    end
  end

  typedef enum logic [1:0] {STATE_READY_FOR_WRITES, STATE_WRITES_DONE, STATE_WAIT_FOR_AGENTS_DONE} states_t;
  states_t agent_write_state;

  generate
    if (COMPONENT_CRA_AGENT == 1) begin
      // CSR
      always @(posedge clock or negedge reset_n) begin
        if (!reset_n) begin
          agent_write_state <= STATE_WAIT_FOR_AGENTS_DONE;
        end else begin
          case (agent_write_state)
            STATE_READY_FOR_WRITES:     begin
                                          if (wr_last === 1'b1) begin
                                            agent_write_state <= STATE_WRITES_DONE;
                                          end
                                        end
            STATE_WRITES_DONE:          begin
                                          if (!wr_valid ) begin
                                            agent_write_state <= STATE_WAIT_FOR_AGENTS_DONE;
                                          end else if (component_started) begin
                                            agent_write_state <= STATE_READY_FOR_WRITES;
                                          end
                                        end
            STATE_WAIT_FOR_AGENTS_DONE: begin
                                          if ((NUM_AGENT_MEMORIES == 0) | (&agent_memory_writes_done_r)) begin
                                            agent_write_state <= STATE_READY_FOR_WRITES;
                                          end
                                        end
            default: agent_write_state <= STATE_WAIT_FOR_AGENTS_DONE;
          endcase
        end
      end
    end else begin
      // memory
      always @(posedge clock or negedge reset_n) begin
        if (!reset_n) begin
          agent_write_state <= STATE_READY_FOR_WRITES;
        end else begin
          case (agent_write_state)
            STATE_READY_FOR_WRITES: if (wr_last === 1'b1)  agent_write_state <= STATE_WRITES_DONE;
            STATE_WRITES_DONE:      if (component_started) agent_write_state <= STATE_READY_FOR_WRITES;
          endcase
        end
      end
    end
  endgenerate

  logic [AGENT_WRITE_STREAM_DATA_WIDTH - 1 : 0] return_busy;
  task wait_for_not_busy;
    return_busy = 1;
    while (return_busy != 0) begin
      read_from_agent(64'b0);
      @(`MSTR_BFM.signal_all_transactions_complete);
      `MSTR_BFM.pop_response();
      return_busy = `MSTR_BFM.get_response_data(0);
    end
  endtask

  logic agent_busy;
  generate
    if (COMPONENT_CRA_AGENT == 1) begin
      initial begin
        agent_busy = 1;
        @(posedge reset_n);
        @(posedge clock);
        wait_for_not_busy();
        agent_busy = 0;
      end
    end else begin
      assign agent_busy = 1'b1;
    end
  endgenerate
  assign agent_busy_out = agent_busy;

  // for agent component, ready_for_write has to wait for agent_busy deasserts
  assign ready_for_write = ((!agent_busy) | !(COMPONENT_CRA_AGENT == 1)) & ((agent_write_state == STATE_READY_FOR_WRITES) | wr_last_sanitized); //always ready out last write from agent stream

  ////////////////////////////////////////////////////////////////////////////////////////////
  // Handle Reads
  ////////////////////////////////////////////////////////////////////////////////////////////
  generate
    integer num_registers;
    logic [AGENT_WRITE_STREAM_ADDRESS_WIDTH - 1 : 0] done_baseaddr;
    logic [AGENT_WRITE_STREAM_ADDRESS_WIDTH - 1 : 0] returndata_baseaddr;
    logic    [AGENT_WRITE_STREAM_DATA_WIDTH - 1 : 0] returndata;
    logic                                            return_ready;
    logic                                            return_valid;
    logic                                            write_return;

    logic done_reads_r;

    assign return_valid = (write_return === 1'b1);

    // the only time this IP does not use a read stream is when it is connected to the CRA interface
    //    and the function invocation type is not a agent
    if ((COMPONENT_CRA_AGENT == 0) || (COMPONENT_HAS_AGENT_RETURN == 1)) begin
      hls_sim_stream_sink_dpi_bfm
      #(  .STREAM_DATAWIDTH   (AGENT_WRITE_STREAM_DATA_WIDTH),
          .COMPONENT_NAME     (COMPONENT_NAME),
          .INTERFACE_NAME     (COMPONENT_AGENT_READ_INTERFACE_NAME))
      implicit_output_stream
      (
          .sink_data    (returndata),
          .sink_ready   (return_ready),
          .sink_valid   (return_valid),

          .do_bind        (do_bind),
          .enable         (enable),

          .clock          (clock),
          .resetn         (reset_n),
          .clock2x        (1'b0)
      );

      initial begin
        integer i;
        forever begin
          write_return <= 1'b0;
          @(posedge component_done);
          for(i = num_registers; i > 0; ) begin : GEN_RANDOM_BLOCK_NAME_R105
            if(`MSTR_BFM.get_read_response_queue_size() != 0 && return_ready) begin
              `MSTR_BFM.pop_response(); // this immediately pops the return value off of the BFM's queue and stores it for query
              @(posedge clock); // need a cycle to grab the correct data in the non-blocking assignment below without a race condition
              returndata <= `MSTR_BFM.get_response_data(0);
              write_return <= 1'b1;
              i--;
            end else begin
              @(posedge clock); // wait a cycle and try again
              write_return <= 1'b0;
            end
          end
          @(posedge clock); //wait for last write
          write_return <= 1'b0;
        end
      end


      task read_all_return_data (input bit [63:0] done_addr, input bit [63:0] data_addr);
        automatic integer i = 0;
        for (i = 0; i < num_registers; i++) begin : GEN_RANDOM_BLOCK_NAME_R106
          // Read agent memory through BFM
          read_from_agent(data_addr + (i << $clog2(AV_NUMSYMBOLS)));
          @(posedge clock);
        end

        // wait for all reads to complete
        @(`MSTR_BFM.signal_all_transactions_complete);

        // last read to clear done
        if ((COMPONENT_CRA_AGENT == 1) && (COMPONENT_HAS_AGENT_RETURN == 1)) begin
          read_from_agent(done_addr);
          @(`MSTR_BFM.signal_all_transactions_complete);
          `MSTR_BFM.pop_response();
          returndata = `MSTR_BFM.get_response_data(0);
          @(posedge clock);
          assert(returndata == 64'd3);
        end

      endtask

      initial begin
        done_reads_r <= 1'b0;
        forever begin
          @(posedge do_bind);

          // get the return value information
          num_registers = __ihc_hls_get_agent_return_info(COMPONENT_NAME, COMPONENT_AGENT_READ_INTERFACE_NAME, done_baseaddr, returndata_baseaddr);

          // wait for done interrupt and then read data out to the return stream
          @(posedge component_done);
          read_all_return_data(done_baseaddr, returndata_baseaddr);
          @(posedge clock);
          done_reads_r <= 1'b1;
          @(posedge clock);
          done_reads_r <= 1'b0;
        end
      end

      assign done_reads = done_reads_r;
    end else begin
      assign done_reads = component_done;
    end

  endgenerate

endmodule

// vim:set filetype=verilog:
