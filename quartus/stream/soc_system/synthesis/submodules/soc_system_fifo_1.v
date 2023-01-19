//Legal Notice: (C)2023 Altera Corporation. All rights reserved.  Your
//use of Altera Corporation's design tools, logic functions and other
//software and tools, and its AMPP partner logic functions, and any
//output files any of the foregoing (including device programming or
//simulation files), and any associated documentation or information are
//expressly subject to the terms and conditions of the Altera Program
//License Subscription Agreement or other applicable license agreement,
//including, without limitation, that your use is for the sole purpose
//of programming logic devices manufactured by Altera and sold by Altera
//or its authorized distributors.  Please refer to the applicable
//agreement for further details.

// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_1_single_clock_fifo (
                                             // inputs:
                                              aclr,
                                              clock,
                                              data,
                                              rdreq,
                                              wrreq,

                                             // outputs:
                                              empty,
                                              full,
                                              q,
                                              usedw
                                           )
;

  output           empty;
  output           full;
  output  [ 31: 0] q;
  output  [  4: 0] usedw;
  input            aclr;
  input            clock;
  input   [ 31: 0] data;
  input            rdreq;
  input            wrreq;


wire             empty;
wire             full;
wire    [ 31: 0] q;
wire    [  4: 0] usedw;
  scfifo single_clock_fifo
    (
      .aclr (aclr),
      .clock (clock),
      .data (data),
      .empty (empty),
      .full (full),
      .q (q),
      .rdreq (rdreq),
      .usedw (usedw),
      .wrreq (wrreq)
    );

  defparam single_clock_fifo.add_ram_output_register = "OFF",
           single_clock_fifo.intended_device_family = "CYCLONEV",
           single_clock_fifo.lpm_numwords = 32,
           single_clock_fifo.lpm_showahead = "OFF",
           single_clock_fifo.lpm_type = "scfifo",
           single_clock_fifo.lpm_width = 32,
           single_clock_fifo.lpm_widthu = 5,
           single_clock_fifo.overflow_checking = "ON",
           single_clock_fifo.underflow_checking = "ON",
           single_clock_fifo.use_eab = "ON";


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_1_scfifo_with_controls (
                                                // inputs:
                                                 clock,
                                                 data,
                                                 rdreq,
                                                 reset_n,
                                                 wrreq,

                                                // outputs:
                                                 empty,
                                                 full,
                                                 level,
                                                 q
                                              )
;

  output           empty;
  output           full;
  output  [  5: 0] level;
  output  [ 31: 0] q;
  input            clock;
  input   [ 31: 0] data;
  input            rdreq;
  input            reset_n;
  input            wrreq;


wire             empty;
wire             full;
wire    [  5: 0] level;
wire    [ 31: 0] q;
wire    [  4: 0] usedw;
wire             wrreq_valid;
  //the_scfifo, which is an e_instance
  soc_system_fifo_1_single_clock_fifo the_scfifo
    (
      .aclr  (~reset_n),
      .clock (clock),
      .data  (data),
      .empty (empty),
      .full  (full),
      .q     (q),
      .rdreq (rdreq),
      .usedw (usedw),
      .wrreq (wrreq_valid)
    );

  assign level = {full,
    usedw};

  assign wrreq_valid = wrreq & ~full;

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_1_map_avalonst_to_avalonmm (
                                                    // inputs:
                                                     avalonst_data,

                                                    // outputs:
                                                     avalonmm_data
                                                  )
;

  output  [ 31: 0] avalonmm_data;
  input   [ 31: 0] avalonst_data;


wire    [ 31: 0] avalonmm_data;
  assign avalonmm_data[31 : 0] = avalonst_data[31 : 0];

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_1_single_clock_fifo_for_other_info (
                                                            // inputs:
                                                             aclr,
                                                             clock,
                                                             data,
                                                             rdreq,
                                                             wrreq,

                                                            // outputs:
                                                             q
                                                          )
;

  output  [ 15: 0] q;
  input            aclr;
  input            clock;
  input   [ 15: 0] data;
  input            rdreq;
  input            wrreq;


wire    [ 15: 0] q;
  scfifo single_clock_fifo
    (
      .aclr (aclr),
      .clock (clock),
      .data (data),
      .q (q),
      .rdreq (rdreq),
      .wrreq (wrreq)
    );

  defparam single_clock_fifo.add_ram_output_register = "OFF",
           single_clock_fifo.intended_device_family = "CYCLONEV",
           single_clock_fifo.lpm_numwords = 32,
           single_clock_fifo.lpm_showahead = "OFF",
           single_clock_fifo.lpm_type = "scfifo",
           single_clock_fifo.lpm_width = 16,
           single_clock_fifo.lpm_widthu = 5,
           single_clock_fifo.overflow_checking = "ON",
           single_clock_fifo.underflow_checking = "ON",
           single_clock_fifo.use_eab = "ON";


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_1_map_avalonst_to_avalonmm_other_info (
                                                               // inputs:
                                                                avalonst_other_info,

                                                               // outputs:
                                                                avalonmm_other_info
                                                             )
;

  output  [ 31: 0] avalonmm_other_info;
  input   [ 15: 0] avalonst_other_info;


wire    [  7: 0] avalonmm_channel;
wire    [  5: 0] avalonmm_empty;
wire             avalonmm_eop;
wire    [  7: 0] avalonmm_error;
wire    [ 31: 0] avalonmm_other_info;
wire             avalonmm_sop;
  assign avalonmm_sop = 1'b0;
  assign avalonmm_eop = 1'b0;
  assign avalonmm_empty = 6'b0;
  assign avalonmm_channel = avalonst_other_info[7 : 0];
  assign avalonmm_error = avalonst_other_info[15 : 8];
  assign avalonmm_other_info = {8'b0,
    avalonmm_error,
    avalonmm_channel,
    avalonmm_empty,
    avalonmm_eop,
    avalonmm_sop};


endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_1 (
                           // inputs:
                            avalonmm_read_slave_address,
                            avalonmm_read_slave_read,
                            avalonst_sink_channel,
                            avalonst_sink_data,
                            avalonst_sink_error,
                            avalonst_sink_valid,
                            reset_n,
                            wrclock,

                           // outputs:
                            avalonmm_read_slave_readdata,
                            avalonmm_read_slave_waitrequest,
                            avalonst_sink_ready
                         )
;

  output  [ 31: 0] avalonmm_read_slave_readdata;
  output           avalonmm_read_slave_waitrequest;
  output           avalonst_sink_ready;
  input            avalonmm_read_slave_address;
  input            avalonmm_read_slave_read;
  input   [  7: 0] avalonst_sink_channel;
  input   [ 31: 0] avalonst_sink_data;
  input   [  7: 0] avalonst_sink_error;
  input            avalonst_sink_valid;
  input            reset_n;
  input            wrclock;


wire    [ 31: 0] avalonmm_map_data_out;
wire    [ 31: 0] avalonmm_other_info_map_out;
reg              avalonmm_read_slave_address_delayed;
reg              avalonmm_read_slave_read_delayed;
wire    [ 31: 0] avalonmm_read_slave_readdata;
wire             avalonmm_read_slave_waitrequest;
wire    [ 31: 0] avalonst_map_data_in;
wire    [ 15: 0] avalonst_other_info_map_in;
wire             avalonst_sink_ready;
wire             clock;
wire    [ 31: 0] data;
wire             deassert_waitrequest;
wire             empty;
wire             full;
wire    [  5: 0] level;
wire             no_stop_write;
reg              no_stop_write_d1;
wire    [ 31: 0] q;
wire             rdreq;
wire             rdreq_driver;
wire             ready_1;
wire             ready_selector;
wire             wrreq;
  //the_scfifo_with_controls, which is an e_instance
  soc_system_fifo_1_scfifo_with_controls the_scfifo_with_controls
    (
      .clock   (clock),
      .data    (data),
      .empty   (empty),
      .full    (full),
      .level   (level),
      .q       (q),
      .rdreq   (rdreq),
      .reset_n (reset_n),
      .wrreq   (wrreq)
    );

  //out, which is an e_avalon_slave
  assign deassert_waitrequest = avalonmm_read_slave_address & avalonmm_read_slave_read;
  assign avalonmm_read_slave_waitrequest = !deassert_waitrequest & empty;
  //the_map_avalonst_to_avalonmm, which is an e_instance
  soc_system_fifo_1_map_avalonst_to_avalonmm the_map_avalonst_to_avalonmm
    (
      .avalonmm_data (avalonmm_map_data_out),
      .avalonst_data (avalonst_map_data_in)
    );

  assign clock = wrclock;
  assign rdreq_driver = (avalonmm_read_slave_address == 0) & avalonmm_read_slave_read;
  assign avalonst_map_data_in = q;
  assign rdreq = rdreq_driver;
  assign data = avalonst_sink_data;
  assign wrreq = avalonst_sink_valid & no_stop_write_d1;
  assign no_stop_write = ready_selector & ready_1;
  assign ready_1 = !full;
  assign ready_selector = level < 31;
  always @(posedge clock or negedge reset_n)
    begin
      if (reset_n == 0)
          no_stop_write_d1 <= 0;
      else 
        no_stop_write_d1 <= no_stop_write;
    end


  assign avalonst_sink_ready = (reset_n == 0) ? 1'b0 : (no_stop_write & no_stop_write_d1);
  //the_scfifo_other_info, which is an e_instance
  soc_system_fifo_1_single_clock_fifo_for_other_info the_scfifo_other_info
    (
      .aclr  (~reset_n),
      .clock (clock),
      .data  ({avalonst_sink_error,
avalonst_sink_channel}),
      .q     (avalonst_other_info_map_in),
      .rdreq ((avalonmm_read_slave_address == 0) & avalonmm_read_slave_read),
      .wrreq (avalonst_sink_valid & no_stop_write_d1)
    );

  //the_map_avalonst_to_avalonmm_other_info, which is an e_instance
  soc_system_fifo_1_map_avalonst_to_avalonmm_other_info the_map_avalonst_to_avalonmm_other_info
    (
      .avalonmm_other_info (avalonmm_other_info_map_out),
      .avalonst_other_info (avalonst_other_info_map_in)
    );

  always @(posedge clock or negedge reset_n)
    begin
      if (reset_n == 0)
          avalonmm_read_slave_address_delayed <= 0;
      else 
        avalonmm_read_slave_address_delayed <= avalonmm_read_slave_address;
    end


  always @(posedge clock or negedge reset_n)
    begin
      if (reset_n == 0)
          avalonmm_read_slave_read_delayed <= 0;
      else 
        avalonmm_read_slave_read_delayed <= avalonmm_read_slave_read;
    end


  assign avalonmm_read_slave_readdata = ({32 {((avalonmm_read_slave_address_delayed == 1) & avalonmm_read_slave_read_delayed)}} & avalonmm_other_info_map_out) |
    ({32 {((avalonmm_read_slave_address_delayed == 0) & avalonmm_read_slave_read_delayed)}} & avalonmm_map_data_out);

  //in, which is an e_atlantic_slave

endmodule

