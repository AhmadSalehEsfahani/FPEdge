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

// SystemVerilog created from bb_aggregation_B1_start_stall_region
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_aggregation_B1_start_stall_region (
    input wire [0:0] in_iowr_bl_return_aggregation_i_fifoready,
    output wire [0:0] out_iord_bl_call_aggregation_o_fifoready,
    output wire [0:0] out_iord_bl_call_aggregation_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    output wire [351:0] out_iowr_bl_return_aggregation_o_fifodata,
    output wire [0:0] out_iowr_bl_return_aggregation_o_fifovalid,
    input wire [447:0] in_iord_bl_call_aggregation_i_fifodata,
    input wire [0:0] in_iord_bl_call_aggregation_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] aggregation_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] aggregation_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] aggregation_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [7:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_10_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_11_tpl;
    wire [31:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_12_tpl;
    wire [0:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_13_tpl;
    wire [0:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_iord_bl_call_aggregation_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_iord_bl_call_aggregation_o_fifoready;
    wire [0:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_valid;
    wire [351:0] i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_iowr_bl_return_aggregation_o_fifodata;
    wire [0:0] i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_iowr_bl_return_aggregation_o_fifovalid;
    wire [0:0] i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_pipeline_valid_out;
    wire [7:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_2_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_3_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_4_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_5_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_6_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_7_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_8_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_9_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_10_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_11_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_o_valid;
    wire [0:0] bubble_join_aggregation_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_aggregation_B1_start_merge_reg_aunroll_x_b;
    wire [368:0] bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_l;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_m;
    wire [31:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_n;
    wire [0:0] bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_o;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_c;
    wire [303:0] bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_f;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_l;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_aggregation_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_aggregation_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_aggregation_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_and0;
    wire [0:0] SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_V0;
    wire [0:0] SE_out_i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,62)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = aggregation_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,49)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,50)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // aggregation_B1_start_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    streamer_aggregation_B1_start_merge_reg theaggregation_B1_start_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_aggregation_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(aggregation_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(aggregation_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(aggregation_B1_start_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_aggregation_B1_start_merge_reg_aunroll_x(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_aggregation_B1_start_merge_reg_aunroll_x_V0 = SE_out_aggregation_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_aggregation_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_o_stall | ~ (SE_out_aggregation_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_aggregation_B1_start_merge_reg_aunroll_x_wireValid = aggregation_B1_start_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_aggregation_B1_start_merge_reg_aunroll_x(BITJOIN,34)
    assign bubble_join_aggregation_B1_start_merge_reg_aunroll_x_q = aggregation_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_aggregation_B1_start_merge_reg_aunroll_x(BITSELECT,35)
    assign bubble_select_aggregation_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_aggregation_B1_start_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_c0_exit_0_tpl@25
    // out out_c0_exit_1_tpl@25
    // out out_c0_exit_2_tpl@25
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@25
    // out out_pipeline_valid_out@20000000
    streamer_i_sfc_s_c0_in_wt_entry_aggregat0000_enter1_aggregation1 thei_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_aggregation_B1_start_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_backStall),
        .in_i_valid(SE_out_aggregation_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_c0_exit_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x(STALLENABLE,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed0 = (~ (i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed1 = (~ (SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_o_valid;

    // SE_out_i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x(STALLENABLE,57)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_wireValid = i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x(BITJOIN,45)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q = {i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_11_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_10_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_9_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_8_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_7_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_6_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x(BITSELECT,46)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[7:0]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[39:8]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[71:40]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[103:72]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[135:104]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[143:136]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[175:144]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[207:176]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[239:208]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[271:240]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_q[303:272]);

    // i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x(BLACKBOX,8)@78
    // in in_i_stall@20000000
    // out out_iowr_bl_return_aggregation_o_fifodata@20000000
    // out out_iowr_bl_return_aggregation_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_return_aggregation_un0000gation2_aggregation0 thei_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_f),
        .in_i_data_5_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_g),
        .in_i_data_6_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_h),
        .in_i_data_7_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_i),
        .in_i_data_8_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_j),
        .in_i_data_9_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_k),
        .in_i_data_10_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_l),
        .in_i_stall(SE_out_i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_V1),
        .in_iowr_bl_return_aggregation_i_fifoready(in_iowr_bl_return_aggregation_i_fifoready),
        .out_iowr_bl_return_aggregation_o_fifodata(i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_iowr_bl_return_aggregation_o_fifodata),
        .out_iowr_bl_return_aggregation_o_fifovalid(i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_iowr_bl_return_aggregation_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x(STALLENABLE,61)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed1 = (~ (i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x(BITJOIN,41)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x(BITSELECT,42)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_q[1:1]);

    // bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x(BITJOIN,38)
    assign bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q = {i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_13_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_12_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_11_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_10_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_9_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_8_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_7_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_6_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_5_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x(BITSELECT,39)
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[175:144]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[303:272]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_m = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[335:304]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_n = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[367:336]);
    assign bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_o = $unsigned(bubble_join_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_q[368:368]);

    // i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x(BLACKBOX,10)@25
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@78
    // out out_c1_exit_1_tpl@78
    // out out_c1_exit_2_tpl@78
    // out out_c1_exit_3_tpl@78
    // out out_c1_exit_4_tpl@78
    // out out_c1_exit_5_tpl@78
    // out out_c1_exit_6_tpl@78
    // out out_c1_exit_7_tpl@78
    // out out_c1_exit_8_tpl@78
    // out out_c1_exit_9_tpl@78
    // out out_c1_exit_10_tpl@78
    // out out_c1_exit_11_tpl@78
    // out out_o_stall@20000000
    // out out_o_valid@78
    streamer_i_sfc_s_c1_in_wt_entry_aggregat00001_enter_aggregation5 thei_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x (
        .in_c1_eni2_0_tpl(GND_q),
        .in_c1_eni2_1_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_b),
        .in_c1_eni2_2_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_c),
        .in_c1_eni2_3_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_d),
        .in_c1_eni2_4_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_e),
        .in_c1_eni2_5_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_f),
        .in_c1_eni2_6_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_g),
        .in_c1_eni2_7_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_h),
        .in_c1_eni2_8_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_i),
        .in_c1_eni2_9_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_j),
        .in_c1_eni2_10_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_k),
        .in_c1_eni2_11_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_l),
        .in_c1_eni2_12_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_m),
        .in_c1_eni2_13_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_n),
        .in_c1_eni2_14_tpl(bubble_select_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_o),
        .in_c1_eni2_15_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_c),
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_V0),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_5_tpl),
        .out_c1_exit_6_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_6_tpl),
        .out_c1_exit_7_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_7_tpl),
        .out_c1_exit_8_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_8_tpl),
        .out_c1_exit_9_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_9_tpl),
        .out_c1_exit_10_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_10_tpl),
        .out_c1_exit_11_tpl(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_c1_exit_11_tpl),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_V0 = SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_and0 = i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_valid;
    assign SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_wireValid = SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_V1 & SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_and0;

    // i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x(BLACKBOX,7)@25
    // in in_i_stall@20000000
    // out out_iord_bl_call_aggregation_o_fifoalmost_full@20000000
    // out out_iord_bl_call_aggregation_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_call_aggregation_unna0000gation1_aggregation0 thei_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_V0),
        .in_iord_bl_call_aggregation_i_fifodata(in_iord_bl_call_aggregation_i_fifodata),
        .in_iord_bl_call_aggregation_i_fifovalid(in_iord_bl_call_aggregation_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_data_13_tpl),
        .out_iord_bl_call_aggregation_o_fifoalmost_full(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_iord_bl_call_aggregation_o_fifoalmost_full),
        .out_iord_bl_call_aggregation_o_fifoready(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_iord_bl_call_aggregation_o_fifoready),
        .out_o_stall(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_iord_bl_call_aggregation_o_fifoready = i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_iord_bl_call_aggregation_o_fifoready;
    assign out_iord_bl_call_aggregation_o_fifoalmost_full = i_iord_bl_call_aggregation_unnamed_aggregation1_aggregation3_aunroll_x_out_iord_bl_call_aggregation_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,5)@78
    assign out_valid_out = SE_out_i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_iowr_bl_return_aggregation_o_fifodata = i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_iowr_bl_return_aggregation_o_fifodata;
    assign out_iowr_bl_return_aggregation_o_fifovalid = i_iowr_bl_return_aggregation_unnamed_aggregation2_aggregation7_aunroll_x_out_iowr_bl_return_aggregation_o_fifovalid;

    // ext_sig_sync_out(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_aggregation2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_aggregations_c0_enter1_aggregation1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,31)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
