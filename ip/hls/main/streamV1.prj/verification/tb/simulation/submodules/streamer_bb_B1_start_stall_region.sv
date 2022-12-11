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

// SystemVerilog created from bb_streamer_B1_start_stall_region
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_B1_start_stall_region (
    input wire [0:0] in_iowr_bl_call_projection_i_fifoready,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoready,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_call_windowing_i_fifoready,
    output wire [0:0] out_iowr_bl_call_projection_o_fifodata,
    output wire [0:0] out_iowr_bl_call_projection_o_fifovalid,
    input wire [0:0] in_iord_bl_return_projection_i_fifodata,
    input wire [0:0] in_iord_bl_return_projection_i_fifovalid,
    output wire [0:0] out_iowr_bl_call_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_call_windowing_o_fifovalid,
    input wire [0:0] in_iord_bl_return_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_return_windowing_i_fifovalid,
    output wire [0:0] out_iord_bl_return_projection_o_fifoready,
    output wire [0:0] out_iord_bl_return_projection_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_return_streamer_i_fifoready,
    output wire [0:0] out_iord_bl_return_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_return_windowing_o_fifoalmost_full,
    output wire [0:0] out_iowr_bl_return_streamer_o_fifodata,
    output wire [0:0] out_iowr_bl_return_streamer_o_fifovalid,
    input wire [0:0] in_iord_bl_call_streamer_i_fifodata,
    input wire [0:0] in_iord_bl_call_streamer_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_iord_bl_return_projection_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_iord_bl_return_projection_o_fifoready;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_data;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_stall;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_valid;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_iord_bl_return_windowing_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_iord_bl_return_windowing_o_fifoready;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_data;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_stall;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_valid;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_iowr_bl_call_projection_o_fifodata;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_iowr_bl_call_projection_o_fifovalid;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_ack;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_stall;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_valid;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_iowr_bl_call_windowing_o_fifodata;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_iowr_bl_call_windowing_o_fifovalid;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_ack;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_stall;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_valid;
    wire [0:0] i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_iowr_bl_return_streamer_o_fifodata;
    wire [0:0] i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_iowr_bl_return_streamer_o_fifovalid;
    wire [0:0] i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_o_stall;
    wire [0:0] i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_o_valid;
    wire [0:0] i_or_streamer6_q;
    wire [0:0] streamer_B1_start_merge_reg_out_stall_out;
    wire [0:0] streamer_B1_start_merge_reg_out_valid_out;
    wire [0:0] bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q;
    wire [0:0] bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b;
    wire [0:0] bubble_join_i_iord_bl_return_projection_unnamed_streamer5_streamer4_q;
    wire [0:0] bubble_select_i_iord_bl_return_projection_unnamed_streamer5_streamer4_b;
    wire [0:0] bubble_join_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_q;
    wire [0:0] bubble_select_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_b;
    wire [0:0] bubble_join_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_q;
    wire [0:0] bubble_select_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_b;
    wire [0:0] bubble_join_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_q;
    wire [0:0] bubble_select_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_or0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V1;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireStall;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_StallValid;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_toReg0;
    reg [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg0;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed0;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_toReg1;
    reg [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg1;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed1;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_and0;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_or0;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_backStall;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_V0;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_V1;
    wire [0:0] SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_V0;
    wire [0:0] SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_V0;
    wire [0:0] SE_out_i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_V0;


    // SE_stall_entry(STALLENABLE,88)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = streamer_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // streamer_B1_start_merge_reg(BLACKBOX,50)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    streamer_B1_start_merge_reg thestreamer_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_streamer_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(streamer_B1_start_merge_reg_out_stall_out),
        .out_valid_out(streamer_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_streamer_B1_start_merge_reg(STALLENABLE,91)
    // Valid signal propagation
    assign SE_out_streamer_B1_start_merge_reg_V0 = SE_out_streamer_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_streamer_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall | ~ (SE_out_streamer_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_streamer_B1_start_merge_reg_wireValid = streamer_B1_start_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x(BLACKBOX,14)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    streamer_i_sfc_s_c0_in_wt_entry_s_c0_enter1_streamer0 thei_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x (
        .in_unnamed_streamer0_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall),
        .in_i_valid(SE_out_streamer_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid;

    // SE_out_i_iowr_bl_return_streamer_unnamed_streamer7_streamer7(STALLENABLE,86)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_wireValid = i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_o_valid;

    // bubble_join_i_iord_bl_return_projection_unnamed_streamer5_streamer4(BITJOIN,58)
    assign bubble_join_i_iord_bl_return_projection_unnamed_streamer5_streamer4_q = i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_data;

    // bubble_select_i_iord_bl_return_projection_unnamed_streamer5_streamer4(BITSELECT,59)
    assign bubble_select_i_iord_bl_return_projection_unnamed_streamer5_streamer4_b = $unsigned(bubble_join_i_iord_bl_return_projection_unnamed_streamer5_streamer4_q[0:0]);

    // bubble_join_i_iord_bl_return_windowing_unnamed_streamer6_streamer5(BITJOIN,62)
    assign bubble_join_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_q = i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_data;

    // bubble_select_i_iord_bl_return_windowing_unnamed_streamer6_streamer5(BITSELECT,63)
    assign bubble_select_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_b = $unsigned(bubble_join_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_q[0:0]);

    // i_or_streamer6(LOGICAL,28)@1
    assign i_or_streamer6_q = bubble_select_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_b | bubble_select_i_iord_bl_return_projection_unnamed_streamer5_streamer4_b;

    // i_iowr_bl_return_streamer_unnamed_streamer7_streamer7(BLACKBOX,27)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_return_streamer_o_fifodata@20000000
    // out out_iowr_bl_return_streamer_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_return_unnamed_streamer7_streamer0 thei_iowr_bl_return_streamer_unnamed_streamer7_streamer7 (
        .in_i_data(GND_q),
        .in_i_dependence(i_or_streamer6_q),
        .in_i_stall(SE_out_i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_backStall),
        .in_i_valid(SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_V0),
        .in_iowr_bl_return_streamer_i_fifoready(in_iowr_bl_return_streamer_i_fifoready),
        .out_iowr_bl_return_streamer_o_fifodata(i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_iowr_bl_return_streamer_o_fifodata),
        .out_iowr_bl_return_streamer_o_fifovalid(i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_iowr_bl_return_streamer_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_o_stall),
        .out_o_valid(i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2(STALLENABLE,82)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_V0 = SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_backStall = i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_stall | ~ (SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_wireValid = i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_valid;

    // bubble_join_i_iowr_bl_call_projection_unnamed_streamer3_streamer2(BITJOIN,66)
    assign bubble_join_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_q = i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_ack;

    // bubble_select_i_iowr_bl_call_projection_unnamed_streamer3_streamer2(BITSELECT,67)
    assign bubble_select_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_b = $unsigned(bubble_join_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_q[0:0]);

    // i_iord_bl_return_projection_unnamed_streamer5_streamer4(BLACKBOX,23)@1
    // in in_i_stall@20000000
    // out out_iord_bl_return_projection_o_fifoalmost_full@20000000
    // out out_iord_bl_return_projection_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_return_projection_unnamed_5_streamer0 thei_iord_bl_return_projection_unnamed_streamer5_streamer4 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_b),
        .in_i_stall(SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_V0),
        .in_iord_bl_return_projection_i_fifodata(in_iord_bl_return_projection_i_fifodata),
        .in_iord_bl_return_projection_i_fifovalid(in_iord_bl_return_projection_i_fifovalid),
        .out_iord_bl_return_projection_o_fifoalmost_full(i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_iord_bl_return_projection_o_fifoalmost_full),
        .out_iord_bl_return_projection_o_fifoready(i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_iord_bl_return_projection_o_fifoready),
        .out_o_data(i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_data),
        .out_o_stall(i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_stall),
        .out_o_valid(i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5(STALLENABLE,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg0 <= '0;
            SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg0 <= SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_toReg0;
            // Successor 1
            SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg1 <= SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed0 = (~ (i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_o_stall) & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid) | SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg0;
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed1 = (~ (in_stall_in) & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid) | SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_StallValid = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_backStall & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid;
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_toReg0 = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_StallValid & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed0;
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_toReg1 = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_StallValid & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_or0 = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed0;
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireStall = ~ (SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_consumed1 & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_or0);
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_backStall = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_V0 = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid & ~ (SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg0);
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_V1 = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid & ~ (SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_and0 = i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_valid;
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_wireValid = i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_o_valid & SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_and0;

    // bubble_join_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3(BITJOIN,69)
    assign bubble_join_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_q = i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_ack;

    // bubble_select_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3(BITSELECT,70)
    assign bubble_select_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_b = $unsigned(bubble_join_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_q[0:0]);

    // i_iord_bl_return_windowing_unnamed_streamer6_streamer5(BLACKBOX,24)@1
    // in in_i_stall@20000000
    // out out_iord_bl_return_windowing_o_fifoalmost_full@20000000
    // out out_iord_bl_return_windowing_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_return_windowing_unnamed_6_streamer0 thei_iord_bl_return_windowing_unnamed_streamer6_streamer5 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_b),
        .in_i_stall(SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_V0),
        .in_iord_bl_return_windowing_i_fifodata(in_iord_bl_return_windowing_i_fifodata),
        .in_iord_bl_return_windowing_i_fifovalid(in_iord_bl_return_windowing_i_fifovalid),
        .out_iord_bl_return_windowing_o_fifoalmost_full(i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_iord_bl_return_windowing_o_fifoalmost_full),
        .out_iord_bl_return_windowing_o_fifoready(i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_iord_bl_return_windowing_o_fifoready),
        .out_o_data(i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_data),
        .out_o_stall(i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_stall),
        .out_o_valid(i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_V0 = SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_backStall = i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_o_stall | ~ (SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_wireValid = i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_valid;

    // bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BITJOIN,55)
    assign bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data;

    // bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BITSELECT,56)
    assign bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b = $unsigned(bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q[0:0]);

    // i_iowr_bl_call_windowing_unnamed_streamer4_streamer3(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_call_windowing_o_fifodata@20000000
    // out out_iowr_bl_call_windowing_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_call_windowing_unnamed_4_streamer0 thei_iowr_bl_call_windowing_unnamed_streamer4_streamer3 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b),
        .in_i_stall(SE_out_i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V1),
        .in_iowr_bl_call_windowing_i_fifoready(in_iowr_bl_call_windowing_i_fifoready),
        .out_iowr_bl_call_windowing_o_fifodata(i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_iowr_bl_call_windowing_o_fifodata),
        .out_iowr_bl_call_windowing_o_fifovalid(i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_iowr_bl_call_windowing_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_ack),
        .out_o_stall(i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_stall),
        .out_o_valid(i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_iowr_bl_call_projection_unnamed_streamer3_streamer2(BLACKBOX,25)@1
    // in in_i_stall@20000000
    // out out_iowr_bl_call_projection_o_fifodata@20000000
    // out out_iowr_bl_call_projection_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_call_projection_unnamed_3_streamer0 thei_iowr_bl_call_projection_unnamed_streamer3_streamer2 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b),
        .in_i_stall(SE_out_i_iowr_bl_call_projection_unnamed_streamer3_streamer2_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0),
        .in_iowr_bl_call_projection_i_fifoready(in_iowr_bl_call_projection_i_fifoready),
        .out_iowr_bl_call_projection_o_fifodata(i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_iowr_bl_call_projection_o_fifodata),
        .out_iowr_bl_call_projection_o_fifovalid(i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_iowr_bl_call_projection_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_ack),
        .out_o_stall(i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_stall),
        .out_o_valid(i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(STALLENABLE,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0 <= '0;
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0 <= SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1 <= SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0 = (~ (i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_o_stall) & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid) | SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1 = (~ (i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_o_stall) & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid) | SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg1 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_or0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireStall = ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1 & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_or0);
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid & ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0);
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V1 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid & ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid;

    // i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BLACKBOX,22)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_streamer_o_fifoalmost_full@20000000
    // out out_iord_bl_call_streamer_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_call_unnamed_streamer2_streamer0 thei_iord_bl_call_streamer_unnamed_streamer2_streamer1 (
        .in_i_stall(SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0),
        .in_iord_bl_call_streamer_i_fifodata(in_iord_bl_call_streamer_i_fifodata),
        .in_iord_bl_call_streamer_i_fifovalid(in_iord_bl_call_streamer_i_fifovalid),
        .out_iord_bl_call_streamer_o_fifoalmost_full(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready),
        .out_o_data(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data),
        .out_o_stall(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall),
        .out_o_valid(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_iord_bl_call_streamer_o_fifoready = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready;
    assign out_iord_bl_call_streamer_o_fifoalmost_full = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,4)@1
    assign out_valid_out = SE_out_i_iord_bl_return_windowing_unnamed_streamer6_streamer5_V1;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_iowr_bl_call_projection_o_fifodata = i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_iowr_bl_call_projection_o_fifodata;
    assign out_iowr_bl_call_projection_o_fifovalid = i_iowr_bl_call_projection_unnamed_streamer3_streamer2_out_iowr_bl_call_projection_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_bl_call_windowing_o_fifodata = i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_iowr_bl_call_windowing_o_fifodata;
    assign out_iowr_bl_call_windowing_o_fifovalid = i_iowr_bl_call_windowing_unnamed_streamer4_streamer3_out_iowr_bl_call_windowing_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,10)
    assign out_iord_bl_return_projection_o_fifoready = i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_iord_bl_return_projection_o_fifoready;
    assign out_iord_bl_return_projection_o_fifoalmost_full = i_iord_bl_return_projection_unnamed_streamer5_streamer4_out_iord_bl_return_projection_o_fifoalmost_full;

    // dupName_4_ext_sig_sync_out_x(GPOUT,12)
    assign out_iord_bl_return_windowing_o_fifoready = i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_iord_bl_return_windowing_o_fifoready;
    assign out_iord_bl_return_windowing_o_fifoalmost_full = i_iord_bl_return_windowing_unnamed_streamer6_streamer5_out_iord_bl_return_windowing_o_fifoalmost_full;

    // dupName_5_ext_sig_sync_out_x(GPOUT,13)
    assign out_iowr_bl_return_streamer_o_fifodata = i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_iowr_bl_return_streamer_o_fifodata;
    assign out_iowr_bl_return_streamer_o_fifovalid = i_iowr_bl_return_streamer_unnamed_streamer7_streamer7_out_iowr_bl_return_streamer_o_fifovalid;

    // ext_sig_sync_out(GPOUT,21)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,51)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
