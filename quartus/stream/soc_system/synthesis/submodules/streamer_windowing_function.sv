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

// SystemVerilog created from windowing_function
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_windowing_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_s1_global,
    input wire [63:0] in_arg_s2_global,
    input wire [0:0] in_iord_bl_call_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_call_windowing_i_fifovalid,
    input wire [383:0] in_iord_bl_s1_i_fifodata,
    input wire [0:0] in_iord_bl_s1_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_windowing_i_fifoready,
    input wire [0:0] in_iowr_bl_s2_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_s1_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_s1_o_fifoready,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifovalid,
    output wire [383:0] out_iowr_bl_s2_o_fifodata,
    output wire [0:0] out_iowr_bl_s2_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_windowing_B1_start_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_windowing_B1_start_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_windowing_B1_start_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_windowing_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_windowing_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoalmost_full;
    wire [0:0] bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] bb_windowing_B1_start_out_iord_bl_s1_o_fifoalmost_full;
    wire [0:0] bb_windowing_B1_start_out_iord_bl_s1_o_fifoready;
    wire [0:0] bb_windowing_B1_start_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] bb_windowing_B1_start_out_iowr_bl_return_windowing_o_fifovalid;
    wire [383:0] bb_windowing_B1_start_out_iowr_bl_s2_o_fifodata;
    wire [0:0] bb_windowing_B1_start_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] bb_windowing_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B1_start_out_stall_in_0;
    wire [0:0] bb_windowing_B1_start_out_stall_out_0;
    wire [0:0] bb_windowing_B1_start_out_stall_out_1;
    wire [0:0] bb_windowing_B1_start_out_valid_in_0;
    wire [0:0] bb_windowing_B1_start_out_valid_in_1;
    wire [0:0] bb_windowing_B1_start_out_valid_out_0;
    wire [1:0] c_i2_09_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo_out_valid_out;
    wire [0:0] windowing_B1_start_x_i_capture;
    wire windowing_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_clear;
    wire windowing_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_enable;
    wire windowing_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_shift;
    wire windowing_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_stall_pred;
    wire windowing_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_stall_succ;
    wire windowing_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_valid_loop;
    wire windowing_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_valid_pred;
    wire windowing_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_valid_succ;
    wire windowing_B1_start_x_i_valid_succ_bitsignaltemp;


    // c_i2_09(CONSTANT,11)
    assign c_i2_09_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo(BLACKBOX,14)
    streamer_i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo thei_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo (
        .in_data_in(c_i2_09_q),
        .in_stall_in(bb_windowing_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_windowing2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_windowing2_sr(BLACKBOX,13)
    streamer_i_llvm_fpga_pipeline_keep_going_windowing2_sr thei_llvm_fpga_pipeline_keep_going_windowing2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo_out_stall_out),
        .in_i_valid(bb_windowing_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_windowing2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_windowing2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B0_runOnce(BLACKBOX,3)
    streamer_bb_windowing_B0_runOnce thebb_windowing_B0_runOnce (
        .in_stall_in_0(bb_windowing_B1_start_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_windowing_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_windowing_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_windowing_B1_start_sr_1_aunroll_x(BLACKBOX,2)
    streamer_bb_windowing_B1_start_sr_1 thebb_windowing_B1_start_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_windowing_B1_start_out_stall_out_1),
        .in_i_valid(bb_windowing_B0_runOnce_out_valid_out_0),
        .out_o_data_0_tpl(bb_windowing_B1_start_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_windowing_B1_start_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_windowing_B1_start_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_windowing_B1_start(BLACKBOX,4)
    streamer_bb_windowing_B1_start thebb_windowing_B1_start (
        .in_forked_0(GND_q),
        .in_forked_1(bb_windowing_B1_start_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_iord_bl_call_windowing_i_fifodata(in_iord_bl_call_windowing_i_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(in_iord_bl_call_windowing_i_fifovalid),
        .in_iord_bl_s1_i_fifodata(in_iord_bl_s1_i_fifodata),
        .in_iord_bl_s1_i_fifovalid(in_iord_bl_s1_i_fifovalid),
        .in_iowr_bl_return_windowing_i_fifoready(in_iowr_bl_return_windowing_i_fifoready),
        .in_iowr_bl_s2_i_fifoready(in_iowr_bl_s2_i_fifoready),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_windowing2_sr_out_o_stall),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_windowing_B1_start_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_iord_bl_call_windowing_o_fifoalmost_full(bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoalmost_full),
        .out_iord_bl_call_windowing_o_fifoready(bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoready),
        .out_iord_bl_s1_o_fifoalmost_full(bb_windowing_B1_start_out_iord_bl_s1_o_fifoalmost_full),
        .out_iord_bl_s1_o_fifoready(bb_windowing_B1_start_out_iord_bl_s1_o_fifoready),
        .out_iowr_bl_return_windowing_o_fifodata(bb_windowing_B1_start_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(bb_windowing_B1_start_out_iowr_bl_return_windowing_o_fifovalid),
        .out_iowr_bl_s2_o_fifodata(bb_windowing_B1_start_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(bb_windowing_B1_start_out_iowr_bl_s2_o_fifovalid),
        .out_pipeline_valid_out(bb_windowing_B1_start_out_pipeline_valid_out),
        .out_stall_in_0(bb_windowing_B1_start_out_stall_in_0),
        .out_stall_out_0(bb_windowing_B1_start_out_stall_out_0),
        .out_stall_out_1(bb_windowing_B1_start_out_stall_out_1),
        .out_valid_in_0(bb_windowing_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_windowing_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_windowing_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_windowing_o_fifoalmost_full(GPOUT,27)
    assign out_iord_bl_call_windowing_o_fifoalmost_full = bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoalmost_full;

    // out_iord_bl_call_windowing_o_fifoready(GPOUT,28)
    assign out_iord_bl_call_windowing_o_fifoready = bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoready;

    // out_iord_bl_s1_o_fifoalmost_full(GPOUT,29)
    assign out_iord_bl_s1_o_fifoalmost_full = bb_windowing_B1_start_out_iord_bl_s1_o_fifoalmost_full;

    // out_iord_bl_s1_o_fifoready(GPOUT,30)
    assign out_iord_bl_s1_o_fifoready = bb_windowing_B1_start_out_iord_bl_s1_o_fifoready;

    // out_iowr_bl_return_windowing_o_fifodata(GPOUT,31)
    assign out_iowr_bl_return_windowing_o_fifodata = bb_windowing_B1_start_out_iowr_bl_return_windowing_o_fifodata;

    // out_iowr_bl_return_windowing_o_fifovalid(GPOUT,32)
    assign out_iowr_bl_return_windowing_o_fifovalid = bb_windowing_B1_start_out_iowr_bl_return_windowing_o_fifovalid;

    // out_iowr_bl_s2_o_fifodata(GPOUT,33)
    assign out_iowr_bl_s2_o_fifodata = bb_windowing_B1_start_out_iowr_bl_s2_o_fifodata;

    // out_iowr_bl_s2_o_fifovalid(GPOUT,34)
    assign out_iowr_bl_s2_o_fifovalid = bb_windowing_B1_start_out_iowr_bl_s2_o_fifovalid;

    // out_stall_out(GPOUT,35)
    assign out_stall_out = bb_windowing_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,36)
    assign out_valid_out = GND_q;

    // windowing_B1_start_x(EXTIFACE,37)
    assign windowing_B1_start_x_i_capture = GND_q;
    assign windowing_B1_start_x_i_clear = GND_q;
    assign windowing_B1_start_x_i_enable = VCC_q;
    assign windowing_B1_start_x_i_shift = GND_q;
    assign windowing_B1_start_x_i_stall_pred = bb_windowing_B1_start_sr_1_aunroll_x_out_o_stall;
    assign windowing_B1_start_x_i_stall_succ = bb_windowing_B1_start_out_stall_in_0;
    assign windowing_B1_start_x_i_valid_loop = bb_windowing_B1_start_out_valid_in_0;
    assign windowing_B1_start_x_i_valid_pred = bb_windowing_B1_start_out_valid_in_1;
    assign windowing_B1_start_x_i_valid_succ = bb_windowing_B1_start_out_valid_out_0;
    assign windowing_B1_start_x_i_capture_bitsignaltemp = windowing_B1_start_x_i_capture[0];
    assign windowing_B1_start_x_i_clear_bitsignaltemp = windowing_B1_start_x_i_clear[0];
    assign windowing_B1_start_x_i_enable_bitsignaltemp = windowing_B1_start_x_i_enable[0];
    assign windowing_B1_start_x_i_shift_bitsignaltemp = windowing_B1_start_x_i_shift[0];
    assign windowing_B1_start_x_i_stall_pred_bitsignaltemp = windowing_B1_start_x_i_stall_pred[0];
    assign windowing_B1_start_x_i_stall_succ_bitsignaltemp = windowing_B1_start_x_i_stall_succ[0];
    assign windowing_B1_start_x_i_valid_loop_bitsignaltemp = windowing_B1_start_x_i_valid_loop[0];
    assign windowing_B1_start_x_i_valid_pred_bitsignaltemp = windowing_B1_start_x_i_valid_pred[0];
    assign windowing_B1_start_x_i_valid_succ_bitsignaltemp = windowing_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("windowing.B1.start")
    ) thewindowing_B1_start_x (
        .i_capture(windowing_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(windowing_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(windowing_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(windowing_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(windowing_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(windowing_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(windowing_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(windowing_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(windowing_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
