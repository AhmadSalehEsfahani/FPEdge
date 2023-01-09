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

// SystemVerilog created from streamer_function
// Created for function/kernel streamer
// SystemVerilog created on Sun Jan  1 13:31:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_s0_global,
    input wire [63:0] in_arg_s2_global,
    input wire [383:0] in_iord_bl_call_streamer_i_fifodata,
    input wire [0:0] in_iord_bl_call_streamer_i_fifovalid,
    input wire [0:0] in_iord_bl_return_projection_i_fifodata,
    input wire [0:0] in_iord_bl_return_projection_i_fifovalid,
    input wire [0:0] in_iord_bl_return_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_return_windowing_i_fifovalid,
    input wire [383:0] in_iord_bl_s2_i_fifodata,
    input wire [0:0] in_iord_bl_s2_i_fifovalid,
    input wire [0:0] in_iowr_bl_call_projection_i_fifoready,
    input wire [0:0] in_iowr_bl_call_windowing_i_fifoready,
    input wire [0:0] in_iowr_bl_s0_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoready,
    output wire [0:0] out_iord_bl_return_projection_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_projection_o_fifoready,
    output wire [0:0] out_iord_bl_return_windowing_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_s2_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s2_o_fifoready,
    output wire [0:0] out_iowr_bl_call_projection_o_fifodata,
    output wire [0:0] out_iowr_bl_call_projection_o_fifovalid,
    output wire [0:0] out_iowr_bl_call_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_call_windowing_o_fifovalid,
    output wire [383:0] out_iowr_bl_s0_o_fifodata,
    output wire [0:0] out_iowr_bl_s0_o_fifovalid,
    output wire [383:0] out_iowr_nb_return_streamer_o_fifodata,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_streamer_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_return_projection_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_return_projection_o_fifoready;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_return_windowing_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_return_windowing_o_fifoready;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_s2_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_out_iord_bl_s2_o_fifoready;
    wire [0:0] bb_streamer_B1_start_out_iowr_bl_call_projection_o_fifodata;
    wire [0:0] bb_streamer_B1_start_out_iowr_bl_call_projection_o_fifovalid;
    wire [0:0] bb_streamer_B1_start_out_iowr_bl_call_windowing_o_fifodata;
    wire [0:0] bb_streamer_B1_start_out_iowr_bl_call_windowing_o_fifovalid;
    wire [383:0] bb_streamer_B1_start_out_iowr_bl_s0_o_fifodata;
    wire [0:0] bb_streamer_B1_start_out_iowr_bl_s0_o_fifovalid;
    wire [383:0] bb_streamer_B1_start_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] bb_streamer_B1_start_out_iowr_nb_return_streamer_o_fifovalid;
    wire [0:0] bb_streamer_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_streamer_B1_start_out_stall_in_0;
    wire [0:0] bb_streamer_B1_start_out_stall_out_0;
    wire [0:0] bb_streamer_B1_start_out_valid_in_0;
    wire [0:0] bb_streamer_B1_start_out_valid_in_1;
    wire [0:0] bb_streamer_B1_start_out_valid_out_0;
    wire [1:0] c_i2_06_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_streamer1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_streamer1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo_out_valid_out;
    wire [0:0] streamer_B1_start_x_i_capture;
    wire streamer_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_clear;
    wire streamer_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_enable;
    wire streamer_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_shift;
    wire streamer_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_stall_pred;
    wire streamer_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_stall_succ;
    wire streamer_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_valid_loop;
    wire streamer_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_valid_pred;
    wire streamer_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] streamer_B1_start_x_i_valid_succ;
    wire streamer_B1_start_x_i_valid_succ_bitsignaltemp;


    // c_i2_06(CONSTANT,9)
    assign c_i2_06_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo(BLACKBOX,12)
    streamer_i_llvm_fpga_pipeline_keep_going_1_valid_fifo thei_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo (
        .in_data_in(c_i2_06_q),
        .in_stall_in(bb_streamer_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_streamer1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pipeline_keep_going_streamer1_sr(BLACKBOX,11)
    streamer_i_llvm_fpga_pipeline_keep_going_1_sr thei_llvm_fpga_pipeline_keep_going_streamer1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo_out_stall_out),
        .in_i_valid(bb_streamer_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_streamer1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_streamer1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_streamer_B1_start(BLACKBOX,3)
    streamer_bb_B1_start thebb_streamer_B1_start (
        .in_iord_bl_call_streamer_i_fifodata(in_iord_bl_call_streamer_i_fifodata),
        .in_iord_bl_call_streamer_i_fifovalid(in_iord_bl_call_streamer_i_fifovalid),
        .in_iord_bl_return_projection_i_fifodata(in_iord_bl_return_projection_i_fifodata),
        .in_iord_bl_return_projection_i_fifovalid(in_iord_bl_return_projection_i_fifovalid),
        .in_iord_bl_return_windowing_i_fifodata(in_iord_bl_return_windowing_i_fifodata),
        .in_iord_bl_return_windowing_i_fifovalid(in_iord_bl_return_windowing_i_fifovalid),
        .in_iord_bl_s2_i_fifodata(in_iord_bl_s2_i_fifodata),
        .in_iord_bl_s2_i_fifovalid(in_iord_bl_s2_i_fifovalid),
        .in_iowr_bl_call_projection_i_fifoready(in_iowr_bl_call_projection_i_fifoready),
        .in_iowr_bl_call_windowing_i_fifoready(in_iowr_bl_call_windowing_i_fifoready),
        .in_iowr_bl_s0_i_fifoready(in_iowr_bl_s0_i_fifoready),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_streamer1_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_streamer1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_streamer_o_fifoalmost_full(bb_streamer_B1_start_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(bb_streamer_B1_start_out_iord_bl_call_streamer_o_fifoready),
        .out_iord_bl_return_projection_o_fifoalmost_full(bb_streamer_B1_start_out_iord_bl_return_projection_o_fifoalmost_full),
        .out_iord_bl_return_projection_o_fifoready(bb_streamer_B1_start_out_iord_bl_return_projection_o_fifoready),
        .out_iord_bl_return_windowing_o_fifoalmost_full(bb_streamer_B1_start_out_iord_bl_return_windowing_o_fifoalmost_full),
        .out_iord_bl_return_windowing_o_fifoready(bb_streamer_B1_start_out_iord_bl_return_windowing_o_fifoready),
        .out_iord_bl_s2_o_fifoalmost_full(bb_streamer_B1_start_out_iord_bl_s2_o_fifoalmost_full),
        .out_iord_bl_s2_o_fifoready(bb_streamer_B1_start_out_iord_bl_s2_o_fifoready),
        .out_iowr_bl_call_projection_o_fifodata(bb_streamer_B1_start_out_iowr_bl_call_projection_o_fifodata),
        .out_iowr_bl_call_projection_o_fifovalid(bb_streamer_B1_start_out_iowr_bl_call_projection_o_fifovalid),
        .out_iowr_bl_call_windowing_o_fifodata(bb_streamer_B1_start_out_iowr_bl_call_windowing_o_fifodata),
        .out_iowr_bl_call_windowing_o_fifovalid(bb_streamer_B1_start_out_iowr_bl_call_windowing_o_fifovalid),
        .out_iowr_bl_s0_o_fifodata(bb_streamer_B1_start_out_iowr_bl_s0_o_fifodata),
        .out_iowr_bl_s0_o_fifovalid(bb_streamer_B1_start_out_iowr_bl_s0_o_fifovalid),
        .out_iowr_nb_return_streamer_o_fifodata(bb_streamer_B1_start_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(bb_streamer_B1_start_out_iowr_nb_return_streamer_o_fifovalid),
        .out_pipeline_valid_out(bb_streamer_B1_start_out_pipeline_valid_out),
        .out_stall_in_0(bb_streamer_B1_start_out_stall_in_0),
        .out_stall_out_0(bb_streamer_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_streamer_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_streamer_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_streamer_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_streamer_o_fifoalmost_full(GPOUT,30)
    assign out_iord_bl_call_streamer_o_fifoalmost_full = bb_streamer_B1_start_out_iord_bl_call_streamer_o_fifoalmost_full;

    // out_iord_bl_call_streamer_o_fifoready(GPOUT,31)
    assign out_iord_bl_call_streamer_o_fifoready = bb_streamer_B1_start_out_iord_bl_call_streamer_o_fifoready;

    // out_iord_bl_return_projection_o_fifoalmost_full(GPOUT,32)
    assign out_iord_bl_return_projection_o_fifoalmost_full = bb_streamer_B1_start_out_iord_bl_return_projection_o_fifoalmost_full;

    // out_iord_bl_return_projection_o_fifoready(GPOUT,33)
    assign out_iord_bl_return_projection_o_fifoready = bb_streamer_B1_start_out_iord_bl_return_projection_o_fifoready;

    // out_iord_bl_return_windowing_o_fifoalmost_full(GPOUT,34)
    assign out_iord_bl_return_windowing_o_fifoalmost_full = bb_streamer_B1_start_out_iord_bl_return_windowing_o_fifoalmost_full;

    // out_iord_bl_return_windowing_o_fifoready(GPOUT,35)
    assign out_iord_bl_return_windowing_o_fifoready = bb_streamer_B1_start_out_iord_bl_return_windowing_o_fifoready;

    // out_iord_bl_s2_o_fifoalmost_full(GPOUT,36)
    assign out_iord_bl_s2_o_fifoalmost_full = bb_streamer_B1_start_out_iord_bl_s2_o_fifoalmost_full;

    // out_iord_bl_s2_o_fifoready(GPOUT,37)
    assign out_iord_bl_s2_o_fifoready = bb_streamer_B1_start_out_iord_bl_s2_o_fifoready;

    // out_iowr_bl_call_projection_o_fifodata(GPOUT,38)
    assign out_iowr_bl_call_projection_o_fifodata = bb_streamer_B1_start_out_iowr_bl_call_projection_o_fifodata;

    // out_iowr_bl_call_projection_o_fifovalid(GPOUT,39)
    assign out_iowr_bl_call_projection_o_fifovalid = bb_streamer_B1_start_out_iowr_bl_call_projection_o_fifovalid;

    // out_iowr_bl_call_windowing_o_fifodata(GPOUT,40)
    assign out_iowr_bl_call_windowing_o_fifodata = bb_streamer_B1_start_out_iowr_bl_call_windowing_o_fifodata;

    // out_iowr_bl_call_windowing_o_fifovalid(GPOUT,41)
    assign out_iowr_bl_call_windowing_o_fifovalid = bb_streamer_B1_start_out_iowr_bl_call_windowing_o_fifovalid;

    // out_iowr_bl_s0_o_fifodata(GPOUT,42)
    assign out_iowr_bl_s0_o_fifodata = bb_streamer_B1_start_out_iowr_bl_s0_o_fifodata;

    // out_iowr_bl_s0_o_fifovalid(GPOUT,43)
    assign out_iowr_bl_s0_o_fifovalid = bb_streamer_B1_start_out_iowr_bl_s0_o_fifovalid;

    // out_iowr_nb_return_streamer_o_fifodata(GPOUT,44)
    assign out_iowr_nb_return_streamer_o_fifodata = bb_streamer_B1_start_out_iowr_nb_return_streamer_o_fifodata;

    // out_iowr_nb_return_streamer_o_fifovalid(GPOUT,45)
    assign out_iowr_nb_return_streamer_o_fifovalid = bb_streamer_B1_start_out_iowr_nb_return_streamer_o_fifovalid;

    // bb_streamer_B0_runOnce(BLACKBOX,2)
    streamer_bb_B0_runOnce thebb_streamer_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_streamer_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,46)
    assign out_stall_out = bb_streamer_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,47)
    assign out_valid_out = GND_q;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // streamer_B1_start_x(EXTIFACE,48)
    assign streamer_B1_start_x_i_capture = GND_q;
    assign streamer_B1_start_x_i_clear = GND_q;
    assign streamer_B1_start_x_i_enable = VCC_q;
    assign streamer_B1_start_x_i_shift = GND_q;
    assign streamer_B1_start_x_i_stall_pred = GND_q;
    assign streamer_B1_start_x_i_stall_succ = bb_streamer_B1_start_out_stall_in_0;
    assign streamer_B1_start_x_i_valid_loop = bb_streamer_B1_start_out_valid_in_0;
    assign streamer_B1_start_x_i_valid_pred = bb_streamer_B1_start_out_valid_in_1;
    assign streamer_B1_start_x_i_valid_succ = bb_streamer_B1_start_out_valid_out_0;
    assign streamer_B1_start_x_i_capture_bitsignaltemp = streamer_B1_start_x_i_capture[0];
    assign streamer_B1_start_x_i_clear_bitsignaltemp = streamer_B1_start_x_i_clear[0];
    assign streamer_B1_start_x_i_enable_bitsignaltemp = streamer_B1_start_x_i_enable[0];
    assign streamer_B1_start_x_i_shift_bitsignaltemp = streamer_B1_start_x_i_shift[0];
    assign streamer_B1_start_x_i_stall_pred_bitsignaltemp = streamer_B1_start_x_i_stall_pred[0];
    assign streamer_B1_start_x_i_stall_succ_bitsignaltemp = streamer_B1_start_x_i_stall_succ[0];
    assign streamer_B1_start_x_i_valid_loop_bitsignaltemp = streamer_B1_start_x_i_valid_loop[0];
    assign streamer_B1_start_x_i_valid_pred_bitsignaltemp = streamer_B1_start_x_i_valid_pred[0];
    assign streamer_B1_start_x_i_valid_succ_bitsignaltemp = streamer_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("streamer.B1.start")
    ) thestreamer_B1_start_x (
        .i_capture(streamer_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(streamer_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(streamer_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(streamer_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(streamer_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(streamer_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(streamer_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(streamer_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(streamer_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
