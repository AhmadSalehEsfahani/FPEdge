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

// SystemVerilog created from bb_streamer_B1_start
// Created for function/kernel streamer
// SystemVerilog created on Sun Jan  1 13:31:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_B1_start (
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
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
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
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_streamer_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;
    wire [0:0] bb_streamer_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_return_projection_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_return_projection_o_fifoready;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_return_windowing_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_return_windowing_o_fifoready;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_s2_o_fifoalmost_full;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iord_bl_s2_o_fifoready;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iowr_bl_call_projection_o_fifodata;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iowr_bl_call_projection_o_fifovalid;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iowr_bl_call_windowing_o_fifodata;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iowr_bl_call_windowing_o_fifovalid;
    wire [383:0] bb_streamer_B1_start_stall_region_out_iowr_bl_s0_o_fifodata;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iowr_bl_s0_o_fifovalid;
    wire [383:0] bb_streamer_B1_start_stall_region_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] bb_streamer_B1_start_stall_region_out_iowr_nb_return_streamer_o_fifovalid;
    wire [0:0] bb_streamer_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_streamer_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_streamer_B1_start_stall_region_out_valid_out;
    wire [0:0] streamer_B1_start_branch_out_stall_out;
    wire [0:0] streamer_B1_start_branch_out_valid_out_0;
    wire [0:0] streamer_B1_start_merge_out_stall_out_0;
    wire [0:0] streamer_B1_start_merge_out_stall_out_1;
    wire [0:0] streamer_B1_start_merge_out_valid_out;


    // streamer_B1_start_merge(BLACKBOX,44)
    streamer_B1_start_merge thestreamer_B1_start_merge (
        .in_stall_in(bb_streamer_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_stall_out_0(streamer_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(streamer_B1_start_merge_out_stall_out_1),
        .out_valid_out(streamer_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // streamer_B1_start_branch(BLACKBOX,43)
    streamer_B1_start_branch thestreamer_B1_start_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_streamer_B1_start_stall_region_out_valid_out),
        .out_stall_out(streamer_B1_start_branch_out_stall_out),
        .out_valid_out_0(streamer_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_streamer_B1_start_stall_region(BLACKBOX,2)
    streamer_bb_B1_start_stall_region thebb_streamer_B1_start_stall_region (
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
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(streamer_B1_start_branch_out_stall_out),
        .in_valid_in(streamer_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out(bb_streamer_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out(bb_streamer_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out),
        .out_iord_bl_call_streamer_o_fifoalmost_full(bb_streamer_B1_start_stall_region_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(bb_streamer_B1_start_stall_region_out_iord_bl_call_streamer_o_fifoready),
        .out_iord_bl_return_projection_o_fifoalmost_full(bb_streamer_B1_start_stall_region_out_iord_bl_return_projection_o_fifoalmost_full),
        .out_iord_bl_return_projection_o_fifoready(bb_streamer_B1_start_stall_region_out_iord_bl_return_projection_o_fifoready),
        .out_iord_bl_return_windowing_o_fifoalmost_full(bb_streamer_B1_start_stall_region_out_iord_bl_return_windowing_o_fifoalmost_full),
        .out_iord_bl_return_windowing_o_fifoready(bb_streamer_B1_start_stall_region_out_iord_bl_return_windowing_o_fifoready),
        .out_iord_bl_s2_o_fifoalmost_full(bb_streamer_B1_start_stall_region_out_iord_bl_s2_o_fifoalmost_full),
        .out_iord_bl_s2_o_fifoready(bb_streamer_B1_start_stall_region_out_iord_bl_s2_o_fifoready),
        .out_iowr_bl_call_projection_o_fifodata(bb_streamer_B1_start_stall_region_out_iowr_bl_call_projection_o_fifodata),
        .out_iowr_bl_call_projection_o_fifovalid(bb_streamer_B1_start_stall_region_out_iowr_bl_call_projection_o_fifovalid),
        .out_iowr_bl_call_windowing_o_fifodata(bb_streamer_B1_start_stall_region_out_iowr_bl_call_windowing_o_fifodata),
        .out_iowr_bl_call_windowing_o_fifovalid(bb_streamer_B1_start_stall_region_out_iowr_bl_call_windowing_o_fifovalid),
        .out_iowr_bl_s0_o_fifodata(bb_streamer_B1_start_stall_region_out_iowr_bl_s0_o_fifodata),
        .out_iowr_bl_s0_o_fifovalid(bb_streamer_B1_start_stall_region_out_iowr_bl_s0_o_fifovalid),
        .out_iowr_nb_return_streamer_o_fifodata(bb_streamer_B1_start_stall_region_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(bb_streamer_B1_start_stall_region_out_iowr_nb_return_streamer_o_fifovalid),
        .out_pipeline_valid_out(bb_streamer_B1_start_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_streamer_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_streamer_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,17)
    assign out_exiting_stall_out = bb_streamer_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,18)
    assign out_exiting_valid_out = bb_streamer_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;

    // out_iord_bl_call_streamer_o_fifoalmost_full(GPOUT,19)
    assign out_iord_bl_call_streamer_o_fifoalmost_full = bb_streamer_B1_start_stall_region_out_iord_bl_call_streamer_o_fifoalmost_full;

    // out_iord_bl_call_streamer_o_fifoready(GPOUT,20)
    assign out_iord_bl_call_streamer_o_fifoready = bb_streamer_B1_start_stall_region_out_iord_bl_call_streamer_o_fifoready;

    // out_iord_bl_return_projection_o_fifoalmost_full(GPOUT,21)
    assign out_iord_bl_return_projection_o_fifoalmost_full = bb_streamer_B1_start_stall_region_out_iord_bl_return_projection_o_fifoalmost_full;

    // out_iord_bl_return_projection_o_fifoready(GPOUT,22)
    assign out_iord_bl_return_projection_o_fifoready = bb_streamer_B1_start_stall_region_out_iord_bl_return_projection_o_fifoready;

    // out_iord_bl_return_windowing_o_fifoalmost_full(GPOUT,23)
    assign out_iord_bl_return_windowing_o_fifoalmost_full = bb_streamer_B1_start_stall_region_out_iord_bl_return_windowing_o_fifoalmost_full;

    // out_iord_bl_return_windowing_o_fifoready(GPOUT,24)
    assign out_iord_bl_return_windowing_o_fifoready = bb_streamer_B1_start_stall_region_out_iord_bl_return_windowing_o_fifoready;

    // out_iord_bl_s2_o_fifoalmost_full(GPOUT,25)
    assign out_iord_bl_s2_o_fifoalmost_full = bb_streamer_B1_start_stall_region_out_iord_bl_s2_o_fifoalmost_full;

    // out_iord_bl_s2_o_fifoready(GPOUT,26)
    assign out_iord_bl_s2_o_fifoready = bb_streamer_B1_start_stall_region_out_iord_bl_s2_o_fifoready;

    // out_iowr_bl_call_projection_o_fifodata(GPOUT,27)
    assign out_iowr_bl_call_projection_o_fifodata = bb_streamer_B1_start_stall_region_out_iowr_bl_call_projection_o_fifodata;

    // out_iowr_bl_call_projection_o_fifovalid(GPOUT,28)
    assign out_iowr_bl_call_projection_o_fifovalid = bb_streamer_B1_start_stall_region_out_iowr_bl_call_projection_o_fifovalid;

    // out_iowr_bl_call_windowing_o_fifodata(GPOUT,29)
    assign out_iowr_bl_call_windowing_o_fifodata = bb_streamer_B1_start_stall_region_out_iowr_bl_call_windowing_o_fifodata;

    // out_iowr_bl_call_windowing_o_fifovalid(GPOUT,30)
    assign out_iowr_bl_call_windowing_o_fifovalid = bb_streamer_B1_start_stall_region_out_iowr_bl_call_windowing_o_fifovalid;

    // out_iowr_bl_s0_o_fifodata(GPOUT,31)
    assign out_iowr_bl_s0_o_fifodata = bb_streamer_B1_start_stall_region_out_iowr_bl_s0_o_fifodata;

    // out_iowr_bl_s0_o_fifovalid(GPOUT,32)
    assign out_iowr_bl_s0_o_fifovalid = bb_streamer_B1_start_stall_region_out_iowr_bl_s0_o_fifovalid;

    // out_iowr_nb_return_streamer_o_fifodata(GPOUT,33)
    assign out_iowr_nb_return_streamer_o_fifodata = bb_streamer_B1_start_stall_region_out_iowr_nb_return_streamer_o_fifodata;

    // out_iowr_nb_return_streamer_o_fifovalid(GPOUT,34)
    assign out_iowr_nb_return_streamer_o_fifovalid = bb_streamer_B1_start_stall_region_out_iowr_nb_return_streamer_o_fifovalid;

    // out_stall_in_0(GPOUT,35)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,36)
    assign out_stall_out_0 = streamer_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,37)
    assign out_stall_out_1 = streamer_B1_start_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,38)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,39)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,40)
    assign out_valid_out_0 = streamer_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,42)
    assign out_pipeline_valid_out = bb_streamer_B1_start_stall_region_out_pipeline_valid_out;

endmodule
