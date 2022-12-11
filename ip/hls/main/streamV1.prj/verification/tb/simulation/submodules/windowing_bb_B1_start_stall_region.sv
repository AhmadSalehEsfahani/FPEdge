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
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B1_start_stall_region (
    input wire [511:0] in_memdep_8_windowing_avm_readdata,
    input wire [0:0] in_memdep_8_windowing_avm_writeack,
    input wire [0:0] in_memdep_8_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_8_windowing_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoalmost_full,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi15_pop9,
    output wire [0:0] out_memdep_phi16_pop10,
    output wire [0:0] out_memdep_phi18_pop11,
    output wire [0:0] out_memdep_phi23_pop12,
    output wire [0:0] out_reduction_windowing_1,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_8_windowing_avm_address,
    output wire [0:0] out_memdep_8_windowing_avm_enable,
    output wire [0:0] out_memdep_8_windowing_avm_read,
    output wire [0:0] out_memdep_8_windowing_avm_write,
    output wire [511:0] out_memdep_8_windowing_avm_writedata,
    output wire [63:0] out_memdep_8_windowing_avm_byteenable,
    output wire [0:0] out_memdep_8_windowing_avm_burstcount,
    input wire [0:0] in_iord_bl_call_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_call_windowing_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out,
    input wire [0:0] in_feedback_in_10,
    input wire [0:0] in_feedback_in_11,
    input wire [0:0] in_feedback_in_12,
    input wire [0:0] in_feedback_in_8,
    input wire [0:0] in_feedback_in_9,
    output wire [0:0] out_feedback_stall_out_10,
    output wire [0:0] out_feedback_stall_out_11,
    output wire [0:0] out_feedback_stall_out_12,
    output wire [0:0] out_feedback_stall_out_8,
    output wire [0:0] out_feedback_stall_out_9,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [0:0] in_feedback_valid_in_9,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked51,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] windowing_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] windowing_B1_start_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] windowing_B1_start_merge_reg_aunroll_x_out_valid_out;
    wire [15:0] c_i16_undef20_q;
    wire [31:0] c_i32_021_q;
    wire [63:0] c_i64_462970041693686988816_q;
    wire [7:0] c_i8_018_q;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_stall;
    wire [0:0] i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_valid;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_valid_out;
    wire [0:0] i_reduction_windowing_0_windowing9_qi;
    reg [0:0] i_reduction_windowing_0_windowing9_q;
    wire [0:0] i_reduction_windowing_1_windowing10_qi;
    reg [0:0] i_reduction_windowing_1_windowing10_q;
    wire [0:0] i_reduction_windowing_2_windowing11_q;
    wire [0:0] i_reduction_windowing_3_windowing12_q;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [3:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    reg [0:0] redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_q;
    reg [1:0] coalesced_delay_0_0_q;
    reg [1:0] coalesced_delay_0_1_q;
    reg [1:0] coalesced_delay_0_2_q;
    reg [1:0] coalesced_delay_0_3_q;
    reg [1:0] coalesced_delay_0_4_q;
    reg [1:0] coalesced_delay_0_5_q;
    reg [1:0] coalesced_delay_0_6_q;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [3:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [3:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b;
    wire [0:0] bubble_join_windowing_B1_start_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_windowing_B1_start_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [3:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [3:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V5;
    wire [0:0] SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_windowing_B1_start_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_windowing_B1_start_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_V0;
    reg [0:0] SE_i_reduction_windowing_0_windowing9_R_v_0;
    wire [0:0] SE_i_reduction_windowing_0_windowing9_v_s_0;
    wire [0:0] SE_i_reduction_windowing_0_windowing9_s_tv_0;
    wire [0:0] SE_i_reduction_windowing_0_windowing9_backEN;
    wire [0:0] SE_i_reduction_windowing_0_windowing9_and0;
    wire [0:0] SE_i_reduction_windowing_0_windowing9_backStall;
    wire [0:0] SE_i_reduction_windowing_0_windowing9_V0;
    reg [0:0] SE_i_reduction_windowing_1_windowing10_R_v_0;
    reg [0:0] SE_i_reduction_windowing_1_windowing10_R_v_1;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_v_s_0;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_s_tv_0;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_s_tv_1;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_backEN;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_and0;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_or0;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_backStall;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_V0;
    wire [0:0] SE_i_reduction_windowing_1_windowing10_V1;
    wire [0:0] SE_i_reduction_windowing_2_windowing11_wireValid;
    wire [0:0] SE_i_reduction_windowing_2_windowing11_and0;
    wire [0:0] SE_i_reduction_windowing_2_windowing11_and1;
    wire [0:0] SE_i_reduction_windowing_2_windowing11_backStall;
    wire [0:0] SE_i_reduction_windowing_2_windowing11_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_join_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_0_and0;
    wire [0:0] SE_join_for_coalesced_delay_0_backStall;
    wire [0:0] SE_join_for_coalesced_delay_0_V0;
    wire [0:0] SE_join_for_coalesced_delay_1_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_1_and0;
    wire [0:0] SE_join_for_coalesced_delay_1_and1;
    wire [0:0] SE_join_for_coalesced_delay_1_and2;
    wire [0:0] SE_join_for_coalesced_delay_1_backStall;
    wire [0:0] SE_join_for_coalesced_delay_1_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_or0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V1;
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
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_0;
    wire [0:0] SE_coalesced_delay_0_6_v_s_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_6_backEN;
    wire [0:0] SE_coalesced_delay_0_6_backStall;
    wire [0:0] SE_coalesced_delay_0_6_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_i_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_data0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_D0;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [1:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [1:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [1:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_3_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_3_V;
    wire [1:0] SR_SE_coalesced_delay_0_3_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [1:0] SR_SE_coalesced_delay_0_4_D0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [1:0] SR_SE_coalesced_delay_0_5_D0;
    wire [0:0] SR_SE_coalesced_delay_0_6_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_6_r_valid;
    reg [1:0] SR_SE_coalesced_delay_0_6_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_6_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_6_V;
    wire [1:0] SR_SE_coalesced_delay_0_6_D0;


    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7(BITJOIN,109)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_q = i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7(BITSELECT,110)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6(BITJOIN,106)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_q = i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6(BITSELECT,107)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_q[0:0]);

    // i_reduction_windowing_1_windowing10(LOGICAL,41)@2 + 1
    assign i_reduction_windowing_1_windowing10_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_windowing_1_windowing10_delay ( .xin(i_reduction_windowing_1_windowing10_qi), .xout(i_reduction_windowing_1_windowing10_q), .ena(SE_i_reduction_windowing_1_windowing10_backEN[0]), .clk(clock), .aclr(resetn) );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5(BITJOIN,103)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_q = i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5(BITSELECT,104)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4(BITJOIN,115)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_q = i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4(BITSELECT,116)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_q[0:0]);

    // i_reduction_windowing_0_windowing9(LOGICAL,40)@2 + 1
    assign i_reduction_windowing_0_windowing9_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_windowing_0_windowing9_delay ( .xin(i_reduction_windowing_0_windowing9_qi), .xout(i_reduction_windowing_0_windowing9_q), .ena(SE_i_reduction_windowing_0_windowing9_backEN[0]), .clk(clock), .aclr(resetn) );

    // i_reduction_windowing_2_windowing11(LOGICAL,42)@3
    assign i_reduction_windowing_2_windowing11_q = i_reduction_windowing_0_windowing9_q | i_reduction_windowing_1_windowing10_q;

    // join_for_coalesced_delay_1(BITJOIN,81)
    assign join_for_coalesced_delay_1_q = {redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_q, bubble_select_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_b, bubble_select_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_b, bubble_select_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_b};

    // coalesced_delay_1_fifo(STALLFIFO,91)
    assign coalesced_delay_1_fifo_valid_in = SE_join_for_coalesced_delay_1_V0;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7(STALLENABLE,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed0 = (~ (SE_i_reduction_windowing_1_windowing10_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_wireValid = i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6(STALLENABLE,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed0 = (~ (SE_i_reduction_windowing_1_windowing10_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_wireValid = i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_valid_out;

    // SE_join_for_coalesced_delay_1(STALLENABLE,150)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_1_V0 = SE_join_for_coalesced_delay_1_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_1_backStall = coalesced_delay_1_fifo_stall_out | ~ (SE_join_for_coalesced_delay_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_1_and0 = SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V0;
    assign SE_join_for_coalesced_delay_1_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_V1 & SE_join_for_coalesced_delay_1_and0;
    assign SE_join_for_coalesced_delay_1_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_V1 & SE_join_for_coalesced_delay_1_and1;
    assign SE_join_for_coalesced_delay_1_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_V1 & SE_join_for_coalesced_delay_1_and2;

    // SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0(STALLENABLE,152)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V0 = SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V1 = SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0 = SE_join_for_coalesced_delay_1_backStall & SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_stall_out & SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_or0 = SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN = ~ (SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1 | SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0 = SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN & SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = ~ (SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= 1'b0;
            SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 & SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

            if (SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 & SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_s_tv_1;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_R_v_1 <= SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_v_s_0;
            end

        end
    end

    // redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0(REG,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_q <= $unsigned(SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_D0);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8(BLACKBOX,38)@2
    // in in_stall_in@20000000
    // out out_data_out@3
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@3
    windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop12_0 thei_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8 (
        .in_data_in(GND_q),
        .in_dir(redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_q),
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8(BITJOIN,112)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_q = i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8(BITSELECT,113)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_q[0:0]);

    // i_reduction_windowing_3_windowing12(LOGICAL,43)@3
    assign i_reduction_windowing_3_windowing12_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_b | i_reduction_windowing_2_windowing11_q;

    // c_i64_462970041693686988816(CONSTANT,12)
    assign c_i64_462970041693686988816_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // c_i32_021(CONSTANT,11)
    assign c_i32_021_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i16_undef20(CONSTANT,9)
    assign c_i16_undef20_q = $unsigned(16'b0000000000000000);

    // c_i8_018(CONSTANT,13)
    assign c_i8_018_q = $unsigned(8'b00000000);

    // i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x(BLACKBOX,6)@3
    // in in_i_stall@20000000
    // out out_memdep_8_windowing_avm_address@20000000
    // out out_memdep_8_windowing_avm_burstcount@20000000
    // out out_memdep_8_windowing_avm_byteenable@20000000
    // out out_memdep_8_windowing_avm_enable@20000000
    // out out_memdep_8_windowing_avm_read@20000000
    // out out_memdep_8_windowing_avm_write@20000000
    // out out_memdep_8_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_o_writeack@10
    windowing_i_llvm_fpga_mem_memdep_8_0 thei_llvm_fpga_mem_memdep_8_windowing13_aunroll_x (
        .in_i_writedata_0_tpl(c_i8_018_q),
        .in_i_writedata_1_tpl(c_i8_018_q),
        .in_i_writedata_2_tpl(c_i16_undef20_q),
        .in_i_writedata_3_tpl(c_i32_021_q),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988816_q),
        .in_i_dependence(i_reduction_windowing_3_windowing12_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_i_reduction_windowing_2_windowing11_V0),
        .in_memdep_8_windowing_avm_readdata(in_memdep_8_windowing_avm_readdata),
        .in_memdep_8_windowing_avm_readdatavalid(in_memdep_8_windowing_avm_readdatavalid),
        .in_memdep_8_windowing_avm_waitrequest(in_memdep_8_windowing_avm_waitrequest),
        .in_memdep_8_windowing_avm_writeack(in_memdep_8_windowing_avm_writeack),
        .out_memdep_8_windowing_avm_address(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_address),
        .out_memdep_8_windowing_avm_burstcount(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_burstcount),
        .out_memdep_8_windowing_avm_byteenable(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_byteenable),
        .out_memdep_8_windowing_avm_enable(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_enable),
        .out_memdep_8_windowing_avm_read(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_read),
        .out_memdep_8_windowing_avm_write(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_write),
        .out_memdep_8_windowing_avm_writedata(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,78)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_b, i_reduction_windowing_1_windowing10_q};

    // coalesced_delay_0_0(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // coalesced_delay_0_1(REG,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // coalesced_delay_0_2(REG,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // coalesced_delay_0_3(REG,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_coalesced_delay_0_3_D0);
        end
    end

    // coalesced_delay_0_4(REG,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // coalesced_delay_0_5(REG,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // SE_coalesced_delay_0_6(STALLENABLE,159)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_out_coalesced_delay_1_fifo_backStall & SE_coalesced_delay_0_6_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_6_backEN = ~ (SE_coalesced_delay_0_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_6_v_s_0 = SE_coalesced_delay_0_6_backEN & SR_SE_coalesced_delay_0_6_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_6_backStall = ~ (SE_coalesced_delay_0_6_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_R_v_0 & SE_coalesced_delay_0_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_6(STALLREG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_6_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_6_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_6_r_valid <= SE_coalesced_delay_0_6_backStall & (SR_SE_coalesced_delay_0_6_r_valid | SR_SE_coalesced_delay_0_6_i_valid);

            if (SR_SE_coalesced_delay_0_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_6_r_data0 <= $unsigned(coalesced_delay_0_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_6_i_valid = SE_coalesced_delay_0_5_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_6_backStall = SR_SE_coalesced_delay_0_6_r_valid | ~ (SR_SE_coalesced_delay_0_6_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_6_V = SR_SE_coalesced_delay_0_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_6_r_valid : SR_SE_coalesced_delay_0_6_i_valid;

    assign SR_SE_coalesced_delay_0_6_D0 = SR_SE_coalesced_delay_0_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_6_r_data0 : coalesced_delay_0_5_q;

    // SE_coalesced_delay_0_5(STALLENABLE,158)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SR_SE_coalesced_delay_0_6_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,157)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_3(STALLENABLE,156)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SR_SE_coalesced_delay_0_3_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_3(STALLREG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_3_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_3_r_valid <= SE_coalesced_delay_0_3_backStall & (SR_SE_coalesced_delay_0_3_r_valid | SR_SE_coalesced_delay_0_3_i_valid);

            if (SR_SE_coalesced_delay_0_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_3_r_data0 <= $unsigned(coalesced_delay_0_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_3_i_valid = SE_coalesced_delay_0_2_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_3_backStall = SR_SE_coalesced_delay_0_3_r_valid | ~ (SR_SE_coalesced_delay_0_3_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_3_V = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_valid : SR_SE_coalesced_delay_0_3_i_valid;

    assign SR_SE_coalesced_delay_0_3_D0 = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_data0 : coalesced_delay_0_2_q;

    // SE_coalesced_delay_0_2(STALLENABLE,155)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SR_SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // SE_coalesced_delay_0_1(STALLENABLE,154)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
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

    // SR_SE_coalesced_delay_0_1(STALLREG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 2'bxx;
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

    // SE_coalesced_delay_0_0(STALLENABLE,153)
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

    // SR_SE_coalesced_delay_0_0(STALLREG,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 2'bxx;
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
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_join_for_coalesced_delay_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_join_for_coalesced_delay_0(STALLENABLE,148)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_0_V0 = SE_join_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_0_backStall = SR_SE_coalesced_delay_0_0_backStall | ~ (SE_join_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_0_and0 = SE_i_reduction_windowing_1_windowing10_V1;
    assign SE_join_for_coalesced_delay_0_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_V1 & SE_join_for_coalesced_delay_0_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8(STALLENABLE,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed0 = (~ (SE_i_reduction_windowing_2_windowing11_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed1 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_wireValid = i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_valid_out;

    // SE_i_reduction_windowing_1_windowing10(STALLENABLE,143)
    // Valid signal propagation
    assign SE_i_reduction_windowing_1_windowing10_V0 = SE_i_reduction_windowing_1_windowing10_R_v_0;
    assign SE_i_reduction_windowing_1_windowing10_V1 = SE_i_reduction_windowing_1_windowing10_R_v_1;
    // Stall signal propagation
    assign SE_i_reduction_windowing_1_windowing10_s_tv_0 = SE_i_reduction_windowing_2_windowing11_backStall & SE_i_reduction_windowing_1_windowing10_R_v_0;
    assign SE_i_reduction_windowing_1_windowing10_s_tv_1 = SE_join_for_coalesced_delay_0_backStall & SE_i_reduction_windowing_1_windowing10_R_v_1;
    // Backward Enable generation
    assign SE_i_reduction_windowing_1_windowing10_or0 = SE_i_reduction_windowing_1_windowing10_s_tv_0;
    assign SE_i_reduction_windowing_1_windowing10_backEN = ~ (SE_i_reduction_windowing_1_windowing10_s_tv_1 | SE_i_reduction_windowing_1_windowing10_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_windowing_1_windowing10_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_V0 & SE_i_reduction_windowing_1_windowing10_backEN;
    assign SE_i_reduction_windowing_1_windowing10_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_V0 & SE_i_reduction_windowing_1_windowing10_and0;
    // Backward Stall generation
    assign SE_i_reduction_windowing_1_windowing10_backStall = ~ (SE_i_reduction_windowing_1_windowing10_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_windowing_1_windowing10_R_v_0 <= 1'b0;
            SE_i_reduction_windowing_1_windowing10_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_windowing_1_windowing10_backEN == 1'b0)
            begin
                SE_i_reduction_windowing_1_windowing10_R_v_0 <= SE_i_reduction_windowing_1_windowing10_R_v_0 & SE_i_reduction_windowing_1_windowing10_s_tv_0;
            end
            else
            begin
                SE_i_reduction_windowing_1_windowing10_R_v_0 <= SE_i_reduction_windowing_1_windowing10_v_s_0;
            end

            if (SE_i_reduction_windowing_1_windowing10_backEN == 1'b0)
            begin
                SE_i_reduction_windowing_1_windowing10_R_v_1 <= SE_i_reduction_windowing_1_windowing10_R_v_1 & SE_i_reduction_windowing_1_windowing10_s_tv_1;
            end
            else
            begin
                SE_i_reduction_windowing_1_windowing10_R_v_1 <= SE_i_reduction_windowing_1_windowing10_v_s_0;
            end

        end
    end

    // SE_i_reduction_windowing_2_windowing11(STALLENABLE,144)
    // Valid signal propagation
    assign SE_i_reduction_windowing_2_windowing11_V0 = SE_i_reduction_windowing_2_windowing11_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_windowing_2_windowing11_backStall = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_o_stall | ~ (SE_i_reduction_windowing_2_windowing11_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_windowing_2_windowing11_and0 = SE_i_reduction_windowing_0_windowing9_V0;
    assign SE_i_reduction_windowing_2_windowing11_and1 = SE_i_reduction_windowing_1_windowing10_V0 & SE_i_reduction_windowing_2_windowing11_and0;
    assign SE_i_reduction_windowing_2_windowing11_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_V0 & SE_i_reduction_windowing_2_windowing11_and1;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5(STALLENABLE,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed0 = (~ (SE_i_reduction_windowing_0_windowing9_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed1 = (~ (SE_join_for_coalesced_delay_1_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_wireValid = i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_valid_out;

    // SE_i_reduction_windowing_0_windowing9(STALLENABLE,142)
    // Valid signal propagation
    assign SE_i_reduction_windowing_0_windowing9_V0 = SE_i_reduction_windowing_0_windowing9_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_windowing_0_windowing9_s_tv_0 = SE_i_reduction_windowing_2_windowing11_backStall & SE_i_reduction_windowing_0_windowing9_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_windowing_0_windowing9_backEN = ~ (SE_i_reduction_windowing_0_windowing9_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_windowing_0_windowing9_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_V0 & SE_i_reduction_windowing_0_windowing9_backEN;
    assign SE_i_reduction_windowing_0_windowing9_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_V0 & SE_i_reduction_windowing_0_windowing9_and0;
    // Backward Stall generation
    assign SE_i_reduction_windowing_0_windowing9_backStall = ~ (SE_i_reduction_windowing_0_windowing9_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_windowing_0_windowing9_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_windowing_0_windowing9_backEN == 1'b0)
            begin
                SE_i_reduction_windowing_0_windowing9_R_v_0 <= SE_i_reduction_windowing_0_windowing9_R_v_0 & SE_i_reduction_windowing_0_windowing9_s_tv_0;
            end
            else
            begin
                SE_i_reduction_windowing_0_windowing9_R_v_0 <= SE_i_reduction_windowing_0_windowing9_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4(STALLENABLE,141)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_backStall = SE_i_reduction_windowing_0_windowing9_backStall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x(BITJOIN,94)
    assign bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_q = i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl;

    // bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x(BITSELECT,95)
    assign bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4(BLACKBOX,39)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    windowing_i_llvm_fpga_pop_i1_memdep_phi_pop8_0 thei_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7(BLACKBOX,37)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b),
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6(BLACKBOX,36)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop10_0 thei_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b),
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5(BLACKBOX,35)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop9_0 thei_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b),
        .in_feedback_in_9(in_feedback_in_9),
        .in_feedback_valid_in_9(in_feedback_valid_in_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0(STALLREG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid <= 1'b0;
            SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid <= SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall & (SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid | SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_i_valid);

            if (SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_data0 <= $unsigned(bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_i_valid = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V1;
    // Stall signal propagation
    assign SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall = SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid | ~ (SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_i_valid);

    // Valid
    assign SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_V = SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid : SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_i_valid;

    assign SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_D0 = SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_r_data0 : bubble_select_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_b;

    // SE_stall_entry(STALLENABLE,146)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = windowing_B1_start_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,118)
    assign bubble_join_stall_entry_q = in_forked51;

    // bubble_select_stall_entry(BITSELECT,119)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // windowing_B1_start_merge_reg_aunroll_x(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    windowing_B1_start_merge_reg thewindowing_B1_start_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_windowing_B1_start_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(windowing_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(windowing_B1_start_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(windowing_B1_start_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_windowing_B1_start_merge_reg_aunroll_x(STALLENABLE,129)
    // Valid signal propagation
    assign SE_out_windowing_B1_start_merge_reg_aunroll_x_V0 = SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_windowing_B1_start_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_o_stall | ~ (SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_windowing_B1_start_merge_reg_aunroll_x_wireValid = windowing_B1_start_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_windowing_B1_start_merge_reg_aunroll_x(BITJOIN,98)
    assign bubble_join_windowing_B1_start_merge_reg_aunroll_x_q = windowing_B1_start_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_windowing_B1_start_merge_reg_aunroll_x(BITSELECT,99)
    assign bubble_select_windowing_B1_start_merge_reg_aunroll_x_b = $unsigned(bubble_join_windowing_B1_start_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x(BLACKBOX,7)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    windowing_i_sfc_s_c0_in_wt_entry_s_c0_enter13_windowing1 thei_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_windowing_B1_start_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_backStall),
        .in_i_valid(SE_out_windowing_B1_start_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_c0_exit_2_tpl(i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out(i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out(i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x(STALLENABLE,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed0 = (~ (bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed1 = (~ (SR_SE_redist5_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_c0_exit_2_tpl_1_0_backStall) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed4 = (~ (i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed5 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_stall_out) & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_or4);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_o_valid;

    // bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg(STALLFIFO,208)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1(STALLENABLE,169)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_backStall = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_stall | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_wireValid = bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_reg_valid_out;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,161)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_coalesced_delay_0_6_V0 & SE_out_coalesced_delay_1_fifo_and2;

    // i_iord_bl_call_windowing_unnamed_windowing1_windowing3(BLACKBOX,34)@10
    // in in_i_stall@20000000
    // out out_iord_bl_call_windowing_o_fifoalmost_full@20000000
    // out out_iord_bl_call_windowing_o_fifoready@20000000
    // out out_o_stall@20000000
    windowing_i_iord_bl_call_unnamed_windowing1_windowing0 thei_iord_bl_call_windowing_unnamed_windowing1_windowing3 (
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_1_V0),
        .in_iord_bl_call_windowing_i_fifodata(in_iord_bl_call_windowing_i_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(in_iord_bl_call_windowing_i_fifovalid),
        .out_iord_bl_call_windowing_o_fifoalmost_full(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoalmost_full),
        .out_iord_bl_call_windowing_o_fifoready(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoready),
        .out_o_data(),
        .out_o_stall(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_stall),
        .out_o_valid(i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_iord_bl_call_windowing_o_fifoready = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoready;
    assign out_iord_bl_call_windowing_o_fifoalmost_full = i_iord_bl_call_windowing_unnamed_windowing1_windowing3_out_iord_bl_call_windowing_o_fifoalmost_full;

    // coalesced_delay_0_6(REG,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(2'b00);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(SR_SE_coalesced_delay_0_6_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,79)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[1:1]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,122)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,123)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[3:0]);

    // sel_for_coalesced_delay_1(BITSELECT,82)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[3:3]);

    // dupName_0_sync_out_x(GPOUT,4)@10
    assign out_c0_exe2 = sel_for_coalesced_delay_1_e;
    assign out_memdep_phi15_pop9 = sel_for_coalesced_delay_1_d;
    assign out_memdep_phi16_pop10 = sel_for_coalesced_delay_1_c;
    assign out_memdep_phi18_pop11 = sel_for_coalesced_delay_1_b;
    assign out_memdep_phi23_pop12 = sel_for_coalesced_delay_0_c;
    assign out_reduction_windowing_1 = sel_for_coalesced_delay_0_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_memdep_8_windowing_avm_address = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_address;
    assign out_memdep_8_windowing_avm_enable = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_enable;
    assign out_memdep_8_windowing_avm_read = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_read;
    assign out_memdep_8_windowing_avm_write = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_write;
    assign out_memdep_8_windowing_avm_writedata = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_writedata;
    assign out_memdep_8_windowing_avm_byteenable = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_byteenable;
    assign out_memdep_8_windowing_avm_burstcount = i_llvm_fpga_mem_memdep_8_windowing13_aunroll_x_out_memdep_8_windowing_avm_burstcount;

    // ext_sig_sync_out(GPOUT,18)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out = i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out = i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out;

    // feedback_stall_out_10_sync(GPOUT,24)
    assign out_feedback_stall_out_10 = i_llvm_fpga_pop_i1_memdep_phi16_pop10_windowing6_out_feedback_stall_out_10;

    // feedback_stall_out_11_sync(GPOUT,25)
    assign out_feedback_stall_out_11 = i_llvm_fpga_pop_i1_memdep_phi18_pop11_windowing7_out_feedback_stall_out_11;

    // feedback_stall_out_12_sync(GPOUT,26)
    assign out_feedback_stall_out_12 = i_llvm_fpga_pop_i1_memdep_phi23_pop12_windowing8_out_feedback_stall_out_12;

    // feedback_stall_out_8_sync(GPOUT,27)
    assign out_feedback_stall_out_8 = i_llvm_fpga_pop_i1_memdep_phi_pop8_windowing4_out_feedback_stall_out_8;

    // feedback_stall_out_9_sync(GPOUT,28)
    assign out_feedback_stall_out_9 = i_llvm_fpga_pop_i1_memdep_phi15_pop9_windowing5_out_feedback_stall_out_9;

    // pipeline_valid_out_sync(GPOUT,63)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_windowings_c0_enter13_windowing1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,68)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
