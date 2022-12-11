// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 22.3 (Release Build #116.1)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from streamer_function_wrapper
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_function_wrapper (
    input wire [0:0] avst_iord_bl_call_streamer_data,
    input wire [0:0] avst_iord_bl_call_streamer_valid,
    input wire [351:0] avst_iord_bl_s_in_data,
    input wire [0:0] avst_iord_bl_s_in_valid,
    input wire [0:0] avst_iowr_bl_call_aggregation_almostfull,
    input wire [0:0] avst_iowr_bl_call_projection_almostfull,
    input wire [0:0] avst_iowr_bl_call_windowing_almostfull,
    input wire [0:0] avst_iowr_bl_return_aggregation_almostfull,
    input wire [0:0] avst_iowr_bl_return_projection_almostfull,
    input wire [0:0] avst_iowr_bl_return_streamer_almostfull,
    input wire [0:0] avst_iowr_bl_return_streamer_ready,
    input wire [0:0] avst_iowr_bl_return_windowing_almostfull,
    input wire [0:0] avst_iowr_bl_s0_almostfull,
    input wire [0:0] avst_iowr_bl_s_out_almostfull,
    input wire [0:0] avst_iowr_bl_s_out_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_streamer_almost_full,
    output wire [0:0] avst_iord_bl_call_streamer_ready,
    output wire [0:0] avst_iord_bl_s_in_almost_full,
    output wire [0:0] avst_iord_bl_s_in_ready,
    output wire [0:0] avst_iowr_bl_return_streamer_data,
    output wire [0:0] avst_iowr_bl_return_streamer_valid,
    output wire [351:0] avst_iowr_bl_s_out_data,
    output wire [0:0] avst_iowr_bl_s_out_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] dupName_0_call_const_x_q;
    wire [0:0] aggregation_function_out_iord_bl_call_aggregation_o_fifoready;
    wire [351:0] aggregation_function_out_iowr_bl_return_aggregation_o_fifodata;
    wire [0:0] aggregation_function_out_iowr_bl_return_aggregation_o_fifovalid;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] projection_function_out_iord_bl_call_projection_o_fifoready;
    wire [0:0] projection_function_out_iord_bl_s_in_o_fifoalmost_full;
    wire [0:0] projection_function_out_iord_bl_s_in_o_fifoready;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifovalid;
    wire [351:0] projection_function_out_iowr_bl_s0_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_s0_o_fifovalid;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] streamer_function_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] streamer_function_out_iord_bl_return_projection_o_fifoready;
    wire [0:0] streamer_function_out_iord_bl_return_windowing_o_fifoready;
    wire [0:0] streamer_function_out_iowr_bl_call_projection_o_fifodata;
    wire [0:0] streamer_function_out_iowr_bl_call_projection_o_fifovalid;
    wire [0:0] streamer_function_out_iowr_bl_call_windowing_o_fifodata;
    wire [0:0] streamer_function_out_iowr_bl_call_windowing_o_fifovalid;
    wire [0:0] streamer_function_out_iowr_bl_return_streamer_o_fifodata;
    wire [0:0] streamer_function_out_iowr_bl_return_streamer_o_fifovalid;
    wire [0:0] windowing_function_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] windowing_function_out_iord_bl_return_aggregation_o_fifoready;
    wire [0:0] windowing_function_out_iord_bl_s0_o_fifoready;
    wire [447:0] windowing_function_out_iowr_bl_call_aggregation_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_call_aggregation_o_fifovalid;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifovalid;
    wire [351:0] windowing_function_out_iowr_bl_s_out_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_s_out_o_fifovalid;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,35)
    assign not_stall_q = ~ (stall);

    // aggregation_function(BLACKBOX,9)
    streamer_aggregation_function theaggregation_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_iord_bl_call_aggregation_i_fifodata(windowing_function_out_iowr_bl_call_aggregation_o_fifodata),
        .in_iord_bl_call_aggregation_i_fifovalid(windowing_function_out_iowr_bl_call_aggregation_o_fifovalid),
        .in_iowr_bl_return_aggregation_i_fifoready(windowing_function_out_iord_bl_return_aggregation_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_aggregation_o_fifoalmost_full(),
        .out_iord_bl_call_aggregation_o_fifoready(aggregation_function_out_iord_bl_call_aggregation_o_fifoready),
        .out_iowr_bl_return_aggregation_o_fifodata(aggregation_function_out_iowr_bl_return_aggregation_o_fifodata),
        .out_iowr_bl_return_aggregation_o_fifovalid(aggregation_function_out_iowr_bl_return_aggregation_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_function(BLACKBOX,54)
    streamer_windowing_function thewindowing_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_s0_global(dupName_0_call_const_x_q),
        .in_arg_s_out_global(dupName_0_call_const_x_q),
        .in_iord_bl_call_windowing_i_fifodata(streamer_function_out_iowr_bl_call_windowing_o_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(streamer_function_out_iowr_bl_call_windowing_o_fifovalid),
        .in_iord_bl_return_aggregation_i_fifodata(aggregation_function_out_iowr_bl_return_aggregation_o_fifodata),
        .in_iord_bl_return_aggregation_i_fifovalid(aggregation_function_out_iowr_bl_return_aggregation_o_fifovalid),
        .in_iord_bl_s0_i_fifodata(projection_function_out_iowr_bl_s0_o_fifodata),
        .in_iord_bl_s0_i_fifovalid(projection_function_out_iowr_bl_s0_o_fifovalid),
        .in_iowr_bl_call_aggregation_i_fifoready(aggregation_function_out_iord_bl_call_aggregation_o_fifoready),
        .in_iowr_bl_return_windowing_i_fifoready(streamer_function_out_iord_bl_return_windowing_o_fifoready),
        .in_iowr_bl_s_out_i_fifoready(avst_iowr_bl_s_out_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_windowing_o_fifoalmost_full(),
        .out_iord_bl_call_windowing_o_fifoready(windowing_function_out_iord_bl_call_windowing_o_fifoready),
        .out_iord_bl_return_aggregation_o_fifoalmost_full(),
        .out_iord_bl_return_aggregation_o_fifoready(windowing_function_out_iord_bl_return_aggregation_o_fifoready),
        .out_iord_bl_s0_o_fifoalmost_full(),
        .out_iord_bl_s0_o_fifoready(windowing_function_out_iord_bl_s0_o_fifoready),
        .out_iowr_bl_call_aggregation_o_fifodata(windowing_function_out_iowr_bl_call_aggregation_o_fifodata),
        .out_iowr_bl_call_aggregation_o_fifovalid(windowing_function_out_iowr_bl_call_aggregation_o_fifovalid),
        .out_iowr_bl_return_windowing_o_fifodata(windowing_function_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(windowing_function_out_iowr_bl_return_windowing_o_fifovalid),
        .out_iowr_bl_s_out_o_fifodata(windowing_function_out_iowr_bl_s_out_o_fifodata),
        .out_iowr_bl_s_out_o_fifovalid(windowing_function_out_iowr_bl_s_out_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // projection_function(BLACKBOX,47)
    streamer_projection_function theprojection_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_s0_global(dupName_0_call_const_x_q),
        .in_arg_s_in_global(dupName_0_call_const_x_q),
        .in_iord_bl_call_projection_i_fifodata(streamer_function_out_iowr_bl_call_projection_o_fifodata),
        .in_iord_bl_call_projection_i_fifovalid(streamer_function_out_iowr_bl_call_projection_o_fifovalid),
        .in_iord_bl_s_in_i_fifodata(avst_iord_bl_s_in_data),
        .in_iord_bl_s_in_i_fifovalid(avst_iord_bl_s_in_valid),
        .in_iowr_bl_return_projection_i_fifoready(streamer_function_out_iord_bl_return_projection_o_fifoready),
        .in_iowr_bl_s0_i_fifoready(windowing_function_out_iord_bl_s0_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_projection_o_fifoalmost_full(),
        .out_iord_bl_call_projection_o_fifoready(projection_function_out_iord_bl_call_projection_o_fifoready),
        .out_iord_bl_s_in_o_fifoalmost_full(projection_function_out_iord_bl_s_in_o_fifoalmost_full),
        .out_iord_bl_s_in_o_fifoready(projection_function_out_iord_bl_s_in_o_fifoready),
        .out_iowr_bl_return_projection_o_fifodata(projection_function_out_iowr_bl_return_projection_o_fifodata),
        .out_iowr_bl_return_projection_o_fifovalid(projection_function_out_iowr_bl_return_projection_o_fifovalid),
        .out_iowr_bl_s0_o_fifodata(projection_function_out_iowr_bl_s0_o_fifodata),
        .out_iowr_bl_s0_o_fifovalid(projection_function_out_iowr_bl_s0_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_call_const_x(CONSTANT,2)
    assign dupName_0_call_const_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // streamer_function(BLACKBOX,53)
    streamer_function thestreamer_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_iord_bl_call_streamer_i_fifodata(avst_iord_bl_call_streamer_data),
        .in_iord_bl_call_streamer_i_fifovalid(start),
        .in_iord_bl_return_projection_i_fifodata(projection_function_out_iowr_bl_return_projection_o_fifodata),
        .in_iord_bl_return_projection_i_fifovalid(projection_function_out_iowr_bl_return_projection_o_fifovalid),
        .in_iord_bl_return_windowing_i_fifodata(windowing_function_out_iowr_bl_return_windowing_o_fifodata),
        .in_iord_bl_return_windowing_i_fifovalid(windowing_function_out_iowr_bl_return_windowing_o_fifovalid),
        .in_iowr_bl_call_projection_i_fifoready(projection_function_out_iord_bl_call_projection_o_fifoready),
        .in_iowr_bl_call_windowing_i_fifoready(windowing_function_out_iord_bl_call_windowing_o_fifoready),
        .in_iowr_bl_return_streamer_i_fifoready(not_stall_q),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_streamer_o_fifoalmost_full(streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(streamer_function_out_iord_bl_call_streamer_o_fifoready),
        .out_iord_bl_return_projection_o_fifoalmost_full(),
        .out_iord_bl_return_projection_o_fifoready(streamer_function_out_iord_bl_return_projection_o_fifoready),
        .out_iord_bl_return_windowing_o_fifoalmost_full(),
        .out_iord_bl_return_windowing_o_fifoready(streamer_function_out_iord_bl_return_windowing_o_fifoready),
        .out_iowr_bl_call_projection_o_fifodata(streamer_function_out_iowr_bl_call_projection_o_fifodata),
        .out_iowr_bl_call_projection_o_fifovalid(streamer_function_out_iowr_bl_call_projection_o_fifovalid),
        .out_iowr_bl_call_windowing_o_fifodata(streamer_function_out_iowr_bl_call_windowing_o_fifodata),
        .out_iowr_bl_call_windowing_o_fifovalid(streamer_function_out_iowr_bl_call_windowing_o_fifovalid),
        .out_iowr_bl_return_streamer_o_fifodata(streamer_function_out_iowr_bl_return_streamer_o_fifodata),
        .out_iowr_bl_return_streamer_o_fifovalid(streamer_function_out_iowr_bl_return_streamer_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_streamer_almost_full(GPOUT,36)
    assign avst_iord_bl_call_streamer_almost_full = streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;

    // avst_iord_bl_call_streamer_ready(GPOUT,37)
    assign avst_iord_bl_call_streamer_ready = streamer_function_out_iord_bl_call_streamer_o_fifoready;

    // avst_iord_bl_s_in_almost_full(GPOUT,38)
    assign avst_iord_bl_s_in_almost_full = projection_function_out_iord_bl_s_in_o_fifoalmost_full;

    // avst_iord_bl_s_in_ready(GPOUT,39)
    assign avst_iord_bl_s_in_ready = projection_function_out_iord_bl_s_in_o_fifoready;

    // avst_iowr_bl_return_streamer_data(GPOUT,40)
    assign avst_iowr_bl_return_streamer_data = streamer_function_out_iowr_bl_return_streamer_o_fifodata;

    // avst_iowr_bl_return_streamer_valid(GPOUT,41)
    assign avst_iowr_bl_return_streamer_valid = streamer_function_out_iowr_bl_return_streamer_o_fifovalid;

    // avst_iowr_bl_s_out_data(GPOUT,42)
    assign avst_iowr_bl_s_out_data = windowing_function_out_iowr_bl_s_out_o_fifodata;

    // avst_iowr_bl_s_out_valid(GPOUT,43)
    assign avst_iowr_bl_s_out_valid = windowing_function_out_iowr_bl_s_out_o_fifovalid;

    // not_ready(LOGICAL,34)
    assign not_ready_q = ~ (streamer_function_out_iord_bl_call_streamer_o_fifoready);

    // busy_and(LOGICAL,10)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,48)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,46)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,11)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,44)
    assign busy = busy_or_q;

    // done(GPOUT,45)
    assign done = streamer_function_out_iowr_bl_return_streamer_o_fifovalid;

endmodule
