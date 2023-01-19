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

module soc_system_fifo_0_single_clock_fifo (
                                             // inputs:
                                              aclr,
                                              clock,
                                              data,
                                              rdreq,
                                              wrreq,

                                             // outputs:
                                              empty,
                                              full,
                                              q
                                           )
;

  output           empty;
  output           full;
  output  [ 31: 0] q;
  input            aclr;
  input            clock;
  input   [ 31: 0] data;
  input            rdreq;
  input            wrreq;


wire             empty;
wire             full;
wire    [ 31: 0] q;
  scfifo single_clock_fifo
    (
      .aclr (aclr),
      .clock (clock),
      .data (data),
      .empty (empty),
      .full (full),
      .q (q),
      .rdreq (rdreq),
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

module soc_system_fifo_0_scfifo_with_controls (
                                                // inputs:
                                                 clock,
                                                 data,
                                                 rdreq,
                                                 reset_n,
                                                 wrreq,

                                                // outputs:
                                                 empty,
                                                 full,
                                                 q
                                              )
;

  output           empty;
  output           full;
  output  [ 31: 0] q;
  input            clock;
  input   [ 31: 0] data;
  input            rdreq;
  input            reset_n;
  input            wrreq;


wire             empty;
wire             full;
wire    [ 31: 0] q;
wire             wrreq_valid;
  //the_scfifo, which is an e_instance
  soc_system_fifo_0_single_clock_fifo the_scfifo
    (
      .aclr  (~reset_n),
      .clock (clock),
      .data  (data),
      .empty (empty),
      .full  (full),
      .q     (q),
      .rdreq (rdreq),
      .wrreq (wrreq_valid)
    );

  assign wrreq_valid = wrreq & ~full;

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_0_map_avalonmm_to_avalonst (
                                                    // inputs:
                                                     avalonmm_data,

                                                    // outputs:
                                                     avalonst_data
                                                  )
;

  output  [ 31: 0] avalonst_data;
  input   [ 31: 0] avalonmm_data;


wire    [ 31: 0] avalonst_data;
  assign avalonst_data[31 : 0] = avalonmm_data[31 : 0];

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_0_single_clock_fifo_for_other_info (
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

module soc_system_fifo_0_map_avalonmm_to_avalonst_other_info (
                                                               // inputs:
                                                                avalonmm_other_info,
                                                                clock,
                                                                enable,
                                                                reset_n,

                                                               // outputs:
                                                                avalonst_other_info
                                                             )
;

  output  [ 15: 0] avalonst_other_info;
  input   [ 31: 0] avalonmm_other_info;
  input            clock;
  input            enable;
  input            reset_n;


wire    [ 15: 0] avalonst_other_info;
wire    [  7: 0] channel;
reg     [  7: 0] channel_q;
wire    [  7: 0] error;
reg     [  7: 0] error_q;
  assign error = avalonmm_other_info[23 : 16];
  assign channel = avalonmm_other_info[15 : 8];
  assign avalonst_other_info = {error_q,
    channel_q};

  always @(posedge clock or negedge reset_n)
    begin
      if (reset_n == 0)
          error_q <= 0;
      else if (enable)
          error_q <= error;
    end


  always @(posedge clock or negedge reset_n)
    begin
      if (reset_n == 0)
          channel_q <= 0;
      else if (enable)
          channel_q <= channel;
    end



endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_0_map_fifo_other_info_to_avalonst (
                                                           // inputs:
                                                            data_in,

                                                           // outputs:
                                                            avalonst_source_channel,
                                                            avalonst_source_error
                                                         )
;

  output  [  7: 0] avalonst_source_channel;
  output  [  7: 0] avalonst_source_error;
  input   [ 15: 0] data_in;


wire    [  7: 0] avalonst_source_channel;
wire    [  7: 0] avalonst_source_error;
  assign {avalonst_source_error,
avalonst_source_channel} = data_in;

endmodule


// synthesis translate_off
`timescale 1ns / 1ps
// synthesis translate_on

// turn off superfluous verilog processor warnings 
// altera message_level Level1 
// altera message_off 10034 10035 10036 10037 10230 10240 10030 

module soc_system_fifo_0 (
                           // inputs:
                            avalonmm_write_slave_address,
                            avalonmm_write_slave_write,
                            avalonmm_write_slave_writedata,
                            avalonst_source_ready,
                            reset_n,
                            wrclock,

                           // outputs:
                            avalonmm_write_slave_waitrequest,
                            avalonst_source_channel,
                            avalonst_source_data,
                            avalonst_source_error,
                            avalonst_source_valid
                         )
;

  output           avalonmm_write_slave_waitrequest;
  output  [  7: 0] avalonst_source_channel;
  output  [ 31: 0] avalonst_source_data;
  output  [  7: 0] avalonst_source_error;
  output           avalonst_source_valid;
  input            avalonmm_write_slave_address;
  input            avalonmm_write_slave_write;
  input   [ 31: 0] avalonmm_write_slave_writedata;
  input            avalonst_source_ready;
  input            reset_n;
  input            wrclock;


wire    [ 31: 0] avalonmm_map_data_in;
wire             avalonmm_write_slave_waitrequest;
wire    [ 31: 0] avalonst_map_data_out;
wire    [ 15: 0] avalonst_other_info;
wire    [  7: 0] avalonst_source_channel;
wire    [ 31: 0] avalonst_source_data;
wire    [  7: 0] avalonst_source_error;
reg              avalonst_source_valid;
wire             clock;
wire    [ 31: 0] data;
wire             empty;
wire             full;
wire    [ 31: 0] q;
wire    [ 15: 0] q_i;
wire             rdreq;
wire             rdreq_i;
wire             wrreq;
wire             wrreq_driver;
  //the_scfifo_with_controls, which is an e_instance
  soc_system_fifo_0_scfifo_with_controls the_scfifo_with_controls
    (
      .clock   (clock),
      .data    (data),
      .empty   (empty),
      .full    (full),
      .q       (q),
      .rdreq   (rdreq),
      .reset_n (reset_n),
      .wrreq   (wrreq)
    );

  //in, which is an e_avalon_slave
  assign avalonmm_write_slave_waitrequest = (reset_n == 0) ? 1'b1 : full;
  //the_map_avalonmm_to_avalonst, which is an e_instance
  soc_system_fifo_0_map_avalonmm_to_avalonst the_map_avalonmm_to_avalonst
    (
      .avalonmm_data (avalonmm_map_data_in),
      .avalonst_data (avalonst_map_data_out)
    );

  assign wrreq_driver = (avalonmm_write_slave_address == 0) & avalonmm_write_slave_write;
  assign avalonmm_map_data_in = avalonmm_write_slave_writedata;
  assign wrreq = wrreq_driver;
  assign data = avalonst_map_data_out;
  assign clock = wrclock;
  //the_scfifo_other_info, which is an e_instance
  soc_system_fifo_0_single_clock_fifo_for_other_info the_scfifo_other_info
    (
      .aclr  (~reset_n),
      .clock (clock),
      .data  (avalonst_other_info),
      .q     (q_i),
      .rdreq (rdreq_i),
      .wrreq (wrreq_driver & ~full)
    );

  //the_map_avalonmm_to_avalonst_other_info, which is an e_instance
  soc_system_fifo_0_map_avalonmm_to_avalonst_other_info the_map_avalonmm_to_avalonst_other_info
    (
      .avalonmm_other_info (avalonmm_write_slave_writedata),
      .avalonst_other_info (avalonst_other_info),
      .clock               (clock),
      .enable              ((avalonmm_write_slave_address == 1) & avalonmm_write_slave_write),
      .reset_n             (reset_n)
    );

  //the_map_fifo_other_info_to_avalonst, which is an e_instance
  soc_system_fifo_0_map_fifo_other_info_to_avalonst the_map_fifo_other_info_to_avalonst
    (
      .avalonst_source_channel (avalonst_source_channel),
      .avalonst_source_error   (avalonst_source_error),
      .data_in                 (q_i)
    );

  assign avalonst_source_data = q;
  assign rdreq = !empty & avalonst_source_ready;
  assign rdreq_i = rdreq;
  always @(posedge clock or negedge reset_n)
    begin
      if (reset_n == 0)
          avalonst_source_valid <= 0;
      else 
        avalonst_source_valid <= !empty & avalonst_source_ready;
    end


  //out, which is an e_atlantic_master

endmodule

