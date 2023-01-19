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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 21:02:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_pr0000c1_enter_projection0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [7:0] out_c1_exi1_1_tpl,
    output wire [31:0] out_c1_exi1_2_tpl,
    output wire [31:0] out_c1_exi1_3_tpl,
    output wire [31:0] out_c1_exi1_4_tpl,
    output wire [31:0] out_c1_exi1_5_tpl,
    output wire [7:0] out_c1_exi1_6_tpl,
    output wire [7:0] out_c1_exi1_7_tpl,
    output wire [7:0] out_c1_exi1_8_tpl,
    output wire [7:0] out_c1_exi1_9_tpl,
    output wire [7:0] out_c1_exi1_10_tpl,
    output wire [31:0] out_c1_exi1_11_tpl,
    output wire [31:0] out_c1_exi1_12_tpl,
    output wire [31:0] out_c1_exi1_13_tpl,
    output wire [31:0] out_c1_exi1_14_tpl,
    output wire [31:0] out_c1_exi1_15_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_projection1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [7:0] in_c1_eni1_1_tpl,
    input wire [31:0] in_c1_eni1_2_tpl,
    input wire [31:0] in_c1_eni1_3_tpl,
    input wire [31:0] in_c1_eni1_4_tpl,
    input wire [31:0] in_c1_eni1_5_tpl,
    input wire [7:0] in_c1_eni1_6_tpl,
    input wire [7:0] in_c1_eni1_7_tpl,
    input wire [7:0] in_c1_eni1_8_tpl,
    input wire [7:0] in_c1_eni1_9_tpl,
    input wire [7:0] in_c1_eni1_10_tpl,
    input wire [31:0] in_c1_eni1_11_tpl,
    input wire [31:0] in_c1_eni1_12_tpl,
    input wire [31:0] in_c1_eni1_13_tpl,
    input wire [31:0] in_c1_eni1_14_tpl,
    input wire [31:0] in_c1_eni1_15_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bgTrunc_i_mul_i_projection18_sel_x_in;
    wire [31:0] bgTrunc_i_mul_i_projection18_sel_x_b;
    wire [31:0] c_i32_2000042_recast_x_q;
    wire [7:0] i_conv8_projection21_sel_x_b;
    wire [0:0] i_tobool_projection17_sel_x_b;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_q;
    wire [7:0] i_and9_projection22_q;
    wire [6:0] i_and9_projection22_vt_const_7_q;
    wire [7:0] i_and9_projection22_vt_join_q;
    wire [0:0] i_and9_projection22_vt_select_0_b;
    wire [33:0] i_cmp_i_projection19_a;
    wire [33:0] i_cmp_i_projection19_b;
    logic [33:0] i_cmp_i_projection19_o;
    wire [0:0] i_cmp_i_projection19_c;
    wire [7:0] i_conv8_projection21_vt_join_q;
    wire [0:0] i_conv8_projection21_vt_select_0_b;
    wire [50:0] i_mul_i_projection18_sums_align_1_q;
    wire [50:0] i_mul_i_projection18_sums_align_1_qint;
    wire i_mul_i_projection18_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul_i_projection18_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul_i_projection18_im0_cma_c0 [0:0];
    wire [35:0] i_mul_i_projection18_im0_cma_p [0:0];
    wire [35:0] i_mul_i_projection18_im0_cma_u [0:0];
    wire [35:0] i_mul_i_projection18_im0_cma_w [0:0];
    wire [35:0] i_mul_i_projection18_im0_cma_x [0:0];
    wire [35:0] i_mul_i_projection18_im0_cma_y [0:0];
    reg [35:0] i_mul_i_projection18_im0_cma_s [0:0];
    wire [35:0] i_mul_i_projection18_im0_cma_qq;
    wire [35:0] i_mul_i_projection18_im0_cma_q;
    wire i_mul_i_projection18_im0_cma_ena0;
    wire i_mul_i_projection18_im0_cma_ena1;
    wire i_mul_i_projection18_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul_i_projection18_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul_i_projection18_im8_cma_c0 [0:0];
    wire [27:0] i_mul_i_projection18_im8_cma_p [0:0];
    wire [27:0] i_mul_i_projection18_im8_cma_u [0:0];
    wire [27:0] i_mul_i_projection18_im8_cma_w [0:0];
    wire [27:0] i_mul_i_projection18_im8_cma_x [0:0];
    wire [27:0] i_mul_i_projection18_im8_cma_y [0:0];
    reg [27:0] i_mul_i_projection18_im8_cma_s [0:0];
    wire [27:0] i_mul_i_projection18_im8_cma_qq;
    wire [27:0] i_mul_i_projection18_im8_cma_q;
    wire i_mul_i_projection18_im8_cma_ena0;
    wire i_mul_i_projection18_im8_cma_ena1;
    wire i_mul_i_projection18_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul_i_projection18_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul_i_projection18_ma3_cma_c0 [0:1];
    wire [31:0] i_mul_i_projection18_ma3_cma_p [0:1];
    wire [32:0] i_mul_i_projection18_ma3_cma_u [0:1];
    wire [32:0] i_mul_i_projection18_ma3_cma_w [0:0];
    wire [32:0] i_mul_i_projection18_ma3_cma_x [0:0];
    wire [32:0] i_mul_i_projection18_ma3_cma_y [0:0];
    reg [32:0] i_mul_i_projection18_ma3_cma_s [0:0];
    wire [32:0] i_mul_i_projection18_ma3_cma_qq;
    wire [32:0] i_mul_i_projection18_ma3_cma_q;
    wire i_mul_i_projection18_ma3_cma_ena0;
    wire i_mul_i_projection18_ma3_cma_ena1;
    wire [13:0] i_mul_i_projection18_sums_result_add_0_0_UpperBits_for_b_q;
    wire [52:0] i_mul_i_projection18_sums_result_add_0_0_p1_of_2_a;
    wire [52:0] i_mul_i_projection18_sums_result_add_0_0_p1_of_2_b;
    logic [52:0] i_mul_i_projection18_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul_i_projection18_sums_result_add_0_0_p1_of_2_c;
    wire [51:0] i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q;
    wire [14:0] i_mul_i_projection18_sums_result_add_0_0_p2_of_2_a;
    wire [14:0] i_mul_i_projection18_sums_result_add_0_0_p2_of_2_b;
    logic [14:0] i_mul_i_projection18_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul_i_projection18_sums_result_add_0_0_p2_of_2_cin;
    wire [12:0] i_mul_i_projection18_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul_i_projection18_sums_result_add_0_0_BitJoin_for_q_q;
    wire [51:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [12:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [51:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_mul_i_projection18_bs2_merged_bit_select_b;
    wire [13:0] i_mul_i_projection18_bs2_merged_bit_select_c;
    wire [17:0] i_mul_i_projection18_bs1_merged_bit_select_b;
    wire [13:0] i_mul_i_projection18_bs1_merged_bit_select_c;
    wire [15:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [11:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [0:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [12:0] i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [11:0] redist0_i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q;
    reg [51:0] redist1_i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q_1_q;
    reg [32:0] redist2_i_mul_i_projection18_ma3_cma_q_1_q;
    reg [27:0] redist3_i_mul_i_projection18_im8_cma_q_1_q;
    reg [35:0] redist4_i_mul_i_projection18_im0_cma_q_1_q;
    reg [7:0] redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_q;
    reg [7:0] redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_0;
    reg [7:0] redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_1;
    reg [7:0] redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_2;
    reg [7:0] redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_q;
    reg [7:0] redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_0;
    reg [7:0] redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_1;
    reg [7:0] redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_2;
    reg [7:0] redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_q;
    reg [7:0] redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_0;
    reg [7:0] redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_1;
    reg [7:0] redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_2;
    reg [7:0] redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_q;
    reg [7:0] redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_0;
    reg [7:0] redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_1;
    reg [7:0] redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_2;
    reg [7:0] redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_q;
    reg [7:0] redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_0;
    reg [7:0] redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_1;
    reg [7:0] redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_2;
    reg [7:0] redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_q;
    reg [7:0] redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_0;
    reg [7:0] redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_1;
    reg [7:0] redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_2;
    reg [0:0] redist20_sync_together52_aunroll_x_in_i_valid_6_q;
    reg [7:0] redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_inputreg0_q;
    reg [7:0] redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q;
    reg [31:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_inputreg0_q;
    reg [31:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0_q;
    wire redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_reset0;
    wire [31:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_ia;
    wire [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_aa;
    wire [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_ab;
    wire [31:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_iq;
    wire [31:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_q;
    wire [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i;
    (* preserve *) reg redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_eq;
    wire [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_s;
    reg [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q;
    reg [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr_q;
    wire [1:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_last_q;
    wire [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmpReg_q;
    wire [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_notEnable_q;
    wire [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_sticky_ena_q;
    wire [0:0] redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_enaAnd_q;
    reg [31:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_inputreg0_q;
    reg [31:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0_q;
    wire redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_reset0;
    wire [31:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_ia;
    wire [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_aa;
    wire [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_ab;
    wire [31:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_iq;
    wire [31:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_q;
    wire [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i;
    (* preserve *) reg redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_eq;
    wire [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_s;
    reg [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q;
    reg [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr_q;
    wire [1:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_last_q;
    wire [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmpReg_q;
    wire [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_notEnable_q;
    wire [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_sticky_ena_q;
    wire [0:0] redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_enaAnd_q;
    reg [31:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_inputreg0_q;
    reg [31:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0_q;
    wire redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_reset0;
    wire [31:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_ia;
    wire [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_aa;
    wire [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_ab;
    wire [31:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_iq;
    wire [31:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_q;
    wire [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i;
    (* preserve *) reg redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_eq;
    wire [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_s;
    reg [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q;
    reg [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr_q;
    wire [1:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_last_q;
    wire [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmpReg_q;
    wire [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_notEnable_q;
    wire [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_sticky_ena_q;
    wire [0:0] redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_enaAnd_q;
    reg [31:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_inputreg0_q;
    reg [31:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0_q;
    wire redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_reset0;
    wire [31:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_ia;
    wire [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_aa;
    wire [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_ab;
    wire [31:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_iq;
    wire [31:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_q;
    wire [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i;
    (* preserve *) reg redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_eq;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_s;
    reg [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q;
    reg [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr_q;
    wire [1:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_last_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmpReg_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_notEnable_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_sticky_ena_q;
    wire [0:0] redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_enaAnd_q;
    reg [7:0] redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_inputreg0_q;
    reg [7:0] redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0_q;
    reg [7:0] redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_inputreg0_q;
    reg [7:0] redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0_q;
    reg [7:0] redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_inputreg0_q;
    reg [7:0] redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0_q;
    reg [7:0] redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_inputreg0_q;
    reg [7:0] redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0_q;
    reg [7:0] redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_inputreg0_q;
    reg [7:0] redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0_q;
    reg [31:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_inputreg0_q;
    reg [31:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0_q;
    wire redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_reset0;
    wire [31:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_ia;
    wire [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_aa;
    wire [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_ab;
    wire [31:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_iq;
    wire [31:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_q;
    wire [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i;
    (* preserve *) reg redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_eq;
    wire [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_s;
    reg [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q;
    reg [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr_q;
    wire [1:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_last_q;
    wire [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmpReg_q;
    wire [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_notEnable_q;
    wire [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_sticky_ena_q;
    wire [0:0] redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_enaAnd_q;
    reg [31:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_inputreg0_q;
    reg [31:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0_q;
    wire redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_reset0;
    wire [31:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_ia;
    wire [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_aa;
    wire [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_ab;
    wire [31:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_iq;
    wire [31:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_q;
    wire [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i;
    (* preserve *) reg redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_eq;
    wire [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_s;
    reg [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q;
    reg [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr_q;
    wire [1:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_last_q;
    wire [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmpReg_q;
    wire [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_notEnable_q;
    wire [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_sticky_ena_q;
    wire [0:0] redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_enaAnd_q;
    reg [31:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_inputreg0_q;
    reg [31:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0_q;
    wire redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_reset0;
    wire [31:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_ia;
    wire [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_aa;
    wire [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_ab;
    wire [31:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_iq;
    wire [31:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_q;
    wire [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i;
    (* preserve *) reg redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_eq;
    wire [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_s;
    reg [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q;
    reg [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr_q;
    wire [1:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_last_q;
    wire [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmpReg_q;
    wire [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_notEnable_q;
    wire [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_sticky_ena_q;
    wire [0:0] redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_enaAnd_q;
    reg [31:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_inputreg0_q;
    reg [31:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0_q;
    wire redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_reset0;
    wire [31:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_ia;
    wire [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_aa;
    wire [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_ab;
    wire [31:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_iq;
    wire [31:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_q;
    wire [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i;
    (* preserve *) reg redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_eq;
    wire [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_s;
    reg [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q;
    reg [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr_q;
    wire [1:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_last_q;
    wire [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmpReg_q;
    wire [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_notEnable_q;
    wire [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_sticky_ena_q;
    wire [0:0] redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_enaAnd_q;
    reg [31:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_inputreg0_q;
    reg [31:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0_q;
    wire redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_reset0;
    wire [31:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_ia;
    wire [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_aa;
    wire [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_ab;
    wire [31:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_iq;
    wire [31:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_q;
    wire [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_q;
    (* preserve *) reg [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i;
    (* preserve *) reg redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_eq;
    wire [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_s;
    reg [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q;
    reg [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr_q;
    wire [1:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_last_q;
    wire [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmp_q;
    (* dont_merge *) reg [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmpReg_q;
    wire [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_notEnable_q;
    wire [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_nor_q;
    (* dont_merge *) reg [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_sticky_ena_q;
    wire [0:0] redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_enaAnd_q;


    // redist20_sync_together52_aunroll_x_in_i_valid_6(DELAY,107)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist20_sync_together52_aunroll_x_in_i_valid_6 ( .xin(in_i_valid), .xout(redist20_sync_together52_aunroll_x_in_i_valid_6_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_notEnable(LOGICAL,233)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_nor(LOGICAL,234)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_nor_q = ~ (redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_notEnable_q | redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_sticky_ena_q);

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_last(CONSTANT,230)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmp(LOGICAL,231)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmp_q = $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_last_q == redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmpReg(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmpReg_q <= $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmp_q);
        end
    end

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_sticky_ena(REG,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_nor_q == 1'b1)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_sticky_ena_q <= $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_cmpReg_q);
        end
    end

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_enaAnd(LOGICAL,236)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_enaAnd_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_sticky_ena_q & in_enable;

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt(COUNTER,227)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i <= 2'd0;
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i == 2'd1)
            begin
                redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i <= $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i <= $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_i[1:0];

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux(MUX,228)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_s = in_enable;
    always @(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_s or redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr_q or redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_q)
    begin
        unique case (redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_s)
            1'b0 : redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr_q;
            1'b1 : redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdcnt_q;
            default : redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_inputreg0(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_15_tpl);
        end
    end

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr(REG,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr_q <= $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q);
        end
    end

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem(DUALMEM,226)
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_ia = $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_inputreg0_q);
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_aa = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_wraddr_q;
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_ab = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_rdmux_q;
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_dmem (
        .clocken1(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_aa),
        .data_a(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_ab),
        .q_b(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_iq[31:0];

    // redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0_q <= $unsigned(redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_mem_q);
        end
    end

    // redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_inputreg0(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_0 <= '0;
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_1 <= '0;
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_2 <= '0;
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_0 <= $unsigned(redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_inputreg0_q);
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_1 <= redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_0;
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_2 <= redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_1;
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_q <= redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_delay_2;
        end
    end

    // redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q <= $unsigned(redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_q);
        end
    end

    // i_tobool_projection17_sel_x(BITSELECT,5)@7
    assign i_tobool_projection17_sel_x_b = redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q[0:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x(MUX,20)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_s or redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_q = redist19_sync_together52_aunroll_x_in_c1_eni1_15_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_q = 32'b0;
        endcase
    end

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_notEnable(LOGICAL,220)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_nor(LOGICAL,221)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_nor_q = ~ (redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_notEnable_q | redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_sticky_ena_q);

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_last(CONSTANT,217)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmp(LOGICAL,218)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmp_q = $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_last_q == redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmpReg(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmpReg_q <= $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmp_q);
        end
    end

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_sticky_ena(REG,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_nor_q == 1'b1)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_sticky_ena_q <= $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_cmpReg_q);
        end
    end

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_enaAnd(LOGICAL,223)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_enaAnd_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_sticky_ena_q & in_enable;

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt(COUNTER,214)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i <= 2'd0;
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i == 2'd1)
            begin
                redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i <= $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i <= $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_i[1:0];

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux(MUX,215)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_s = in_enable;
    always @(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_s or redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr_q or redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_q)
    begin
        unique case (redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_s)
            1'b0 : redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr_q;
            1'b1 : redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdcnt_q;
            default : redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_inputreg0(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_14_tpl);
        end
    end

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr(REG,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr_q <= $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q);
        end
    end

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem(DUALMEM,213)
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_ia = $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_inputreg0_q);
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_aa = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_wraddr_q;
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_ab = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_rdmux_q;
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_dmem (
        .clocken1(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_aa),
        .data_a(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_ab),
        .q_b(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_iq[31:0];

    // redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0_q <= $unsigned(redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x(MUX,19)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_s or redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_q = redist18_sync_together52_aunroll_x_in_c1_eni1_14_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_q = 32'b0;
        endcase
    end

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_notEnable(LOGICAL,207)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_nor(LOGICAL,208)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_nor_q = ~ (redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_notEnable_q | redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_sticky_ena_q);

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_last(CONSTANT,204)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmp(LOGICAL,205)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmp_q = $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_last_q == redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmpReg(REG,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmpReg_q <= $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmp_q);
        end
    end

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_sticky_ena(REG,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_nor_q == 1'b1)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_sticky_ena_q <= $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_cmpReg_q);
        end
    end

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_enaAnd(LOGICAL,210)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_enaAnd_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_sticky_ena_q & in_enable;

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt(COUNTER,201)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i <= 2'd0;
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i == 2'd1)
            begin
                redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i <= $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i <= $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_i[1:0];

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux(MUX,202)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_s = in_enable;
    always @(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_s or redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr_q or redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_q)
    begin
        unique case (redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_s)
            1'b0 : redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr_q;
            1'b1 : redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdcnt_q;
            default : redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_inputreg0(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_13_tpl);
        end
    end

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr_q <= $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q);
        end
    end

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem(DUALMEM,200)
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_ia = $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_inputreg0_q);
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_aa = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_wraddr_q;
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_ab = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_rdmux_q;
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_dmem (
        .clocken1(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_aa),
        .data_a(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_ab),
        .q_b(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_iq[31:0];

    // redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0_q <= $unsigned(redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x(MUX,18)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_s or redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_q = redist17_sync_together52_aunroll_x_in_c1_eni1_13_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_q = 32'b0;
        endcase
    end

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_notEnable(LOGICAL,194)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_nor(LOGICAL,195)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_nor_q = ~ (redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_notEnable_q | redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_sticky_ena_q);

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_last(CONSTANT,191)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmp(LOGICAL,192)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmp_q = $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_last_q == redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmpReg(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmpReg_q <= $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmp_q);
        end
    end

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_sticky_ena(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_nor_q == 1'b1)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_sticky_ena_q <= $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_cmpReg_q);
        end
    end

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_enaAnd(LOGICAL,197)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_enaAnd_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_sticky_ena_q & in_enable;

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt(COUNTER,188)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i <= 2'd0;
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i == 2'd1)
            begin
                redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i <= $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i <= $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_i[1:0];

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux(MUX,189)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_s = in_enable;
    always @(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_s or redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr_q or redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_q)
    begin
        unique case (redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_s)
            1'b0 : redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr_q;
            1'b1 : redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdcnt_q;
            default : redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_inputreg0(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_12_tpl);
        end
    end

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr_q <= $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q);
        end
    end

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem(DUALMEM,187)
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_ia = $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_inputreg0_q);
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_aa = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_wraddr_q;
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_ab = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_rdmux_q;
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_dmem (
        .clocken1(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_aa),
        .data_a(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_ab),
        .q_b(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_iq[31:0];

    // redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0_q <= $unsigned(redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x(MUX,17)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_s or redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_q = redist16_sync_together52_aunroll_x_in_c1_eni1_12_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_q = 32'b0;
        endcase
    end

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_notEnable(LOGICAL,181)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_nor(LOGICAL,182)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_nor_q = ~ (redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_notEnable_q | redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_sticky_ena_q);

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_last(CONSTANT,178)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmp(LOGICAL,179)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmp_q = $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_last_q == redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmpReg(REG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmpReg_q <= $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmp_q);
        end
    end

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_sticky_ena(REG,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_nor_q == 1'b1)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_sticky_ena_q <= $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_cmpReg_q);
        end
    end

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_enaAnd(LOGICAL,184)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_enaAnd_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_sticky_ena_q & in_enable;

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt(COUNTER,175)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i <= 2'd0;
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i == 2'd1)
            begin
                redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i <= $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i <= $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_i[1:0];

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux(MUX,176)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_s = in_enable;
    always @(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_s or redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr_q or redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_q)
    begin
        unique case (redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_s)
            1'b0 : redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr_q;
            1'b1 : redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdcnt_q;
            default : redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_inputreg0(DELAY,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_11_tpl);
        end
    end

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr_q <= $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q);
        end
    end

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem(DUALMEM,174)
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_ia = $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_inputreg0_q);
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_aa = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_wraddr_q;
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_ab = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_rdmux_q;
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_dmem (
        .clocken1(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_aa),
        .data_a(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_ab),
        .q_b(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_iq[31:0];

    // redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0(DELAY,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0_q <= $unsigned(redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x(MUX,16)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_s or redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_q = redist15_sync_together52_aunroll_x_in_c1_eni1_11_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_q = 32'b0;
        endcase
    end

    // redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_inputreg0(DELAY,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_10_tpl);
        end
    end

    // redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6(DELAY,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_0 <= '0;
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_1 <= '0;
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_2 <= '0;
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_0 <= $unsigned(redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_inputreg0_q);
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_1 <= redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_0;
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_2 <= redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_1;
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_q <= redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_delay_2;
        end
    end

    // redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0(DELAY,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0_q <= $unsigned(redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x(MUX,15)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_s or redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_q = redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_q = redist14_sync_together52_aunroll_x_in_c1_eni1_10_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_q = 8'b0;
        endcase
    end

    // redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_inputreg0(DELAY,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_9_tpl);
        end
    end

    // redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6(DELAY,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_0 <= '0;
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_1 <= '0;
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_2 <= '0;
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_0 <= $unsigned(redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_inputreg0_q);
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_1 <= redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_0;
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_2 <= redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_1;
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_q <= redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_delay_2;
        end
    end

    // redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0(DELAY,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0_q <= $unsigned(redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x(MUX,14)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_s or redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_q = redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_q = redist13_sync_together52_aunroll_x_in_c1_eni1_9_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_q = 8'b0;
        endcase
    end

    // redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_inputreg0(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_8_tpl);
        end
    end

    // redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_0 <= '0;
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_1 <= '0;
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_2 <= '0;
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_0 <= $unsigned(redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_inputreg0_q);
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_1 <= redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_0;
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_2 <= redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_1;
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_q <= redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_delay_2;
        end
    end

    // redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0_q <= $unsigned(redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x(MUX,13)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_s or redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_q = redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_q = redist12_sync_together52_aunroll_x_in_c1_eni1_8_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_q = 8'b0;
        endcase
    end

    // redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_inputreg0(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_7_tpl);
        end
    end

    // redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_0 <= '0;
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_1 <= '0;
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_2 <= '0;
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_0 <= $unsigned(redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_inputreg0_q);
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_1 <= redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_0;
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_2 <= redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_1;
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_q <= redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_delay_2;
        end
    end

    // redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0_q <= $unsigned(redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x(MUX,12)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_s or redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_q = redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_q = redist11_sync_together52_aunroll_x_in_c1_eni1_7_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_q = 8'b0;
        endcase
    end

    // redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_inputreg0(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_6_tpl);
        end
    end

    // redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_0 <= '0;
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_1 <= '0;
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_2 <= '0;
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_0 <= $unsigned(redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_inputreg0_q);
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_1 <= redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_0;
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_2 <= redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_1;
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_q <= redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_delay_2;
        end
    end

    // redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0_q <= $unsigned(redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x(MUX,11)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_s or redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_q = redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_q = redist10_sync_together52_aunroll_x_in_c1_eni1_6_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_q = 8'b0;
        endcase
    end

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_notEnable(LOGICAL,158)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_nor(LOGICAL,159)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_nor_q = ~ (redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_notEnable_q | redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_sticky_ena_q);

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_last(CONSTANT,155)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmp(LOGICAL,156)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmp_q = $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_last_q == redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmpReg(REG,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmpReg_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmp_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_sticky_ena(REG,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_nor_q == 1'b1)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_sticky_ena_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_cmpReg_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_enaAnd(LOGICAL,161)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_enaAnd_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_sticky_ena_q & in_enable;

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt(COUNTER,152)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i <= 2'd0;
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i == 2'd1)
            begin
                redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i <= $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i <= $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_i[1:0];

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux(MUX,153)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_s = in_enable;
    always @(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_s or redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr_q or redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_q)
    begin
        unique case (redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_s)
            1'b0 : redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr_q;
            1'b1 : redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdcnt_q;
            default : redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_inputreg0(DELAY,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_5_tpl);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q);
        end
    end

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem(DUALMEM,151)
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_ia = $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_inputreg0_q);
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_aa = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_wraddr_q;
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_ab = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_rdmux_q;
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_dmem (
        .clocken1(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_aa),
        .data_a(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_ab),
        .q_b(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_iq[31:0];

    // redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0_q <= $unsigned(redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x(MUX,10)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_s or redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_q = redist9_sync_together52_aunroll_x_in_c1_eni1_5_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_q = 32'b0;
        endcase
    end

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_notEnable(LOGICAL,145)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_nor(LOGICAL,146)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_nor_q = ~ (redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_notEnable_q | redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_sticky_ena_q);

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_last(CONSTANT,142)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmp(LOGICAL,143)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmp_q = $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_last_q == redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmpReg(REG,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmpReg_q <= $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmp_q);
        end
    end

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_sticky_ena(REG,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_nor_q == 1'b1)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_sticky_ena_q <= $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_cmpReg_q);
        end
    end

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_enaAnd(LOGICAL,148)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_enaAnd_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_sticky_ena_q & in_enable;

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt(COUNTER,139)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i <= 2'd0;
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i == 2'd1)
            begin
                redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i <= $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i <= $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_i[1:0];

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux(MUX,140)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_s = in_enable;
    always @(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_s or redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr_q or redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_q)
    begin
        unique case (redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_s)
            1'b0 : redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr_q;
            1'b1 : redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdcnt_q;
            default : redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_inputreg0(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_4_tpl);
        end
    end

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr(REG,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr_q <= $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q);
        end
    end

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem(DUALMEM,138)
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_ia = $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_inputreg0_q);
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_aa = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_wraddr_q;
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_ab = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_rdmux_q;
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_dmem (
        .clocken1(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_aa),
        .data_a(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_ab),
        .q_b(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_iq[31:0];

    // redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0_q <= $unsigned(redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x(MUX,9)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_s or redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_q = redist8_sync_together52_aunroll_x_in_c1_eni1_4_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_q = 32'b0;
        endcase
    end

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_notEnable(LOGICAL,132)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_nor(LOGICAL,133)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_nor_q = ~ (redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_notEnable_q | redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_sticky_ena_q);

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_last(CONSTANT,129)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmp(LOGICAL,130)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmp_q = $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_last_q == redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmpReg(REG,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmpReg_q <= $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmp_q);
        end
    end

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_sticky_ena(REG,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_nor_q == 1'b1)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_sticky_ena_q <= $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_cmpReg_q);
        end
    end

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_enaAnd(LOGICAL,135)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_enaAnd_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_sticky_ena_q & in_enable;

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt(COUNTER,126)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i <= 2'd0;
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i == 2'd1)
            begin
                redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i <= $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i <= $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_i[1:0];

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux(MUX,127)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_s = in_enable;
    always @(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_s or redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr_q or redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_q)
    begin
        unique case (redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_s)
            1'b0 : redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr_q;
            1'b1 : redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdcnt_q;
            default : redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_inputreg0(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr_q <= $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q);
        end
    end

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem(DUALMEM,125)
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_ia = $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_inputreg0_q);
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_aa = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_wraddr_q;
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_ab = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_rdmux_q;
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_dmem (
        .clocken1(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_aa),
        .data_a(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_ab),
        .q_b(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_iq[31:0];

    // redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0_q <= $unsigned(redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x(MUX,8)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_s or redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_q = redist7_sync_together52_aunroll_x_in_c1_eni1_3_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_q = 32'b0;
        endcase
    end

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_notEnable(LOGICAL,119)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_notEnable_q = $unsigned(~ (in_enable));

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_nor(LOGICAL,120)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_nor_q = ~ (redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_notEnable_q | redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_sticky_ena_q);

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_last(CONSTANT,116)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_last_q = $unsigned(2'b01);

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmp(LOGICAL,117)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmp_q = $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_last_q == redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q ? 1'b1 : 1'b0);

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmpReg(REG,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmpReg_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmpReg_q <= $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmp_q);
        end
    end

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_sticky_ena(REG,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_nor_q == 1'b1)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_sticky_ena_q <= $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_cmpReg_q);
        end
    end

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_enaAnd(LOGICAL,122)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_enaAnd_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_sticky_ena_q & in_enable;

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt(COUNTER,113)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i <= 2'd0;
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_eq <= 1'b0;
        end
        else if (in_enable == 1'b1)
        begin
            if (redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i == 2'd1)
            begin
                redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_eq <= 1'b0;
            end
            if (redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_eq == 1'b1)
            begin
                redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i <= $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i <= $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_i[1:0];

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux(MUX,114)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_s = in_enable;
    always @(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_s or redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr_q or redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_q)
    begin
        unique case (redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_s)
            1'b0 : redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr_q;
            1'b1 : redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdcnt_q;
            default : redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q = 2'b0;
        endcase
    end

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_inputreg0(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_inputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_inputreg0_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr_q <= $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q);
        end
    end

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem(DUALMEM,112)
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_ia = $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_inputreg0_q);
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_aa = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_wraddr_q;
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_ab = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_rdmux_q;
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_dmem (
        .clocken1(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_reset0),
        .clock1(clock),
        .address_a(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_aa),
        .data_a(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_ia),
        .wren_a(in_enable[0]),
        .address_b(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_ab),
        .q_b(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_iq[31:0];

    // redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0_q <= $unsigned(redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_mem_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x(MUX,7)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_s or redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_q = redist6_sync_together52_aunroll_x_in_c1_eni1_2_tpl_6_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_q = 32'b0;
        endcase
    end

    // i_and9_projection22_vt_const_7(CONSTANT,30)
    assign i_and9_projection22_vt_const_7_q = $unsigned(7'b0000000);

    // c_i32_2000042_recast_x(CONSTANT,3)
    assign c_i32_2000042_recast_x_q = $unsigned(32'b00000000000000000100111000100000);

    // i_mul_i_projection18_bs2_merged_bit_select(BITSELECT,83)@1
    assign i_mul_i_projection18_bs2_merged_bit_select_b = in_c1_eni1_2_tpl[17:0];
    assign i_mul_i_projection18_bs2_merged_bit_select_c = in_c1_eni1_2_tpl[31:18];

    // i_mul_i_projection18_bs1_merged_bit_select(BITSELECT,84)@1
    assign i_mul_i_projection18_bs1_merged_bit_select_b = in_c1_eni1_3_tpl[17:0];
    assign i_mul_i_projection18_bs1_merged_bit_select_c = in_c1_eni1_3_tpl[31:18];

    // i_mul_i_projection18_ma3_cma(CHAINMULTADD,62)@1 + 2
    assign i_mul_i_projection18_ma3_cma_reset = ~ (resetn);
    assign i_mul_i_projection18_ma3_cma_ena0 = in_enable[0];
    assign i_mul_i_projection18_ma3_cma_ena1 = i_mul_i_projection18_ma3_cma_ena0;
    assign i_mul_i_projection18_ma3_cma_p[0] = i_mul_i_projection18_ma3_cma_a0[0] * i_mul_i_projection18_ma3_cma_c0[0];
    assign i_mul_i_projection18_ma3_cma_p[1] = i_mul_i_projection18_ma3_cma_a0[1] * i_mul_i_projection18_ma3_cma_c0[1];
    assign i_mul_i_projection18_ma3_cma_u[0] = {1'b0, i_mul_i_projection18_ma3_cma_p[0][31:0]};
    assign i_mul_i_projection18_ma3_cma_u[1] = {1'b0, i_mul_i_projection18_ma3_cma_p[1][31:0]};
    assign i_mul_i_projection18_ma3_cma_w[0] = i_mul_i_projection18_ma3_cma_u[0] + i_mul_i_projection18_ma3_cma_u[1];
    assign i_mul_i_projection18_ma3_cma_x[0] = i_mul_i_projection18_ma3_cma_w[0];
    assign i_mul_i_projection18_ma3_cma_y[0] = i_mul_i_projection18_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_ma3_cma_a0 <= '{default: '0};
            i_mul_i_projection18_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul_i_projection18_ma3_cma_ena0 == 1'b1)
            begin
                i_mul_i_projection18_ma3_cma_a0[0] <= i_mul_i_projection18_bs1_merged_bit_select_c;
                i_mul_i_projection18_ma3_cma_a0[1] <= i_mul_i_projection18_bs2_merged_bit_select_c;
                i_mul_i_projection18_ma3_cma_c0[0] <= i_mul_i_projection18_bs2_merged_bit_select_b;
                i_mul_i_projection18_ma3_cma_c0[1] <= i_mul_i_projection18_bs1_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul_i_projection18_ma3_cma_ena1 == 1'b1)
            begin
                i_mul_i_projection18_ma3_cma_s[0] <= i_mul_i_projection18_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_projection18_ma3_cma_delay ( .xin(i_mul_i_projection18_ma3_cma_s[0]), .xout(i_mul_i_projection18_ma3_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_i_projection18_ma3_cma_q = $unsigned(i_mul_i_projection18_ma3_cma_qq[32:0]);

    // redist2_i_mul_i_projection18_ma3_cma_q_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mul_i_projection18_ma3_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mul_i_projection18_ma3_cma_q_1_q <= $unsigned(i_mul_i_projection18_ma3_cma_q);
        end
    end

    // i_mul_i_projection18_sums_align_1(BITSHIFT,57)@4
    assign i_mul_i_projection18_sums_align_1_qint = { redist2_i_mul_i_projection18_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign i_mul_i_projection18_sums_align_1_q = i_mul_i_projection18_sums_align_1_qint[50:0];

    // i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,80)@4
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul_i_projection18_sums_align_1_q};

    // i_mul_i_projection18_im8_cma(CHAINMULTADD,61)@1 + 2
    assign i_mul_i_projection18_im8_cma_reset = ~ (resetn);
    assign i_mul_i_projection18_im8_cma_ena0 = in_enable[0];
    assign i_mul_i_projection18_im8_cma_ena1 = i_mul_i_projection18_im8_cma_ena0;
    assign i_mul_i_projection18_im8_cma_p[0] = i_mul_i_projection18_im8_cma_a0[0] * i_mul_i_projection18_im8_cma_c0[0];
    assign i_mul_i_projection18_im8_cma_u[0] = i_mul_i_projection18_im8_cma_p[0][27:0];
    assign i_mul_i_projection18_im8_cma_w[0] = i_mul_i_projection18_im8_cma_u[0];
    assign i_mul_i_projection18_im8_cma_x[0] = i_mul_i_projection18_im8_cma_w[0];
    assign i_mul_i_projection18_im8_cma_y[0] = i_mul_i_projection18_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_im8_cma_a0 <= '{default: '0};
            i_mul_i_projection18_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul_i_projection18_im8_cma_ena0 == 1'b1)
            begin
                i_mul_i_projection18_im8_cma_a0[0] <= i_mul_i_projection18_bs1_merged_bit_select_c;
                i_mul_i_projection18_im8_cma_c0[0] <= i_mul_i_projection18_bs2_merged_bit_select_c;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul_i_projection18_im8_cma_ena1 == 1'b1)
            begin
                i_mul_i_projection18_im8_cma_s[0] <= i_mul_i_projection18_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_projection18_im8_cma_delay ( .xin(i_mul_i_projection18_im8_cma_s[0]), .xout(i_mul_i_projection18_im8_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_i_projection18_im8_cma_q = $unsigned(i_mul_i_projection18_im8_cma_qq[27:0]);

    // redist3_i_mul_i_projection18_im8_cma_q_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mul_i_projection18_im8_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_i_mul_i_projection18_im8_cma_q_1_q <= $unsigned(i_mul_i_projection18_im8_cma_q);
        end
    end

    // i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,85)@4
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist3_i_mul_i_projection18_im8_cma_q_1_q[15:0]);
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist3_i_mul_i_projection18_im8_cma_q_1_q[27:16]);

    // i_mul_i_projection18_im0_cma(CHAINMULTADD,60)@1 + 2
    assign i_mul_i_projection18_im0_cma_reset = ~ (resetn);
    assign i_mul_i_projection18_im0_cma_ena0 = in_enable[0];
    assign i_mul_i_projection18_im0_cma_ena1 = i_mul_i_projection18_im0_cma_ena0;
    assign i_mul_i_projection18_im0_cma_p[0] = i_mul_i_projection18_im0_cma_a0[0] * i_mul_i_projection18_im0_cma_c0[0];
    assign i_mul_i_projection18_im0_cma_u[0] = i_mul_i_projection18_im0_cma_p[0][35:0];
    assign i_mul_i_projection18_im0_cma_w[0] = i_mul_i_projection18_im0_cma_u[0];
    assign i_mul_i_projection18_im0_cma_x[0] = i_mul_i_projection18_im0_cma_w[0];
    assign i_mul_i_projection18_im0_cma_y[0] = i_mul_i_projection18_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_im0_cma_a0 <= '{default: '0};
            i_mul_i_projection18_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul_i_projection18_im0_cma_ena0 == 1'b1)
            begin
                i_mul_i_projection18_im0_cma_a0[0] <= i_mul_i_projection18_bs1_merged_bit_select_b;
                i_mul_i_projection18_im0_cma_c0[0] <= i_mul_i_projection18_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul_i_projection18_im0_cma_ena1 == 1'b1)
            begin
                i_mul_i_projection18_im0_cma_s[0] <= i_mul_i_projection18_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_i_projection18_im0_cma_delay ( .xin(i_mul_i_projection18_im0_cma_s[0]), .xout(i_mul_i_projection18_im0_cma_qq), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_i_projection18_im0_cma_q = $unsigned(i_mul_i_projection18_im0_cma_qq[35:0]);

    // redist4_i_mul_i_projection18_im0_cma_q_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mul_i_projection18_im0_cma_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_i_mul_i_projection18_im0_cma_q_1_q <= $unsigned(i_mul_i_projection18_im0_cma_q);
        end
    end

    // i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,74)@4
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist4_i_mul_i_projection18_im0_cma_q_1_q};

    // i_mul_i_projection18_sums_result_add_0_0_p1_of_2(ADD,69)@4 + 1
    assign i_mul_i_projection18_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul_i_projection18_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_sums_result_add_0_0_p1_of_2_o <= 53'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul_i_projection18_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul_i_projection18_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul_i_projection18_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul_i_projection18_sums_result_add_0_0_p1_of_2_c[0] = i_mul_i_projection18_sums_result_add_0_0_p1_of_2_o[52];
    assign i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q = i_mul_i_projection18_sums_result_add_0_0_p1_of_2_o[51:0];

    // i_mul_i_projection18_sums_result_add_0_0_UpperBits_for_b(CONSTANT,66)
    assign i_mul_i_projection18_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,86)
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul_i_projection18_sums_result_add_0_0_UpperBits_for_b_q[0:0]);
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul_i_projection18_sums_result_add_0_0_UpperBits_for_b_q[13:1]);

    // redist0_i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1(DELAY,87)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q <= $unsigned(i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,77)@5
    assign i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_q};

    // i_mul_i_projection18_sums_result_add_0_0_p2_of_2(ADD,70)@5 + 1
    assign i_mul_i_projection18_sums_result_add_0_0_p2_of_2_cin = i_mul_i_projection18_sums_result_add_0_0_p1_of_2_c;
    assign i_mul_i_projection18_sums_result_add_0_0_p2_of_2_a = { {1'b0, i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mul_i_projection18_sums_result_add_0_0_p2_of_2_b = { {1'b0, i_mul_i_projection18_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c}, i_mul_i_projection18_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_i_projection18_sums_result_add_0_0_p2_of_2_o <= 15'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mul_i_projection18_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul_i_projection18_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul_i_projection18_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul_i_projection18_sums_result_add_0_0_p2_of_2_q = i_mul_i_projection18_sums_result_add_0_0_p2_of_2_o[13:1];

    // redist1_i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q_1(DELAY,88)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q_1_q <= $unsigned(i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q);
        end
    end

    // i_mul_i_projection18_sums_result_add_0_0_BitJoin_for_q(BITJOIN,71)@6
    assign i_mul_i_projection18_sums_result_add_0_0_BitJoin_for_q_q = {i_mul_i_projection18_sums_result_add_0_0_p2_of_2_q, redist1_i_mul_i_projection18_sums_result_add_0_0_p1_of_2_q_1_q};

    // bgTrunc_i_mul_i_projection18_sel_x(BITSELECT,2)@6
    assign bgTrunc_i_mul_i_projection18_sel_x_in = i_mul_i_projection18_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul_i_projection18_sel_x_b = bgTrunc_i_mul_i_projection18_sel_x_in[31:0];

    // i_cmp_i_projection19(COMPARE,33)@6 + 1
    assign i_cmp_i_projection19_a = $unsigned({{2{bgTrunc_i_mul_i_projection18_sel_x_b[31]}}, bgTrunc_i_mul_i_projection18_sel_x_b});
    assign i_cmp_i_projection19_b = $unsigned({{2{c_i32_2000042_recast_x_q[31]}}, c_i32_2000042_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp_i_projection19_o <= 34'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_cmp_i_projection19_o <= $unsigned($signed(i_cmp_i_projection19_a) - $signed(i_cmp_i_projection19_b));
        end
    end
    assign i_cmp_i_projection19_c[0] = i_cmp_i_projection19_o[33];

    // i_conv8_projection21_sel_x(BITSELECT,4)@7
    assign i_conv8_projection21_sel_x_b = {7'b0000000, i_cmp_i_projection19_c[0:0]};

    // i_conv8_projection21_vt_select_0(BITSELECT,37)@7
    assign i_conv8_projection21_vt_select_0_b = i_conv8_projection21_sel_x_b[0:0];

    // i_conv8_projection21_vt_join(BITJOIN,36)@7
    assign i_conv8_projection21_vt_join_q = {i_and9_projection22_vt_const_7_q, i_conv8_projection21_vt_select_0_b};

    // i_and9_projection22(LOGICAL,29)@7
    assign i_and9_projection22_q = redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q & i_conv8_projection21_vt_join_q;

    // i_and9_projection22_vt_select_0(BITSELECT,32)@7
    assign i_and9_projection22_vt_select_0_b = i_and9_projection22_q[0:0];

    // i_and9_projection22_vt_join(BITJOIN,31)@7
    assign i_and9_projection22_vt_join_q = {i_and9_projection22_vt_const_7_q, i_and9_projection22_vt_select_0_b};

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x(MUX,6)@7
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_s or redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q or i_and9_projection22_vt_join_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_q = redist5_sync_together52_aunroll_x_in_c1_eni1_1_tpl_6_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_q = i_and9_projection22_vt_join_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_q = 8'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,21)@7
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_0_x_q;
    assign out_c1_exi1_2_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_1_x_q;
    assign out_c1_exi1_3_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_2_x_q;
    assign out_c1_exi1_4_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_3_x_q;
    assign out_c1_exi1_5_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_4_x_q;
    assign out_c1_exi1_6_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_5_x_q;
    assign out_c1_exi1_7_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_6_x_q;
    assign out_c1_exi1_8_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_7_x_q;
    assign out_c1_exi1_9_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_8_x_q;
    assign out_c1_exi1_10_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_9_x_q;
    assign out_c1_exi1_11_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_10_x_q;
    assign out_c1_exi1_12_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_11_x_q;
    assign out_c1_exi1_13_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_12_x_q;
    assign out_c1_exi1_14_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_13_x_q;
    assign out_c1_exi1_15_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection38_14_x_q;
    assign out_o_valid = redist20_sync_together52_aunroll_x_in_i_valid_6_q;
    assign out_unnamed_projection1 = GND_q;

endmodule
