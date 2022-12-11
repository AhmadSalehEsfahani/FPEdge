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

// SystemVerilog created from bb_projection_B1_start_stall_region
// Created for function/kernel projection
// SystemVerilog created on Sun Dec 11 11:42:02 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module projection_bb_B1_start_stall_region (
    input wire [351:0] in_iord_bl_stream_in_tuple_i_fifodata,
    input wire [0:0] in_iord_bl_stream_in_tuple_i_fifovalid,
    output wire [0:0] out_iord_bl_call_projection_o_fifoready,
    output wire [0:0] out_iord_bl_call_projection_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_stream_out_tuple_i_fifoready,
    output wire [0:0] out_iord_bl_stream_in_tuple_o_fifoready,
    output wire [0:0] out_iord_bl_stream_in_tuple_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_return_projection_i_fifoready,
    output wire [351:0] out_iowr_bl_stream_out_tuple_o_fifodata,
    output wire [0:0] out_iowr_bl_stream_out_tuple_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_projection_o_fifodata,
    output wire [0:0] out_iowr_bl_return_projection_o_fifovalid,
    input wire [0:0] in_iord_bl_call_projection_i_fifodata,
    input wire [0:0] in_iord_bl_call_projection_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_10_tpl;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoalmost_full;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoready;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_valid;
    wire [351:0] i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifodata;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifovalid;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_pipeline_valid_out;
    wire [7:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_2_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_3_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_4_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_5_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_6_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_7_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_8_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_9_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_10_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_11_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_o_valid;
    wire [0:0] i_iord_bl_call_projection_unnamed_projection2_projection1_out_iord_bl_call_projection_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_projection_unnamed_projection2_projection1_out_iord_bl_call_projection_o_fifoready;
    wire [0:0] i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_data;
    wire [0:0] i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_stall;
    wire [0:0] i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_valid;
    wire [0:0] i_iowr_bl_return_projection_unnamed_projection4_projection7_out_iowr_bl_return_projection_o_fifodata;
    wire [0:0] i_iowr_bl_return_projection_unnamed_projection4_projection7_out_iowr_bl_return_projection_o_fifovalid;
    wire [0:0] i_iowr_bl_return_projection_unnamed_projection4_projection7_out_o_stall;
    wire [0:0] i_iowr_bl_return_projection_unnamed_projection4_projection7_out_o_valid;
    wire [0:0] projection_B1_start_merge_reg_out_stall_out;
    wire [0:0] projection_B1_start_merge_reg_out_valid_out;
    wire [303:0] bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_l;
    wire [0:0] bubble_join_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_b;
    wire [303:0] bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_f;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_l;
    wire [0:0] bubble_join_i_iord_bl_call_projection_unnamed_projection2_projection1_q;
    wire [0:0] bubble_select_i_iord_bl_call_projection_unnamed_projection2_projection1_b;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_V1;
    wire [0:0] SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_V0;
    wire [0:0] SE_out_i_iowr_bl_return_projection_unnamed_projection4_projection7_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_projection_unnamed_projection4_projection7_backStall;
    wire [0:0] SE_out_projection_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_projection_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_projection_B1_start_merge_reg_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,75)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = projection_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // projection_B1_start_merge_reg(BLACKBOX,39)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    projection_B1_start_merge_reg theprojection_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_projection_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(projection_B1_start_merge_reg_out_stall_out),
        .out_valid_out(projection_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_projection_B1_start_merge_reg(STALLENABLE,74)
    // Valid signal propagation
    assign SE_out_projection_B1_start_merge_reg_V0 = SE_out_projection_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_projection_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_o_stall | ~ (SE_out_projection_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_projection_B1_start_merge_reg_wireValid = projection_B1_start_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x(BLACKBOX,12)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0 thei_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x (
        .in_unnamed_projection0_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_backStall),
        .in_i_valid(SE_out_projection_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x(STALLENABLE,66)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_backStall = i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_o_valid;

    // SE_out_i_iowr_bl_return_projection_unnamed_projection4_projection7(STALLENABLE,72)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_projection_unnamed_projection4_projection7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_projection_unnamed_projection4_projection7_wireValid = i_iowr_bl_return_projection_unnamed_projection4_projection7_out_o_valid;

    // bubble_join_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x(BITJOIN,50)
    assign bubble_join_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_q = i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x(BITSELECT,51)
    assign bubble_select_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_q[0:0]);

    // i_iowr_bl_return_projection_unnamed_projection4_projection7(BLACKBOX,22)@7
    // in in_i_stall@20000000
    // out out_iowr_bl_return_projection_o_fifodata@20000000
    // out out_iowr_bl_return_projection_o_fifovalid@20000000
    // out out_o_stall@20000000
    projection_i_iowr_bl_return_unnamed_projection4_projection0 thei_iowr_bl_return_projection_unnamed_projection4_projection7 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_projection_unnamed_projection4_projection7_backStall),
        .in_i_valid(SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_V0),
        .in_iowr_bl_return_projection_i_fifoready(in_iowr_bl_return_projection_i_fifoready),
        .out_iowr_bl_return_projection_o_fifodata(i_iowr_bl_return_projection_unnamed_projection4_projection7_out_iowr_bl_return_projection_o_fifodata),
        .out_iowr_bl_return_projection_o_fifovalid(i_iowr_bl_return_projection_unnamed_projection4_projection7_out_iowr_bl_return_projection_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_projection_unnamed_projection4_projection7_out_o_stall),
        .out_o_valid(i_iowr_bl_return_projection_unnamed_projection4_projection7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x(STALLENABLE,64)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_V0 = SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_backStall = i_iowr_bl_return_projection_unnamed_projection4_projection7_out_o_stall | ~ (SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_wireValid = i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x(BITJOIN,54)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q = {i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_11_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_10_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_9_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_8_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_7_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_6_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x(BITSELECT,55)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[7:0]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[39:8]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[71:40]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[103:72]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[135:104]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[143:136]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[175:144]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[207:176]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[239:208]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[271:240]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_q[303:272]);

    // i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x(BLACKBOX,11)@7
    // in in_i_stall@20000000
    // out out_iowr_bl_stream_out_tuple_o_fifodata@20000000
    // out out_iowr_bl_stream_out_tuple_o_fifovalid@20000000
    // out out_o_stall@20000000
    projection_i_iowr_bl_stream_out_tuple_or_4_0 thei_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_f),
        .in_i_data_5_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_g),
        .in_i_data_6_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_h),
        .in_i_data_7_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_i),
        .in_i_data_8_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_j),
        .in_i_data_9_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_k),
        .in_i_data_10_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_l),
        .in_i_stall(SE_out_i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_V0),
        .in_iowr_bl_stream_out_tuple_i_fifoready(in_iowr_bl_stream_out_tuple_i_fifoready),
        .out_iowr_bl_stream_out_tuple_o_fifodata(i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifodata),
        .out_iowr_bl_stream_out_tuple_o_fifovalid(i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifovalid),
        .out_o_ack(i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x(STALLENABLE,68)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_backStall = i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x(BITJOIN,46)
    assign bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q = {i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_10_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_9_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_8_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_7_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_6_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_5_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_4_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_3_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_2_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_1_tpl, i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x(BITSELECT,47)
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[175:144]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_q[303:272]);

    // i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x(BLACKBOX,13)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@7
    // out out_c1_exit_1_tpl@7
    // out out_c1_exit_2_tpl@7
    // out out_c1_exit_3_tpl@7
    // out out_c1_exit_4_tpl@7
    // out out_c1_exit_5_tpl@7
    // out out_c1_exit_6_tpl@7
    // out out_c1_exit_7_tpl@7
    // out out_c1_exit_8_tpl@7
    // out out_c1_exit_9_tpl@7
    // out out_c1_exit_10_tpl@7
    // out out_c1_exit_11_tpl@7
    // out out_o_stall@20000000
    // out out_o_valid@7
    projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4 thei_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x (
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_b),
        .in_c1_eni1_2_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_c),
        .in_c1_eni1_3_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_d),
        .in_c1_eni1_4_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_e),
        .in_c1_eni1_5_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_f),
        .in_c1_eni1_6_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_g),
        .in_c1_eni1_7_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_h),
        .in_c1_eni1_8_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_i),
        .in_c1_eni1_9_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_j),
        .in_c1_eni1_10_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_k),
        .in_c1_eni1_11_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_l),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_V1),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_5_tpl),
        .out_c1_exit_6_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_6_tpl),
        .out_c1_exit_7_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_7_tpl),
        .out_c1_exit_8_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_8_tpl),
        .out_c1_exit_9_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_9_tpl),
        .out_c1_exit_10_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_10_tpl),
        .out_c1_exit_11_tpl(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_c1_exit_11_tpl),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x(STALLENABLE,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid) | SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4_aunroll_x_out_o_stall) & SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid) | SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_StallValid = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_backStall & SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_toReg0 = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_StallValid & SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_toReg1 = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_StallValid & SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_or0 = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_consumed1 & SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_or0);
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_backStall = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_V0 = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_V1 = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_wireValid = i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_call_projection_unnamed_projection2_projection1(BITJOIN,57)
    assign bubble_join_i_iord_bl_call_projection_unnamed_projection2_projection1_q = i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_data;

    // bubble_select_i_iord_bl_call_projection_unnamed_projection2_projection1(BITSELECT,58)
    assign bubble_select_i_iord_bl_call_projection_unnamed_projection2_projection1_b = $unsigned(bubble_join_i_iord_bl_call_projection_unnamed_projection2_projection1_q[0:0]);

    // i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_iord_bl_stream_in_tuple_o_fifoalmost_full@20000000
    // out out_iord_bl_stream_in_tuple_o_fifoready@20000000
    // out out_o_stall@20000000
    projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0 thei_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x (
        .in_i_dependence(bubble_select_i_iord_bl_call_projection_unnamed_projection2_projection1_b),
        .in_i_stall(SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_V0),
        .in_iord_bl_stream_in_tuple_i_fifodata(in_iord_bl_stream_in_tuple_i_fifodata),
        .in_iord_bl_stream_in_tuple_i_fifovalid(in_iord_bl_stream_in_tuple_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_data_10_tpl),
        .out_iord_bl_stream_in_tuple_o_fifoalmost_full(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoalmost_full),
        .out_iord_bl_stream_in_tuple_o_fifoready(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoready),
        .out_o_stall(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1(STALLENABLE,70)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_V0 = SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_backStall = i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_wireValid = i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_valid;

    // i_iord_bl_call_projection_unnamed_projection2_projection1(BLACKBOX,21)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_projection_o_fifoalmost_full@20000000
    // out out_iord_bl_call_projection_o_fifoready@20000000
    // out out_o_stall@20000000
    projection_i_iord_bl_call_unnamed_projection2_projection0 thei_iord_bl_call_projection_unnamed_projection2_projection1 (
        .in_i_stall(SE_out_i_iord_bl_call_projection_unnamed_projection2_projection1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_V0),
        .in_iord_bl_call_projection_i_fifodata(in_iord_bl_call_projection_i_fifodata),
        .in_iord_bl_call_projection_i_fifovalid(in_iord_bl_call_projection_i_fifovalid),
        .out_iord_bl_call_projection_o_fifoalmost_full(i_iord_bl_call_projection_unnamed_projection2_projection1_out_iord_bl_call_projection_o_fifoalmost_full),
        .out_iord_bl_call_projection_o_fifoready(i_iord_bl_call_projection_unnamed_projection2_projection1_out_iord_bl_call_projection_o_fifoready),
        .out_o_data(i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_data),
        .out_o_stall(i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_stall),
        .out_o_valid(i_iord_bl_call_projection_unnamed_projection2_projection1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_iord_bl_call_projection_o_fifoready = i_iord_bl_call_projection_unnamed_projection2_projection1_out_iord_bl_call_projection_o_fifoready;
    assign out_iord_bl_call_projection_o_fifoalmost_full = i_iord_bl_call_projection_unnamed_projection2_projection1_out_iord_bl_call_projection_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,4)@1
    assign out_valid_out = SE_out_i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_iord_bl_stream_in_tuple_o_fifoready = i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoready;
    assign out_iord_bl_stream_in_tuple_o_fifoalmost_full = i_iord_bl_stream_in_tuple_unnamed_projection3_projection2_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_bl_stream_out_tuple_o_fifodata = i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifodata;
    assign out_iowr_bl_stream_out_tuple_o_fifovalid = i_iowr_bl_stream_out_tuple_or_4_projection6_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,9)
    assign out_iowr_bl_return_projection_o_fifodata = i_iowr_bl_return_projection_unnamed_projection4_projection7_out_iowr_bl_return_projection_o_fifodata;
    assign out_iowr_bl_return_projection_o_fifovalid = i_iowr_bl_return_projection_unnamed_projection4_projection7_out_iowr_bl_return_projection_o_fifovalid;

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_projection1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,38)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_projections_c0_enter1_projection0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,43)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
