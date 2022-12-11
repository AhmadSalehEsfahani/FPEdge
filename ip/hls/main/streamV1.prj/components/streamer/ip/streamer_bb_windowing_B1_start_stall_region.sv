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

// SystemVerilog created from bb_windowing_B1_start_stall_region
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_windowing_B1_start_stall_region (
    input wire [351:0] in_iord_bl_s0_i_fifodata,
    input wire [0:0] in_iord_bl_s0_i_fifovalid,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_call_aggregation_i_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoready,
    output wire [0:0] out_iord_bl_s0_o_fifoalmost_full,
    input wire [351:0] in_iord_bl_return_aggregation_i_fifodata,
    input wire [0:0] in_iord_bl_return_aggregation_i_fifovalid,
    output wire [447:0] out_iowr_bl_call_aggregation_o_fifodata,
    output wire [0:0] out_iowr_bl_call_aggregation_o_fifovalid,
    input wire [0:0] in_iowr_bl_s_out_i_fifoready,
    output wire [0:0] out_iord_bl_return_aggregation_o_fifoready,
    output wire [0:0] out_iord_bl_return_aggregation_o_fifoalmost_full,
    input wire [0:0] in_iowr_bl_return_windowing_i_fifoready,
    output wire [351:0] out_iowr_bl_s_out_o_fifodata,
    output wire [0:0] out_iowr_bl_s_out_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifovalid,
    input wire [0:0] in_iord_bl_call_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_call_windowing_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out,
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
    wire [0:0] VCC_q;
    wire [7:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_10_tpl;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_iord_bl_return_aggregation_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_iord_bl_return_aggregation_o_fifoready;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_valid;
    wire [7:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_10_tpl;
    wire [0:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_iord_bl_s0_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_iord_bl_s0_o_fifoready;
    wire [0:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_valid;
    wire [447:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifodata;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifovalid;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_valid;
    wire [351:0] i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_iowr_bl_s_out_o_fifodata;
    wire [0:0] i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_iowr_bl_s_out_o_fifovalid;
    wire [0:0] i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_c0_exit_1_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_1_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_2_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_3_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_4_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_5_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_6_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_7_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_8_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_9_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_10_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_11_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_12_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_13_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_14_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_15_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_16_tpl;
    wire [0:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_o_valid;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_s;
    reg [7:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_s;
    reg [7:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_q;
    wire [0:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_s;
    reg [31:0] i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_q;
    wire [0:0] windowing_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] windowing_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] windowing_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_data;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_stall;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_valid;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_iowr_bl_return_windowing_o_fifovalid;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_o_stall;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_o_valid;
    wire [303:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [31:0] sel_for_coalesced_delay_0_i;
    wire [31:0] sel_for_coalesced_delay_0_j;
    wire [7:0] sel_for_coalesced_delay_0_k;
    wire [7:0] sel_for_coalesced_delay_0_l;
    reg [303:0] coalesced_delay_0_0_q;
    reg [303:0] coalesced_delay_0_1_q;
    wire [303:0] bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_l;
    wire [303:0] bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_l;
    wire [0:0] bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_b;
    wire [0:0] bubble_join_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_b;
    wire [1:0] bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_c;
    wire [370:0] bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_g;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q;
    wire [0:0] bubble_join_windowing_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_windowing_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_q;
    wire [0:0] bubble_select_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_V1;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_and0;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_V0;
    wire [0:0] SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_V1;
    wire [0:0] SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V2;
    wire [0:0] SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_windowing_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_windowing_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_backStall;
    wire [0:0] SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_V0;
    wire [0:0] SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_sel_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_sel_for_coalesced_delay_0_and0;
    wire [0:0] SE_sel_for_coalesced_delay_0_and1;
    wire [0:0] SE_sel_for_coalesced_delay_0_backStall;
    wire [0:0] SE_sel_for_coalesced_delay_0_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [303:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [303:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [303:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [303:0] SR_SE_coalesced_delay_0_1_D0;


    // bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x(BITJOIN,99)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q = {i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_16_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_15_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_14_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_13_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_12_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_11_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_10_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_9_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_8_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_7_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_6_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x(BITSELECT,100)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[8:1]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[40:9]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[72:41]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[104:73]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[136:105]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[144:137]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[176:145]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[208:177]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[240:209]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[272:241]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[304:273]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[336:305]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[368:337]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[369:369]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q[370:370]);

    // i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(BLACKBOX,16)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_call_aggregation_o_fifodata@20000000
    // out out_iowr_bl_call_aggregation_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_call_aggregation_unna0000indowing3_windowing0 thei_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_c),
        .in_i_data_1_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_d),
        .in_i_data_2_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_e),
        .in_i_data_3_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_f),
        .in_i_data_4_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_g),
        .in_i_data_5_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_h),
        .in_i_data_6_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_i),
        .in_i_data_7_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_j),
        .in_i_data_8_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_k),
        .in_i_data_9_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_l),
        .in_i_data_10_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_m),
        .in_i_data_11_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_n),
        .in_i_data_12_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_o),
        .in_i_data_13_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_p),
        .in_c1_exe3(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q),
        .in_i_stall(SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V2),
        .in_iowr_bl_call_aggregation_i_fifoready(in_iowr_bl_call_aggregation_i_fifoready),
        .out_iowr_bl_call_aggregation_o_fifodata(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifodata),
        .out_iowr_bl_call_aggregation_o_fifovalid(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing12(STALLENABLE,140)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_wireValid = i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_o_valid;

    // bubble_join_i_iowr_bl_s_out_or_6_windowing11_aunroll_x(BITJOIN,92)
    assign bubble_join_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_q = i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_s_out_or_6_windowing11_aunroll_x(BITSELECT,93)
    assign bubble_select_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_q[0:0]);

    // i_iowr_bl_return_windowing_unnamed_windowing5_windowing12(BLACKBOX,39)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_return_windowing_o_fifodata@20000000
    // out out_iowr_bl_return_windowing_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_return_windowing_unna0000indowing5_windowing0 thei_iowr_bl_return_windowing_unnamed_windowing5_windowing12 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_backStall),
        .in_i_valid(SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_V0),
        .in_iowr_bl_return_windowing_i_fifoready(in_iowr_bl_return_windowing_i_fifoready),
        .out_iowr_bl_return_windowing_o_fifodata(i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_iowr_bl_return_windowing_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_o_stall),
        .out_o_valid(i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x(STALLENABLE,119)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_V0 = SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_backStall = i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_o_stall | ~ (SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_wireValid = i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_valid;

    // bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(BITJOIN,89)
    assign bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_q = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(BITSELECT,90)
    assign bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_q[0:0]);

    // i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x(BLACKBOX,14)@3
    // in in_i_stall@20000000
    // out out_iord_bl_return_aggregation_o_fifoalmost_full@20000000
    // out out_iord_bl_return_aggregation_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_return_aggregation_un0000indowing4_windowing0 thei_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x (
        .in_c1_exe3(bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_q),
        .in_i_dependence(bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_b),
        .in_i_stall(SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_V0),
        .in_iord_bl_return_aggregation_i_fifodata(in_iord_bl_return_aggregation_i_fifodata),
        .in_iord_bl_return_aggregation_i_fifovalid(in_iord_bl_return_aggregation_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_10_tpl),
        .out_iord_bl_return_aggregation_o_fifoalmost_full(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_iord_bl_return_aggregation_o_fifoalmost_full),
        .out_iord_bl_return_aggregation_o_fifoready(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_iord_bl_return_aggregation_o_fifoready),
        .out_o_stall(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x(BITJOIN,82)
    assign bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q = {i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_10_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_9_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_8_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_7_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_6_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_5_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_4_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_3_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_2_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_1_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x(BITSELECT,83)
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[175:144]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_q[303:272]);

    // join_for_coalesced_delay_0(BITJOIN,77)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_g, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_b, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_l, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_k, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_j, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_i, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_h, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_f, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_e, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_d, bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_c};

    // SR_SE_coalesced_delay_0_0(STALLREG,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 304'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_V1;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // coalesced_delay_0_0(REG,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(304'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // SE_coalesced_delay_0_0(STALLENABLE,145)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_1(STALLREG,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 304'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // coalesced_delay_0_1(REG,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(304'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,78)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_1_q[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_1_q[63:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_1_q[95:64]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_1_q[127:96]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_1_q[159:128]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_1_q[191:160]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_1_q[223:192]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_1_q[255:224]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_1_q[287:256]);
    assign sel_for_coalesced_delay_0_k = $unsigned(coalesced_delay_0_1_q[295:288]);
    assign sel_for_coalesced_delay_0_l = $unsigned(coalesced_delay_0_1_q[303:296]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x(MUX,30)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_s or sel_for_coalesced_delay_0_j or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_l)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_q = sel_for_coalesced_delay_0_j;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_l;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x(MUX,29)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_s or sel_for_coalesced_delay_0_i or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_k)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_q = sel_for_coalesced_delay_0_i;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_k;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x(MUX,28)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_s or sel_for_coalesced_delay_0_h or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_j)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_q = sel_for_coalesced_delay_0_h;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_j;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x(MUX,27)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_s or sel_for_coalesced_delay_0_g or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_i)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_q = sel_for_coalesced_delay_0_g;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_i;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x(MUX,26)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_s or sel_for_coalesced_delay_0_f or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_h)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_q = sel_for_coalesced_delay_0_f;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_h;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x(MUX,25)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_s or sel_for_coalesced_delay_0_l or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_g)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_q = sel_for_coalesced_delay_0_l;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_g;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_q = 8'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x(MUX,24)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_s or sel_for_coalesced_delay_0_e or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_f)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_q = sel_for_coalesced_delay_0_e;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_f;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x(MUX,23)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_s or sel_for_coalesced_delay_0_d or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_e)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_q = sel_for_coalesced_delay_0_d;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_e;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x(MUX,22)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_s or sel_for_coalesced_delay_0_c or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_d)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_q = sel_for_coalesced_delay_0_c;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_d;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x(MUX,21)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_s or sel_for_coalesced_delay_0_b or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_c)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_q = sel_for_coalesced_delay_0_b;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_c;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_q = 32'b0;
        endcase
    end

    // i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x(MUX,20)@3
    assign i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_s = bubble_select_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_b;
    always @(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_s or sel_for_coalesced_delay_0_k or bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_b)
    begin
        unique case (i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_s)
            1'b0 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_q = sel_for_coalesced_delay_0_k;
            1'b1 : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_q = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_b;
            default : i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_q = 8'b0;
        endcase
    end

    // i_iowr_bl_s_out_or_6_windowing11_aunroll_x(BLACKBOX,17)@3
    // in in_i_stall@20000000
    // out out_iowr_bl_s_out_o_fifodata@20000000
    // out out_iowr_bl_s_out_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_s_out_or_6_windowing0 thei_iowr_bl_s_out_or_6_windowing11_aunroll_x (
        .in_i_data_0_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_0_x_q),
        .in_i_data_1_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_1_x_q),
        .in_i_data_2_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_2_x_q),
        .in_i_data_3_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_3_x_q),
        .in_i_data_4_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_4_x_q),
        .in_i_data_5_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_5_x_q),
        .in_i_data_6_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_6_x_q),
        .in_i_data_7_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_7_x_q),
        .in_i_data_8_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_8_x_q),
        .in_i_data_9_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_9_x_q),
        .in_i_data_10_tpl(i_writedata56_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing10_10_x_q),
        .in_i_stall(SE_out_i_iowr_bl_s_out_or_6_windowing11_aunroll_x_backStall),
        .in_i_valid(SE_sel_for_coalesced_delay_0_V0),
        .in_iowr_bl_s_out_i_fifoready(in_iowr_bl_s_out_i_fifoready),
        .out_iowr_bl_s_out_o_fifodata(i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_iowr_bl_s_out_o_fifodata),
        .out_iowr_bl_s_out_o_fifovalid(i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_iowr_bl_s_out_o_fifovalid),
        .out_o_ack(i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x(STALLENABLE,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg0 <= SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg1 <= SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid) | SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed1 = (~ (SE_sel_for_coalesced_delay_0_backStall) & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid) | SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_StallValid = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_backStall & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_toReg0 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_StallValid & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_toReg1 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_StallValid & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_or0 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_consumed1 & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_or0);
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_backStall = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_V0 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_V1 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_wireValid = i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_1(STALLENABLE,146)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SE_sel_for_coalesced_delay_0_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SE_sel_for_coalesced_delay_0(STALLENABLE,144)
    // Valid signal propagation
    assign SE_sel_for_coalesced_delay_0_V0 = SE_sel_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_sel_for_coalesced_delay_0_backStall = i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_o_stall | ~ (SE_sel_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_sel_for_coalesced_delay_0_and0 = SE_coalesced_delay_0_1_V0;
    assign SE_sel_for_coalesced_delay_0_and1 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_V1 & SE_sel_for_coalesced_delay_0_and0;
    assign SE_sel_for_coalesced_delay_0_wireValid = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V1 & SE_sel_for_coalesced_delay_0_and1;

    // SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(STALLENABLE,117)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_V0 = SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall = i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_o_stall | ~ (SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_and0 = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_valid;
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V0 & SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_and0;

    // SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x(STALLENABLE,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed0 = (~ (SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed1 = (~ (SE_sel_for_coalesced_delay_0_backStall) & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed2 = (~ (i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_toReg2 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_or1 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_or0;
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_consumed2 & SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_or1);
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V2 = SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x(BITJOIN,95)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_q = {i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_c0_exit_2_tpl, i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_c0_exit_1_tpl};

    // bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x(BITSELECT,96)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_q[1:1]);

    // bubble_join_i_iord_bl_call_windowing_unnamed_windowing1_windowing3(BITJOIN,106)
    assign bubble_join_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_q = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_data;

    // bubble_select_i_iord_bl_call_windowing_unnamed_windowing1_windowing3(BITSELECT,107)
    assign bubble_select_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_b = $unsigned(bubble_join_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_q[0:0]);

    // i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x(BLACKBOX,15)@1
    // in in_i_stall@20000000
    // out out_iord_bl_s0_o_fifoalmost_full@20000000
    // out out_iord_bl_s0_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_s0_unnamed_windowing2_windowing0 thei_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x (
        .in_i_dependence(bubble_select_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_b),
        .in_i_stall(SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_V0),
        .in_iord_bl_s0_i_fifodata(in_iord_bl_s0_i_fifodata),
        .in_iord_bl_s0_i_fifovalid(in_iord_bl_s0_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_10_tpl),
        .out_iord_bl_s0_o_fifoalmost_full(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_iord_bl_s0_o_fifoalmost_full),
        .out_iord_bl_s0_o_fifoready(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_iord_bl_s0_o_fifoready),
        .out_o_stall(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x(BITJOIN,86)
    assign bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q = {i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_10_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_9_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_8_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_7_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_6_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_5_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_4_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_3_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_2_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_1_tpl, i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x(BITSELECT,87)
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[175:144]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_q[303:272]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x(BLACKBOX,19)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@3
    // out out_c1_exit_1_tpl@3
    // out out_c1_exit_2_tpl@3
    // out out_c1_exit_3_tpl@3
    // out out_c1_exit_4_tpl@3
    // out out_c1_exit_5_tpl@3
    // out out_c1_exit_6_tpl@3
    // out out_c1_exit_7_tpl@3
    // out out_c1_exit_8_tpl@3
    // out out_c1_exit_9_tpl@3
    // out out_c1_exit_10_tpl@3
    // out out_c1_exit_11_tpl@3
    // out out_c1_exit_12_tpl@3
    // out out_c1_exit_13_tpl@3
    // out out_c1_exit_14_tpl@3
    // out out_c1_exit_15_tpl@3
    // out out_c1_exit_16_tpl@3
    // out out_o_stall@20000000
    // out out_o_valid@3
    streamer_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6 thei_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x (
        .in_c1_eni2_0_tpl(GND_q),
        .in_c1_eni2_1_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_b),
        .in_c1_eni2_2_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_c),
        .in_c1_eni2_3_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_d),
        .in_c1_eni2_4_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_e),
        .in_c1_eni2_5_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_f),
        .in_c1_eni2_6_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_g),
        .in_c1_eni2_7_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_h),
        .in_c1_eni2_8_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_i),
        .in_c1_eni2_9_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_j),
        .in_c1_eni2_10_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_k),
        .in_c1_eni2_11_tpl(bubble_select_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_l),
        .in_c1_eni2_12_tpl(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_c),
        .in_c0_exe1(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_b),
        .in_c0_exe2(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V0),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_5_tpl),
        .out_c1_exit_6_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_6_tpl),
        .out_c1_exit_7_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_7_tpl),
        .out_c1_exit_8_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_8_tpl),
        .out_c1_exit_9_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_9_tpl),
        .out_c1_exit_10_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_10_tpl),
        .out_c1_exit_11_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_11_tpl),
        .out_c1_exit_12_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_12_tpl),
        .out_c1_exit_13_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_13_tpl),
        .out_c1_exit_14_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_14_tpl),
        .out_c1_exit_15_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_15_tpl),
        .out_c1_exit_16_tpl(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_c1_exit_16_tpl),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x(STALLENABLE,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg0 <= SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg1 <= SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed0 = (~ (SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall) & SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid) | SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed1 = (~ (SR_SE_coalesced_delay_0_0_backStall) & SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid) | SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_StallValid = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_backStall & SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_toReg0 = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_StallValid & SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_toReg1 = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_StallValid & SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_or0 = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_consumed1 & SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_or0);
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_backStall = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_V0 = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_V1 = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_wireValid = i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_valid;

    // SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x(STALLENABLE,122)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_V0 = SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall = i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_and0 = SE_out_i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_V0;
    assign SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_wireValid = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_V1 & SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_and0;

    // SE_stall_entry(STALLENABLE,141)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = windowing_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,109)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,110)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // windowing_B1_start_merge_reg_aunroll_x(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    streamer_windowing_B1_start_merge_reg thewindowing_B1_start_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_windowing_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(windowing_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(windowing_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(windowing_B1_start_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_windowing_B1_start_merge_reg_aunroll_x(STALLENABLE,136)
    // Valid signal propagation
    assign SE_out_windowing_B1_start_merge_reg_aunroll_x_V0 = SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_windowing_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_o_stall | ~ (SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid = windowing_B1_start_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_windowing_B1_start_merge_reg_aunroll_x(BITJOIN,102)
    assign bubble_join_windowing_B1_start_merge_reg_aunroll_x_q = windowing_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_windowing_B1_start_merge_reg_aunroll_x(BITSELECT,103)
    assign bubble_select_windowing_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_windowing_B1_start_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    streamer_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1 thei_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_windowing_B1_start_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_backStall),
        .in_i_valid(SE_out_windowing_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_c0_exit_1_tpl),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_c0_exit_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x(STALLENABLE,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed0 = (~ (i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_stall) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed1 = (~ (SE_in_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_o_valid;

    // SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3(STALLENABLE,138)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_V0 = SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_backStall = i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_wireValid = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_valid;

    // i_iord_bl_call_windowing_unnamed_windowing1_windowing3(BLACKBOX,38)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_windowing_o_fifoalmost_full@20000000
    // out out_iord_bl_call_windowing_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_call_windowing_unnamed_windowing1_windowing0 thei_iord_bl_call_windowing_unnamed_windowing1_windowing3 (
        .in_i_stall(SE_out_i_iord_bl_call_windowing_unnamed_windowing1_windowing3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_V0),
        .in_iord_bl_call_windowing_i_fifodata(in_iord_bl_call_windowing_i_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(in_iord_bl_call_windowing_i_fifovalid),
        .out_iord_bl_call_windowing_o_fifoalmost_full(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoalmost_full),
        .out_iord_bl_call_windowing_o_fifoready(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoready),
        .out_o_data(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_data),
        .out_o_stall(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_stall),
        .out_o_valid(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_iord_bl_call_windowing_o_fifoready = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoready;
    assign out_iord_bl_call_windowing_o_fifoalmost_full = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,4)@3
    assign out_valid_out = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_iord_bl_s0_o_fifoready = i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_iord_bl_s0_o_fifoready;
    assign out_iord_bl_s0_o_fifoalmost_full = i_iord_bl_s0_unnamed_windowing2_windowing4_aunroll_x_out_iord_bl_s0_o_fifoalmost_full;

    // dupName_2_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_bl_call_aggregation_o_fifodata = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifodata;
    assign out_iowr_bl_call_aggregation_o_fifovalid = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,10)
    assign out_iord_bl_return_aggregation_o_fifoready = i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_iord_bl_return_aggregation_o_fifoready;
    assign out_iord_bl_return_aggregation_o_fifoalmost_full = i_iord_bl_return_aggregation_unnamed_windowing4_windowing9_aunroll_x_out_iord_bl_return_aggregation_o_fifoalmost_full;

    // dupName_4_ext_sig_sync_out_x(GPOUT,12)
    assign out_iowr_bl_s_out_o_fifodata = i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_iowr_bl_s_out_o_fifodata;
    assign out_iowr_bl_s_out_o_fifovalid = i_iowr_bl_s_out_or_6_windowing11_aunroll_x_out_iowr_bl_s_out_o_fifovalid;

    // dupName_5_ext_sig_sync_out_x(GPOUT,13)
    assign out_iowr_bl_return_windowing_o_fifodata = i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_iowr_bl_return_windowing_o_fifodata;
    assign out_iowr_bl_return_windowing_o_fifovalid = i_iowr_bl_return_windowing_unnamed_windowing5_windowing12_out_iowr_bl_return_windowing_o_fifovalid;

    // ext_sig_sync_out(GPOUT,37)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,59)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,63)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
