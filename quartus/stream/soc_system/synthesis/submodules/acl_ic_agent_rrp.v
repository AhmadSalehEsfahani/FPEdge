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


`default_nettype none

module acl_ic_agent_rrp #(
    parameter integer DATA_W = 32,              // > 0
    parameter integer BURSTCOUNT_W = 4,         // > 0
    parameter integer ADDRESS_W = 32,           // > 0
    parameter integer BYTEENA_W = DATA_W / 8,   // > 0
    parameter integer ID_W = 1,                 // > 0

    parameter integer NUM_HOSTS = 1,          // > 0

    parameter integer FIFO_DEPTH = 32,          // > 0 (don't care if AGENT_FIXED_LATENCY > 0)
    parameter integer USE_LL_FIFO = 1,          // 0|1

    parameter integer AGENT_FIXED_LATENCY = 0,  // 0=not fixed latency, >0=# fixed latency cycles
                                                // if >0 effectively FIFO_DEPTH=AGENT_FIXED_LATENCY+1
    parameter integer PIPELINE = 1,             // 0|1
    parameter ASYNC_RESET=1,                    // set to '1' to consume the incoming reset signal asynchronously (use ACLR port on registers), '0' to use synchronous reset (SCLR port on registers)
    parameter SYNCHRONIZE_RESET=0               // set to '1' to pass the incoming reset signal through a synchronizer before use

)
(
    input wire clock,
    input wire resetn,

    acl_arb_intf m_intf,

    input wire s_readdatavalid,
    input wire [DATA_W-1:0] s_readdata,

    acl_ic_rrp_intf rrp_intf,

    output logic stall
);
    typedef struct packed {
        logic valid;
        logic [DATA_W-1:0] data;
    } agent_raw_read;

    agent_raw_read agent_read_in;
    agent_raw_read agent_read;  // this is the agent interface to the rest of the module

   localparam                    NUM_RESET_COPIES = 1;
   localparam                    RESET_PIPE_DEPTH = 3;
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
      .clk                    (clock),
      .i_resetn               (resetn),
      .o_aclrn                (aclrn),
      .o_sclrn                (sclrn),
      .o_resetn_synchronized  (resetn_synchronized)
   );

    assign agent_read_in = {s_readdatavalid, s_readdata};

    generate
    if( PIPELINE )
    begin
        // Pipeline the return path from the agent.
        agent_raw_read agent_read_pipe;

        always @(posedge clock or negedge aclrn)
            if( ~aclrn )
            begin
                agent_read_pipe <= 'x;
                agent_read_pipe.valid <= 1'b0;
            end
            else begin
                if (m_intf.req.enable) begin
                    agent_read_pipe <= agent_read_in;
                end
                if (~sclrn[0]) agent_read_pipe.valid <= 1'b0;
            end

        assign agent_read = agent_read_pipe;
    end
    else
    begin
        assign agent_read = agent_read_in;
    end
    endgenerate

    generate
    if( NUM_HOSTS > 1 )
    begin
        localparam READ_FIFO_DEPTH = AGENT_FIXED_LATENCY > 0 ? AGENT_FIXED_LATENCY : FIFO_DEPTH;

        typedef struct packed {
            logic [ID_W-1:0] id;
            logic [BURSTCOUNT_W-1:0] burstcount;
        } raw_read_item;

        typedef struct packed {
            logic valid;
            logic [ID_W-1:0] id;
            logic [BURSTCOUNT_W-1:0] burstcount;
        } read_item;

        logic rf_full, rf_empty, rf_read, rf_write, next_read_item;
        raw_read_item m_raw_read_item, rf_raw_read_item;
        read_item rf_read_item, cur_read_item;

        if (READ_FIFO_DEPTH == 1)
        begin
          assign rf_raw_read_item = m_raw_read_item;
        end
        // FIFO of pending reads.
        // Two parts to this FIFO:
        //  1. An actual FIFO (either llfifo or scfifo).
        //  2. cur_read_item is the current pending read
        //
        // Together, there must be at least READ_FIFO_DEPTH
        // entries. Since cur_read_item counts as one,
        // the actual FIFOs are sized to READ_FIFO_DEPTH-1.
        else if( USE_LL_FIFO == 1 )
        begin
            acl_ll_fifo #(
                .WIDTH( $bits(raw_read_item) ),
                .DEPTH( READ_FIFO_DEPTH - 1 ),
                .ASYNC_RESET(ASYNC_RESET),
                .SYNCHRONIZE_RESET(0)
            )
            read_fifo(
                .clk( clock ),
                .reset( ~resetn_synchronized ),
                .data_in( m_raw_read_item ),
                .write( rf_write ),
                .data_out( rf_raw_read_item ),
                .read( rf_read ),
                .empty( rf_empty ),
                .full( rf_full )
            );
        end
        else
        begin
            scfifo #(
                .lpm_width( $bits(raw_read_item) ),
                .lpm_widthu( $clog2(READ_FIFO_DEPTH-1) ),
                .lpm_numwords( READ_FIFO_DEPTH-1 ),
                .add_ram_output_register( "ON" ),
                .intended_device_family( "stratixiv" )
            )
            read_fifo (
                .aclr( ~aclrn ),
                .clock( clock ),
                .empty( rf_empty ),
                .full( rf_full ),
                .data( m_raw_read_item ),
                .q( rf_raw_read_item ),
                .wrreq( rf_write ),
                .rdreq( rf_read ),
                .sclr( ~sclrn[0] ),
                .usedw(),
                .almost_full(),
                .almost_empty()
            );
        end

        assign m_raw_read_item.id = m_intf.req.id;
        assign m_raw_read_item.burstcount = m_intf.req.burstcount;

        assign rf_read_item.id = rf_raw_read_item.id;
        assign rf_read_item.burstcount = rf_raw_read_item.burstcount;

        // Place incoming read requests from the host into read FIFO.
        assign rf_write = ~m_intf.stall & m_intf.req.read & m_intf.req.enable;

        // Read next item from the FIFO.
        assign rf_read = ~rf_empty & (~rf_read_item.valid | next_read_item) & m_intf.req.enable;

        // Determine when cur_read_item can be updated, which is controlled by next_read_item.
        assign next_read_item = ~cur_read_item.valid | (agent_read.valid & (cur_read_item.burstcount == 1));

        // Stall upstream when read FIFO is full. If the agent is fixed latency, the read FIFO
        // is sized such that it can never stall.
        assign stall = AGENT_FIXED_LATENCY > 0 ? 1'b0 : rf_full;

        // cur_read_item
        always @( posedge clock or negedge aclrn )
        begin
            if( ~aclrn )
            begin
                cur_read_item <= 'x;    // only fields explicitly reset below need to be reset at all
                cur_read_item.valid <= 1'b0;
            end
            else
            begin
                if( next_read_item & m_intf.req.enable) begin
                    // Update current read from the read FIFO.
                    cur_read_item <= rf_read_item;
                end else if( agent_read.valid & m_intf.req.enable) begin
                    // Handle incoming data from the agent.
                    cur_read_item.burstcount <= cur_read_item.burstcount - 1;
                end
                if (~sclrn[0]) cur_read_item.valid <= 1'b0;
            end
        end

        // rrp_intf
        assign rrp_intf.datavalid = agent_read.valid;
        assign rrp_intf.data = agent_read.data;
        assign rrp_intf.id = cur_read_item.id;

        if (READ_FIFO_DEPTH == 1) begin
          assign rf_read_item.valid = rf_write;
        end
        // Handle the rf_read_item.valid signal. Different behavior between
        // sc_fifo and acl_ll_fifo.
        else if( USE_LL_FIFO == 1 )
        begin
            // The data is already at the output of the acl_ll_fifo, so the
            // data is valid as long as the FIFO is not empty.
            assign rf_read_item.valid = ~rf_empty;
        end
        else
        begin
            // The data is valid on the next cycle (due to output register on
            // scfifo RAM block).
            always @( posedge clock or negedge aclrn )
            begin
                if( ~aclrn ) begin
                    rf_read_item.valid <= 1'b0;
                end else begin
                    if( rf_read & m_intf.req.enable)
                        rf_read_item.valid <= 1'b1;
                    else if( next_read_item & ~rf_read & & m_intf.req.enable)
                        rf_read_item.valid <= 1'b0;
                    if (~sclrn[0]) rf_read_item.valid <= 1'b0;
                end
            end
        end
    end
    else // NUM_HOSTS == 1
    begin
        // Only one host so don't need to check the id.
        assign rrp_intf.datavalid = agent_read.valid;
        assign rrp_intf.data = agent_read.data;

        assign stall = 1'b0;
    end
    endgenerate

endmodule

`default_nettype wire