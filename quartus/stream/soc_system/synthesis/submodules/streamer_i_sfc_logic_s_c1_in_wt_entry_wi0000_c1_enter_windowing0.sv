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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_wi0000_c1_enter_windowing0 (
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
    output wire [0:0] out_unnamed_windowing0,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [7:0] in_c1_eni2_1_tpl,
    input wire [31:0] in_c1_eni2_2_tpl,
    input wire [31:0] in_c1_eni2_3_tpl,
    input wire [31:0] in_c1_eni2_4_tpl,
    input wire [31:0] in_c1_eni2_5_tpl,
    input wire [7:0] in_c1_eni2_6_tpl,
    input wire [7:0] in_c1_eni2_7_tpl,
    input wire [7:0] in_c1_eni2_8_tpl,
    input wire [7:0] in_c1_eni2_9_tpl,
    input wire [7:0] in_c1_eni2_10_tpl,
    input wire [31:0] in_c1_eni2_11_tpl,
    input wire [31:0] in_c1_eni2_12_tpl,
    input wire [31:0] in_c1_eni2_13_tpl,
    input wire [31:0] in_c1_eni2_14_tpl,
    input wire [31:0] in_c1_eni2_15_tpl,
    input wire [0:0] in_c1_eni2_16_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_acl_2_windowing43_sel_x_b;
    wire [31:0] bgTrunc_i_inc_i_windowing19_sel_x_b;
    wire [31:0] c_i32_054_recast_x_q;
    wire [7:0] i_frombool_windowing22_sel_x_b;
    wire [31:0] i_inc7_windowing42_sel_x_b;
    wire [0:0] i_tobool_mask_trunc_windowing41_sel_x_b;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q;
    wire [31:0] c_float_0_000000e_0055_q;
    wire [31:0] c_i32_152_q;
    wire [31:0] c_i32_353_q;
    wire [32:0] i_acl_2_windowing43_a;
    wire [32:0] i_acl_2_windowing43_b;
    logic [32:0] i_acl_2_windowing43_o;
    wire [32:0] i_acl_2_windowing43_q;
    wire [31:0] i_add_i_windowing17_out_primWireOut;
    wire [0:0] i_cmp_windowing14_qi;
    reg [0:0] i_cmp_windowing14_q;
    wire [31:0] i_conv_i_windowing20_out_primWireOut;
    wire [31:0] i_div_i_windowing21_out_primWireOut;
    wire [6:0] i_frombool_windowing22_vt_const_7_q;
    wire [7:0] i_frombool_windowing22_vt_join_q;
    wire [0:0] i_frombool_windowing22_vt_select_0_b;
    wire [30:0] i_inc7_windowing42_vt_const_31_q;
    wire [31:0] i_inc7_windowing42_vt_join_q;
    wire [0:0] i_inc7_windowing42_vt_select_0_b;
    wire [32:0] i_inc_i_windowing19_a;
    wire [32:0] i_inc_i_windowing19_b;
    logic [32:0] i_inc_i_windowing19_o;
    wire [32:0] i_inc_i_windowing19_q;
    wire [31:0] i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_feedback_stall_out_4;
    wire [31:0] i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_feedback_stall_out_5;
    wire [31:0] i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44_out_feedback_valid_out_5;
    wire [0:0] i_reduction_windowing_0_windowing33_s;
    reg [31:0] i_reduction_windowing_0_windowing33_q;
    wire [0:0] i_reduction_windowing_1_windowing36_s;
    reg [31:0] i_reduction_windowing_1_windowing36_q;
    wire [0:0] i_reduction_windowing_2_windowing38_s;
    reg [31:0] i_reduction_windowing_2_windowing38_q;
    wire [0:0] i_reduction_windowing_3_windowing39_s;
    reg [31:0] i_reduction_windowing_3_windowing39_q;
    wire [0:0] i_selcond_windowing_0_windowing34_q;
    wire [0:0] i_selcond_windowing_1_windowing35_q;
    wire [31:0] i_unnamed_windowing13_q;
    wire [29:0] i_unnamed_windowing13_vt_const_31_q;
    wire [31:0] i_unnamed_windowing13_vt_join_q;
    wire [1:0] i_unnamed_windowing13_vt_select_1_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    reg [0:0] redist0_valid_fanout_reg0_q_9_q;
    reg [0:0] redist1_i_selcond_windowing_1_windowing35_q_29_q;
    reg [31:0] redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q;
    reg [31:0] redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_1_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_2_q;
    reg [31:0] redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_1_q;
    reg [31:0] redist7_i_div_i_windowing21_out_primWireOut_1_q;
    reg [31:0] redist8_i_conv_i_windowing20_out_primWireOut_1_q;
    reg [31:0] redist9_i_add_i_windowing17_out_primWireOut_1_q;
    reg [7:0] redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_q;
    reg [7:0] redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_delay_0;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_q;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_0;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_1;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_2;
    reg [31:0] redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_q;
    reg [31:0] redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_delay_0;
    reg [31:0] redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_q;
    reg [31:0] redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_delay_0;
    reg [31:0] redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_q;
    reg [31:0] redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_delay_0;
    reg [7:0] redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_q;
    reg [7:0] redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_delay_0;
    reg [7:0] redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_q;
    reg [7:0] redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_0;
    reg [7:0] redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_1;
    reg [7:0] redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_q;
    reg [7:0] redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_delay_0;
    reg [7:0] redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_q;
    reg [7:0] redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_delay_0;
    reg [7:0] redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_q;
    reg [7:0] redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_delay_0;
    reg [31:0] redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_q;
    reg [31:0] redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_delay_0;
    reg [31:0] redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_q;
    reg [31:0] redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_delay_0;
    reg [31:0] redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_q;
    reg [31:0] redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_delay_0;
    reg [31:0] redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_q;
    reg [31:0] redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_delay_0;
    reg [0:0] redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1_q;
    reg [0:0] redist27_sync_together69_aunroll_x_in_c1_eni2_16_tpl_9_q;
    reg [0:0] redist28_sync_together69_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist29_sync_together69_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist30_sync_together69_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist31_sync_together69_aunroll_x_in_i_valid_31_q;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_q;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_0;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_1;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_2;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_q;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_0;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_1;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_2;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_0;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_1;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_2;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_0;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_1;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_2;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_0;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_1;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_2;
    reg [0:0] redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q;
    reg [0:0] redist46_i_tobool_mask_trunc_windowing41_sel_x_b_8_q;
    reg [0:0] redist47_i_tobool_mask_trunc_windowing41_sel_x_b_29_q;
    reg [0:0] redist48_i_tobool_mask_trunc_windowing41_sel_x_b_39_q;
    reg [31:0] redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_inputreg0_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_outputreg0_q;
    wire redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_reset0;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_ia;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_aa;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_ab;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_iq;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_q;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_q;
    (* preserve *) reg [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i;
    (* preserve *) reg redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_eq;
    reg [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_wraddr_q;
    wire [5:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_last_q;
    wire [5:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp_b;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmpReg_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_notEnable_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_sticky_ena_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_enaAnd_q;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_inputreg0_q;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0_q;
    reg [31:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_inputreg0_q;
    reg [31:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0_q;
    wire redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_reset0;
    wire [31:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_ia;
    wire [2:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_aa;
    wire [2:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_ab;
    wire [31:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_iq;
    wire [31:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_q;
    wire [2:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_q;
    (* preserve *) reg [2:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i;
    (* preserve *) reg redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_eq;
    reg [2:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_wraddr_q;
    wire [3:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_last_q;
    wire [3:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp_b;
    wire [0:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmpReg_q;
    wire [0:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_notEnable_q;
    wire [0:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_sticky_ena_q;
    wire [0:0] redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_enaAnd_q;
    reg [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_inputreg0_q;
    reg [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_outputreg0_q;
    wire redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_reset0;
    wire [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_ia;
    wire [2:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_aa;
    wire [2:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_ab;
    wire [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_iq;
    wire [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_q;
    wire [2:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_q;
    (* preserve *) reg [2:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i;
    (* preserve *) reg redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_eq;
    reg [2:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_wraddr_q;
    wire [2:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_last_q;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmp_q;
    (* dont_merge *) reg [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmpReg_q;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_notEnable_q;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_sticky_ena_q;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_enaAnd_q;
    reg [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_inputreg0_q;
    reg [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_outputreg0_q;
    wire redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_reset0;
    wire [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_ia;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_aa;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_ab;
    wire [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_iq;
    wire [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_q;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_i;
    reg [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_cmpReg_q;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_notEnable_q;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_sticky_ena_q;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_enaAnd_q;
    reg [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_inputreg0_q;
    reg [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_outputreg0_q;
    wire redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_reset0;
    wire [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_ia;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_aa;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_ab;
    wire [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_iq;
    wire [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_q;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_i;
    reg [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_cmpReg_q;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_notEnable_q;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_sticky_ena_q;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_enaAnd_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_inputreg0_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_outputreg0_q;
    wire redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_reset0;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_ia;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_aa;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_ab;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_iq;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_i;
    reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_cmpReg_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_notEnable_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_sticky_ena_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_enaAnd_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_inputreg0_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_outputreg0_q;
    wire redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_reset0;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_ia;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_aa;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_ab;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_iq;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_i;
    reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_cmpReg_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_notEnable_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_sticky_ena_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_enaAnd_q;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_inputreg0_q;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_inputreg0_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_inputreg0_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_inputreg0_q;
    reg [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_inputreg0_q;
    reg [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_outputreg0_q;
    wire redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_reset0;
    wire [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_ia;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_aa;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_ab;
    wire [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_iq;
    wire [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_i;
    reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_cmpReg_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_notEnable_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_sticky_ena_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_enaAnd_q;
    reg [31:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_inputreg0_q;
    reg [31:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_outputreg0_q;
    wire redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_reset0;
    wire [31:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_ia;
    wire [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_aa;
    wire [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_ab;
    wire [31:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_iq;
    wire [31:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_q;
    wire [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_q;
    (* preserve *) reg [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i;
    (* preserve *) reg redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_eq;
    reg [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_wraddr_q;
    wire [5:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_last_q;
    wire [5:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp_b;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp_q;
    (* dont_merge *) reg [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmpReg_q;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_notEnable_q;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_nor_q;
    (* dont_merge *) reg [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_sticky_ena_q;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_enaAnd_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_inputreg0_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_outputreg0_q;
    wire redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_reset0;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_ia;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_aa;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_ab;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_iq;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_i;
    reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_cmpReg_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_notEnable_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_sticky_ena_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_enaAnd_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_inputreg0_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_outputreg0_q;
    wire redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_reset0;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_ia;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_aa;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_ab;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_iq;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_i;
    reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_cmpReg_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_notEnable_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_sticky_ena_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_enaAnd_q;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_inputreg0_q;
    reg [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_outputreg0_q;
    wire redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_reset0;
    wire [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_ia;
    wire [4:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_aa;
    wire [4:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_ab;
    wire [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_iq;
    wire [7:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_q;
    wire [4:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i;
    (* preserve *) reg redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_eq;
    reg [4:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_wraddr_q;
    wire [5:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_last_q;
    wire [5:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp_b;
    wire [0:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmpReg_q;
    wire [0:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_notEnable_q;
    wire [0:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_sticky_ena_q;
    wire [0:0] redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_enaAnd_q;
    reg [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_outputreg0_q;
    wire redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_reset0;
    wire [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_ia;
    wire [4:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_aa;
    wire [4:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_ab;
    wire [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_iq;
    wire [31:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_q;
    wire [4:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_wraddr_q;
    wire [5:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_last_q;
    wire [5:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp_b;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_outputreg0_q;
    wire redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_reset0;
    wire [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_ia;
    wire [4:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_aa;
    wire [4:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_ab;
    wire [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_iq;
    wire [31:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_q;
    wire [4:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_wraddr_q;
    wire [5:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_last_q;
    wire [5:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp_b;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_outputreg0_q;
    wire redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_reset0;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_ia;
    wire [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_aa;
    wire [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_ab;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_iq;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_q;
    wire [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_wraddr_q;
    wire [5:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_last_q;
    wire [5:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp_b;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_outputreg0_q;
    wire redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_reset0;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_ia;
    wire [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_aa;
    wire [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_ab;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_iq;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_q;
    wire [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_wraddr_q;
    wire [5:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_last_q;
    wire [5:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp_b;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_outputreg0_q;
    wire redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_reset0;
    wire [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_ia;
    wire [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_aa;
    wire [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_ab;
    wire [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_iq;
    wire [7:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_q;
    wire [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_wraddr_q;
    wire [5:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_last_q;
    wire [5:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp_b;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_notEnable_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_outputreg0_q;
    wire redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_reset0;
    wire [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_ia;
    wire [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_aa;
    wire [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_ab;
    wire [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_iq;
    wire [7:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_q;
    wire [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_wraddr_q;
    wire [5:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_last_q;
    wire [5:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp_b;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_notEnable_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_outputreg0_q;
    wire redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_reset0;
    wire [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_ia;
    wire [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_aa;
    wire [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_ab;
    wire [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_iq;
    wire [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_q;
    wire [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_wraddr_q;
    wire [5:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_last_q;
    wire [5:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp_b;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_notEnable_q;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_inputreg0_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_outputreg0_q;
    wire redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_reset0;
    wire [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_ia;
    wire [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_aa;
    wire [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_ab;
    wire [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_iq;
    wire [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_q;
    wire [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i;
    (* preserve *) reg redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_eq;
    reg [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_wraddr_q;
    wire [5:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_last_q;
    wire [5:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp_b;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmpReg_q;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_notEnable_q;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_sticky_ena_q;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_enaAnd_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_outputreg0_q;
    wire redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_reset0;
    wire [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_ia;
    wire [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_aa;
    wire [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_ab;
    wire [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_iq;
    wire [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_q;
    wire [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_wraddr_q;
    wire [5:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_last_q;
    wire [5:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp_b;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_notEnable_q;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_outputreg0_q;
    wire redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_reset0;
    wire [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_ia;
    wire [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_aa;
    wire [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_ab;
    wire [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_iq;
    wire [31:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_q;
    wire [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_wraddr_q;
    wire [5:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_last_q;
    wire [5:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp_b;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_outputreg0_q;
    wire redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_reset0;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_ia;
    wire [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_aa;
    wire [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_ab;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_iq;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_q;
    wire [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_wraddr_q;
    wire [5:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_last_q;
    wire [5:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp_b;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_outputreg0_q;
    wire redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_reset0;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_ia;
    wire [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_aa;
    wire [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_ab;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_iq;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_q;
    wire [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_wraddr_q;
    wire [5:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_last_q;
    wire [5:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp_b;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_enaAnd_q;
    wire redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_reset0;
    wire [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_ia;
    wire [4:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_aa;
    wire [4:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_ab;
    wire [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_iq;
    wire [31:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_q;
    wire [4:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_i;
    reg [4:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_wraddr_q;
    wire [5:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_last_q;
    wire [5:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp_b;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmpReg_q;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_sticky_ena_q;
    wire [0:0] redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist28_sync_together69_aunroll_x_in_i_valid_1(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together69_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist28_sync_together69_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist29_sync_together69_aunroll_x_in_i_valid_2(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together69_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist29_sync_together69_aunroll_x_in_i_valid_2_q <= $unsigned(redist28_sync_together69_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist30_sync_together69_aunroll_x_in_i_valid_8(DELAY,117)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_sync_together69_aunroll_x_in_i_valid_8 ( .xin(redist29_sync_together69_aunroll_x_in_i_valid_2_q), .xout(redist30_sync_together69_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_sync_together69_aunroll_x_in_i_valid_31(DELAY,118)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist31_sync_together69_aunroll_x_in_i_valid_31 ( .xin(redist30_sync_together69_aunroll_x_in_i_valid_8_q), .xout(redist31_sync_together69_aunroll_x_in_i_valid_31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,74)@54 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist31_sync_together69_aunroll_x_in_i_valid_31_q);
        end
    end

    // redist0_valid_fanout_reg0_q_9(DELAY,87)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_valid_fanout_reg0_q_9 ( .xin(valid_fanout_reg0_q), .xout(redist0_valid_fanout_reg0_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_notEnable(LOGICAL,195)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_nor(LOGICAL,196)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_nor_q = ~ (redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_notEnable_q | redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_sticky_ena_q);

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_cmpReg(REG,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_sticky_ena(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_nor_q == 1'b1)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_sticky_ena_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_cmpReg_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_enaAnd(LOGICAL,198)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_enaAnd_q = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_sticky_ena_q & VCC_q;

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt(COUNTER,192)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_i <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_q = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_i[0:0];

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_nor(LOGICAL,296)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_nor_q = ~ (redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_notEnable_q | redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_sticky_ena_q);

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_last(CONSTANT,292)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp(LOGICAL,293)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp_b = {1'b0, redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_q};
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp_q = $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_last_q == redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmpReg(REG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmpReg_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmp_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_sticky_ena(REG,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_sticky_ena_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_enaAnd(LOGICAL,298)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_enaAnd_q = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt(COUNTER,290)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_q = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_i[4:0];

    // redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_delay_0 <= '0;
            redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_q <= '0;
        end
        else
        begin
            redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_delay_0 <= $unsigned(in_c1_eni2_15_tpl);
            redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_q <= redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_delay_0;
        end
    end

    // redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_delay_0 <= '0;
            redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_q <= '0;
        end
        else
        begin
            redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_delay_0 <= $unsigned(in_c1_eni2_1_tpl);
            redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_q <= redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_delay_0;
        end
    end

    // i_tobool_mask_trunc_windowing41_sel_x(BITSELECT,7)@25
    assign i_tobool_mask_trunc_windowing41_sel_x_b = redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_q[0:0];

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x(MUX,23)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q <= redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q <= redist25_sync_together69_aunroll_x_in_c1_eni2_15_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q <= 32'b0;
            endcase
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_inputreg0(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_wraddr(REG,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_wraddr_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem(DUALMEM,289)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_ia = $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_inputreg0_q);
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_aa = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_wraddr_q;
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_ab = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_rdcnt_q;
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_dmem (
        .clocken1(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_aa),
        .data_a(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_ab),
        .q_b(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_iq),
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
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_q = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_iq[31:0];

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_outputreg0(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_outputreg0_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_mem_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_inputreg0(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_inputreg0_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_wraddr(REG,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_wraddr_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_q);
        end
    end

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem(DUALMEM,191)
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_ia = $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_inputreg0_q);
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_aa = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_wraddr_q;
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_ab = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_rdcnt_q;
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_dmem (
        .clocken1(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_aa),
        .data_a(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_ab),
        .q_b(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_iq),
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
    assign redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_q = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_iq[31:0];

    // redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_outputreg0(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_outputreg0_q <= $unsigned(redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_mem_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_notEnable(LOGICAL,205)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_nor(LOGICAL,206)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_nor_q = ~ (redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_notEnable_q | redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_sticky_ena_q);

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_cmpReg(REG,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_sticky_ena(REG,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_nor_q == 1'b1)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_sticky_ena_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_cmpReg_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_enaAnd(LOGICAL,208)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_enaAnd_q = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_sticky_ena_q & VCC_q;

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt(COUNTER,202)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_i <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_q = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_i[0:0];

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_nor(LOGICAL,308)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_nor_q = ~ (redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_notEnable_q | redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_sticky_ena_q);

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_last(CONSTANT,304)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp(LOGICAL,305)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp_b = {1'b0, redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_q};
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp_q = $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_last_q == redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmpReg(REG,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmpReg_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmp_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_sticky_ena(REG,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_sticky_ena_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_enaAnd(LOGICAL,310)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_enaAnd_q = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt(COUNTER,302)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_q = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_i[4:0];

    // redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_delay_0 <= '0;
            redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_q <= '0;
        end
        else
        begin
            redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_delay_0 <= $unsigned(in_c1_eni2_14_tpl);
            redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_q <= redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x(MUX,22)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q <= redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q <= redist24_sync_together69_aunroll_x_in_c1_eni2_14_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q <= 32'b0;
            endcase
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_inputreg0(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_wraddr(REG,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_wraddr_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem(DUALMEM,301)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_ia = $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_inputreg0_q);
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_aa = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_wraddr_q;
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_ab = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_rdcnt_q;
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_dmem (
        .clocken1(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_aa),
        .data_a(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_ab),
        .q_b(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_iq),
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
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_q = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_iq[31:0];

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_outputreg0(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_outputreg0_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_mem_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_inputreg0(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_inputreg0_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_wraddr(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_wraddr_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_q);
        end
    end

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem(DUALMEM,201)
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_ia = $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_inputreg0_q);
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_aa = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_wraddr_q;
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_ab = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_rdcnt_q;
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_dmem (
        .clocken1(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_aa),
        .data_a(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_ab),
        .q_b(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_iq),
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
    assign redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_q = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_iq[31:0];

    // redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_outputreg0(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_outputreg0_q <= $unsigned(redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_mem_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_notEnable(LOGICAL,215)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_nor(LOGICAL,216)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_nor_q = ~ (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_notEnable_q | redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_sticky_ena_q);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_cmpReg(REG,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_sticky_ena(REG,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_nor_q == 1'b1)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_sticky_ena_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_cmpReg_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_enaAnd(LOGICAL,218)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_enaAnd_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_sticky_ena_q & VCC_q;

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt(COUNTER,212)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_i <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_i[0:0];

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_nor(LOGICAL,320)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_nor_q = ~ (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_notEnable_q | redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_sticky_ena_q);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_last(CONSTANT,316)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp(LOGICAL,317)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp_b = {1'b0, redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_q};
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp_q = $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_last_q == redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmpReg(REG,318)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmpReg_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmp_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_sticky_ena(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_sticky_ena_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_enaAnd(LOGICAL,322)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_enaAnd_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt(COUNTER,314)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_i[4:0];

    // redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_delay_0 <= '0;
            redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_q <= '0;
        end
        else
        begin
            redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_delay_0 <= $unsigned(in_c1_eni2_13_tpl);
            redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_q <= redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x(MUX,21)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q <= redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q <= redist23_sync_together69_aunroll_x_in_c1_eni2_13_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q <= 32'b0;
            endcase
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_inputreg0(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_wraddr(REG,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_wraddr_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem(DUALMEM,313)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_ia = $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_inputreg0_q);
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_aa = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_wraddr_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_ab = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_rdcnt_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_dmem (
        .clocken1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_aa),
        .data_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_ab),
        .q_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_iq),
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
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_iq[31:0];

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_outputreg0(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_outputreg0_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_mem_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_inputreg0(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_inputreg0_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_wraddr(REG,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_wraddr_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem(DUALMEM,211)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_ia = $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_inputreg0_q);
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_aa = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_wraddr_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_ab = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_rdcnt_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_dmem (
        .clocken1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_aa),
        .data_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_ab),
        .q_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_iq),
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
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_iq[31:0];

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_outputreg0(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_outputreg0_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_mem_q);
        end
    end

    // c_i32_152(CONSTANT,37)
    assign c_i32_152_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg3(REG,77)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,79)@25 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist29_sync_together69_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_2(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_2_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_2_q <= $unsigned(redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_1_q);
        end
    end

    // redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q <= $unsigned(i_tobool_mask_trunc_windowing41_sel_x_b);
        end
    end

    // i_reduction_windowing_2_windowing38(MUX,61)@26
    assign i_reduction_windowing_2_windowing38_s = redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q;
    always @(i_reduction_windowing_2_windowing38_s or redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_2_q or c_i32_054_recast_x_q)
    begin
        unique case (i_reduction_windowing_2_windowing38_s)
            1'b0 : i_reduction_windowing_2_windowing38_q = redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_2_q;
            1'b1 : i_reduction_windowing_2_windowing38_q = c_i32_054_recast_x_q;
            default : i_reduction_windowing_2_windowing38_q = 32'b0;
        endcase
    end

    // i_unnamed_windowing13_vt_const_31(CONSTANT,68)
    assign i_unnamed_windowing13_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // c_i32_353(CONSTANT,38)
    assign c_i32_353_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg1(REG,75)@23 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,80)@24 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist28_sync_together69_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_inc7_windowing42_vt_const_31(CONSTANT,49)
    assign i_inc7_windowing42_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // i_inc7_windowing42_sel_x(BITSELECT,6)@25
    assign i_inc7_windowing42_sel_x_b = {31'b0000000000000000000000000000000, i_tobool_mask_trunc_windowing41_sel_x_b[0:0]};

    // i_inc7_windowing42_vt_select_0(BITSELECT,51)@25
    assign i_inc7_windowing42_vt_select_0_b = i_inc7_windowing42_sel_x_b[0:0];

    // i_inc7_windowing42_vt_join(BITJOIN,50)@25
    assign i_inc7_windowing42_vt_join_q = {i_inc7_windowing42_vt_const_31_q, i_inc7_windowing42_vt_select_0_b};

    // i_acl_2_windowing43(ADD,39)@25
    assign i_acl_2_windowing43_a = {1'b0, redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q};
    assign i_acl_2_windowing43_b = {1'b0, i_inc7_windowing42_vt_join_q};
    assign i_acl_2_windowing43_o = $unsigned(i_acl_2_windowing43_a) + $unsigned(i_acl_2_windowing43_b);
    assign i_acl_2_windowing43_q = i_acl_2_windowing43_o[32:0];

    // bgTrunc_i_acl_2_windowing43_sel_x(BITSELECT,2)@25
    assign bgTrunc_i_acl_2_windowing43_sel_x_b = i_acl_2_windowing43_q[31:0];

    // i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44(BLACKBOX,58)@25
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    streamer_i_llvm_fpga_push_i32_i_1_window0000c_0_push5_windowing0 thei_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44 (
        .in_data_in(bgTrunc_i_acl_2_windowing43_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_feedback_stall_out_5),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12(BLACKBOX,55)@24
    // out out_feedback_stall_out_5@20000000
    streamer_i_llvm_fpga_pop_i32_i_1_windowi0000ic_0_pop5_windowing0 thei_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12 (
        .in_data_in(c_i32_152_q),
        .in_dir(redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1_q),
        .in_feedback_in_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_push5_windowing44_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1(DELAY,89)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out);
        end
    end

    // i_unnamed_windowing13(LOGICAL,67)@25
    assign i_unnamed_windowing13_q = redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_01m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q & c_i32_353_q;

    // i_unnamed_windowing13_vt_select_1(BITSELECT,70)@25
    assign i_unnamed_windowing13_vt_select_1_b = i_unnamed_windowing13_q[1:0];

    // i_unnamed_windowing13_vt_join(BITJOIN,69)@25
    assign i_unnamed_windowing13_vt_join_q = {i_unnamed_windowing13_vt_const_31_q, i_unnamed_windowing13_vt_select_1_b};

    // i_cmp_windowing14(LOGICAL,41)@25 + 1
    assign i_cmp_windowing14_qi = $unsigned(i_unnamed_windowing13_vt_join_q == c_i32_054_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_windowing14_delay ( .xin(i_cmp_windowing14_qi), .xout(i_cmp_windowing14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_selcond_windowing_0_windowing34(LOGICAL,63)@26
    assign i_selcond_windowing_0_windowing34_q = redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q ^ VCC_q;

    // i_selcond_windowing_1_windowing35(LOGICAL,64)@26
    assign i_selcond_windowing_1_windowing35_q = i_selcond_windowing_0_windowing34_q | i_cmp_windowing14_q;

    // i_reduction_windowing_3_windowing39(MUX,62)@26
    assign i_reduction_windowing_3_windowing39_s = i_selcond_windowing_1_windowing35_q;
    always @(i_reduction_windowing_3_windowing39_s or redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1_q or i_reduction_windowing_2_windowing38_q)
    begin
        unique case (i_reduction_windowing_3_windowing39_s)
            1'b0 : i_reduction_windowing_3_windowing39_q = redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1_q;
            1'b1 : i_reduction_windowing_3_windowing39_q = i_reduction_windowing_2_windowing38_q;
            default : i_reduction_windowing_3_windowing39_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40(BLACKBOX,57)@26
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    streamer_i_llvm_fpga_push_i32_count_1_f_0000c_0_push4_windowing0 thei_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40 (
        .in_data_in(i_reduction_windowing_3_windowing39_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_feedback_stall_out_4),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1_q <= '0;
        end
        else
        begin
            redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1_q <= $unsigned(in_c1_eni2_16_tpl);
        end
    end

    // c_i32_054_recast_x(CONSTANT,4)
    assign c_i32_054_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18(BLACKBOX,54)@24
    // out out_feedback_stall_out_4@20000000
    streamer_i_llvm_fpga_pop_i32_count_1_f_m0000ic_0_pop4_windowing0 thei_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18 (
        .in_data_in(c_i32_054_recast_x_q),
        .in_dir(redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1_q),
        .in_feedback_in_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing40_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out);
        end
    end

    // i_inc_i_windowing19(ADD,52)@25
    assign i_inc_i_windowing19_a = {1'b0, redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing18_out_data_out_1_q};
    assign i_inc_i_windowing19_b = {1'b0, c_i32_152_q};
    assign i_inc_i_windowing19_o = $unsigned(i_inc_i_windowing19_a) + $unsigned(i_inc_i_windowing19_b);
    assign i_inc_i_windowing19_q = i_inc_i_windowing19_o[32:0];

    // bgTrunc_i_inc_i_windowing19_sel_x(BITSELECT,3)@25
    assign bgTrunc_i_inc_i_windowing19_sel_x_b = i_inc_i_windowing19_q[31:0];

    // redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_i_windowing19_sel_x_b);
        end
    end

    // i_conv_i_windowing20(BLACKBOX,42)@26
    // out out_primWireOut@42
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv_i_windowing20 (
        .in_0(redist49_bgTrunc_i_inc_i_windowing19_sel_x_b_1_q),
        .out_primWireOut(i_conv_i_windowing20_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_conv_i_windowing20_out_primWireOut_1(DELAY,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_conv_i_windowing20_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist8_i_conv_i_windowing20_out_primWireOut_1_q <= $unsigned(i_conv_i_windowing20_out_primWireOut);
        end
    end

    // valid_fanout_reg2(REG,76)@31 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist30_sync_together69_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg4(REG,78)@54 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist31_sync_together69_aunroll_x_in_i_valid_31_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_notEnable(LOGICAL,158)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_nor(LOGICAL,159)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_nor_q = ~ (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_notEnable_q | redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_sticky_ena_q);

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_last(CONSTANT,155)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_last_q = $unsigned(6'b010000);

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp(LOGICAL,156)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp_b = {1'b0, redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_q};
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp_q = $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_last_q == redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp_b ? 1'b1 : 1'b0);

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmpReg(REG,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmpReg_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmp_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_sticky_ena(REG,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_nor_q == 1'b1)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_sticky_ena_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_cmpReg_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_enaAnd(LOGICAL,161)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_enaAnd_q = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_sticky_ena_q & VCC_q;

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt(COUNTER,153)
    // low=0, high=17, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i <= 5'd0;
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i == 5'd16)
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_eq <= 1'b0;
            end
            if (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_eq == 1'b1)
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i) + $unsigned(5'd15);
            end
            else
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_q = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_i[4:0];

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_inputreg0(DELAY,150)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_inputreg0_q <= $unsigned(redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_1_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_wraddr(REG,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_wraddr_q <= $unsigned(5'b10001);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_wraddr_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem(DUALMEM,152)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_ia = $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_inputreg0_q);
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_aa = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_wraddr_q;
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_ab = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_rdcnt_q;
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(18),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(18),
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
    ) redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_dmem (
        .clocken1(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_aa),
        .data_a(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_ab),
        .q_b(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_iq),
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
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_q = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_iq[31:0];

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_outputreg0(DELAY,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_outputreg0_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_mem_q);
        end
    end

    // redist46_i_tobool_mask_trunc_windowing41_sel_x_b_8(DELAY,133)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist46_i_tobool_mask_trunc_windowing41_sel_x_b_8 ( .xin(redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q), .xout(redist46_i_tobool_mask_trunc_windowing41_sel_x_b_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist47_i_tobool_mask_trunc_windowing41_sel_x_b_29(DELAY,134)
    dspba_delay_ver #( .width(1), .depth(21), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist47_i_tobool_mask_trunc_windowing41_sel_x_b_29 ( .xin(redist46_i_tobool_mask_trunc_windowing41_sel_x_b_8_q), .xout(redist47_i_tobool_mask_trunc_windowing41_sel_x_b_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_windowing_0_windowing33(MUX,59)@54 + 1
    assign i_reduction_windowing_0_windowing33_s = redist47_i_tobool_mask_trunc_windowing41_sel_x_b_29_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_reduction_windowing_0_windowing33_q <= 32'b0;
        end
        else
        begin
            unique case (i_reduction_windowing_0_windowing33_s)
                1'b0 : i_reduction_windowing_0_windowing33_q <= redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_22_outputreg0_q;
                1'b1 : i_reduction_windowing_0_windowing33_q <= c_float_0_000000e_0055_q;
                default : i_reduction_windowing_0_windowing33_q <= 32'b0;
            endcase
        end
    end

    // redist1_i_selcond_windowing_1_windowing35_q_29(DELAY,88)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_i_selcond_windowing_1_windowing35_q_29 ( .xin(i_selcond_windowing_1_windowing35_q), .xout(redist1_i_selcond_windowing_1_windowing35_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_windowing_1_windowing36(MUX,60)@55
    assign i_reduction_windowing_1_windowing36_s = redist1_i_selcond_windowing_1_windowing35_q_29_q;
    always @(i_reduction_windowing_1_windowing36_s or redist9_i_add_i_windowing17_out_primWireOut_1_q or i_reduction_windowing_0_windowing33_q)
    begin
        unique case (i_reduction_windowing_1_windowing36_s)
            1'b0 : i_reduction_windowing_1_windowing36_q = redist9_i_add_i_windowing17_out_primWireOut_1_q;
            1'b1 : i_reduction_windowing_1_windowing36_q = i_reduction_windowing_0_windowing33_q;
            default : i_reduction_windowing_1_windowing36_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37(BLACKBOX,56)@55
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    streamer_i_llvm_fpga_push_f32_sum_1_f_m_0000c_0_push3_windowing0 thei_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37 (
        .in_data_in(i_reduction_windowing_1_windowing36_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_feedback_stall_out_3),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together69_aunroll_x_in_c1_eni2_16_tpl_9(DELAY,114)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_sync_together69_aunroll_x_in_c1_eni2_16_tpl_9 ( .xin(redist26_sync_together69_aunroll_x_in_c1_eni2_16_tpl_1_q), .xout(redist27_sync_together69_aunroll_x_in_c1_eni2_16_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_float_0_000000e_0055(FLOATCONSTANT,28)
    assign c_float_0_000000e_0055_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16(BLACKBOX,53)@32
    // out out_feedback_stall_out_3@20000000
    streamer_i_llvm_fpga_pop_f32_sum_1_f_m_a0000ic_0_pop3_windowing0 thei_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16 (
        .in_data_in(c_float_0_000000e_0055_q),
        .in_dir(redist27_sync_together69_aunroll_x_in_c1_eni2_16_tpl_9_q),
        .in_feedback_in_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing37_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out);
        end
    end

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_notEnable(LOGICAL,172)
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_nor(LOGICAL,173)
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_nor_q = ~ (redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_notEnable_q | redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_sticky_ena_q);

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_last(CONSTANT,169)
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_last_q = $unsigned(4'b0101);

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp(LOGICAL,170)
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp_b = {1'b0, redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_q};
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp_q = $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_last_q == redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmpReg(REG,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmpReg_q <= $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmp_q);
        end
    end

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_sticky_ena(REG,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_nor_q == 1'b1)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_sticky_ena_q <= $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_cmpReg_q);
        end
    end

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_enaAnd(LOGICAL,175)
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_enaAnd_q = redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_sticky_ena_q & VCC_q;

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt(COUNTER,167)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i <= 3'd0;
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i == 3'd5)
            begin
                redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i <= $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i <= $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_q = redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_i[2:0];

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_inputreg0(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_inputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_inputreg0_q <= $unsigned(in_c1_eni2_4_tpl);
        end
    end

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_wraddr(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_wraddr_q <= $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_q);
        end
    end

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem(DUALMEM,166)
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_ia = $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_inputreg0_q);
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_aa = redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_wraddr_q;
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_ab = redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_rdcnt_q;
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(7),
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
    ) redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_dmem (
        .clocken1(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_aa),
        .data_a(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_ab),
        .q_b(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_iq),
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
    assign redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_q = redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_iq[31:0];

    // redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0_q <= $unsigned(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_mem_q);
        end
    end

    // i_add_i_windowing17(BLACKBOX,40)@33
    // out out_primWireOut@54
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00003a0054c2a6344c246w65 thei_add_i_windowing17 (
        .in_0(redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0_q),
        .in_1(redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing16_out_data_out_1_q),
        .out_primWireOut(i_add_i_windowing17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_add_i_windowing17_out_primWireOut_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_add_i_windowing17_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist9_i_add_i_windowing17_out_primWireOut_1_q <= $unsigned(i_add_i_windowing17_out_primWireOut);
        end
    end

    // i_div_i_windowing21(BLACKBOX,43)@43
    // in in_0@55
    // out out_primWireOut@63
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000b0c2463a0054c2a6355y thei_div_i_windowing21 (
        .in_0(redist9_i_add_i_windowing17_out_primWireOut_1_q),
        .in_1(redist8_i_conv_i_windowing20_out_primWireOut_1_q),
        .out_primWireOut(i_div_i_windowing21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_div_i_windowing21_out_primWireOut_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_div_i_windowing21_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist7_i_div_i_windowing21_out_primWireOut_1_q <= $unsigned(i_div_i_windowing21_out_primWireOut);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_notEnable(LOGICAL,185)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_nor(LOGICAL,186)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_nor_q = ~ (redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_notEnable_q | redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_sticky_ena_q);

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_last(CONSTANT,182)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_last_q = $unsigned(3'b011);

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmp(LOGICAL,183)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmp_q = $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_last_q == redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_q ? 1'b1 : 1'b0);

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmpReg(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmpReg_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmp_q);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_sticky_ena(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_nor_q == 1'b1)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_sticky_ena_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_cmpReg_q);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_enaAnd(LOGICAL,188)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_enaAnd_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_sticky_ena_q & VCC_q;

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt(COUNTER,180)
    // low=0, high=4, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i <= 3'd0;
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i == 3'd3)
            begin
                redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_eq <= 1'b0;
            end
            if (redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_eq == 1'b1)
            begin
                redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i) + $unsigned(3'd4);
            end
            else
            begin
                redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_i[2:0];

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_nor(LOGICAL,438)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_nor_q = ~ (redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_notEnable_q | redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_sticky_ena_q);

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_last(CONSTANT,434)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_last_q = $unsigned(6'b011110);

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp(LOGICAL,435)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp_b = {1'b0, redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_q};
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp_q = $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_last_q == redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmpReg(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmpReg_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmp_q);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_sticky_ena(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_nor_q == 1'b1)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_sticky_ena_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_cmpReg_q);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_enaAnd(LOGICAL,440)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_enaAnd_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_sticky_ena_q & VCC_q;

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt(COUNTER,432)
    // low=0, high=31, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_i <= 5'd0;
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_i <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_i) + $unsigned(5'd1);
        end
    end
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_i[4:0];

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_inputreg0(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_inputreg0_q <= '0;
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_inputreg0_q <= $unsigned(in_c1_eni2_12_tpl);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_wraddr(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_wraddr_q <= $unsigned(5'b11111);
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_wraddr_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_q);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem(DUALMEM,431)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_ia = $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_inputreg0_q);
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_aa = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_wraddr_q;
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_ab = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_rdcnt_q;
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(32),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(32),
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
    ) redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_dmem (
        .clocken1(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_aa),
        .data_a(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_ab),
        .q_b(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_iq),
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
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_iq[31:0];

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_wraddr(REG,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_wraddr_q <= $unsigned(3'b100);
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_wraddr_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_q);
        end
    end

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem(DUALMEM,179)
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_ia = $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_split_0_mem_q);
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_aa = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_wraddr_q;
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_ab = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_rdcnt_q;
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(5),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(5),
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
    ) redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_dmem (
        .clocken1(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_aa),
        .data_a(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_ab),
        .q_b(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_iq),
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
    assign redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_iq[31:0];

    // redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_outputreg0(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_outputreg0_q <= '0;
        end
        else
        begin
            redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_outputreg0_q <= $unsigned(redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_mem_q);
        end
    end

    // redist48_i_tobool_mask_trunc_windowing41_sel_x_b_39(DELAY,135)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_i_tobool_mask_trunc_windowing41_sel_x_b_39 ( .xin(redist47_i_tobool_mask_trunc_windowing41_sel_x_b_29_q), .xout(redist48_i_tobool_mask_trunc_windowing41_sel_x_b_39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x(MUX,20)@64
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_s = redist48_i_tobool_mask_trunc_windowing41_sel_x_b_39_q;
    always @(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_s or redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_outputreg0_q or redist7_i_div_i_windowing21_out_primWireOut_1_q)
    begin
        unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_s)
            1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_q = redist22_sync_together69_aunroll_x_in_c1_eni2_12_tpl_41_outputreg0_q;
            1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_q = redist7_i_div_i_windowing21_out_primWireOut_1_q;
            default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_q = 32'b0;
        endcase
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_notEnable(LOGICAL,225)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_nor(LOGICAL,226)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_nor_q = ~ (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_notEnable_q | redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_sticky_ena_q);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_cmpReg(REG,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_sticky_ena(REG,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_nor_q == 1'b1)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_sticky_ena_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_cmpReg_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_enaAnd(LOGICAL,228)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_enaAnd_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_sticky_ena_q & VCC_q;

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt(COUNTER,222)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_i <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_i[0:0];

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_nor(LOGICAL,332)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_nor_q = ~ (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_notEnable_q | redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_sticky_ena_q);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_last(CONSTANT,328)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp(LOGICAL,329)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp_b = {1'b0, redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_q};
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp_q = $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_last_q == redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmpReg(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmpReg_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmp_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_sticky_ena(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_sticky_ena_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_enaAnd(LOGICAL,334)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_enaAnd_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt(COUNTER,326)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_i[4:0];

    // redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_delay_0 <= '0;
            redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_delay_0 <= $unsigned(in_c1_eni2_11_tpl);
            redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_q <= redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x(MUX,19)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q <= redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q <= redist21_sync_together69_aunroll_x_in_c1_eni2_11_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q <= 32'b0;
            endcase
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_inputreg0(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_wraddr(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_wraddr_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem(DUALMEM,325)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_ia = $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_inputreg0_q);
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_aa = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_wraddr_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_ab = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_rdcnt_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_dmem (
        .clocken1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_aa),
        .data_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_ab),
        .q_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_iq),
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
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_iq[31:0];

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_outputreg0(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_outputreg0_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_mem_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_inputreg0(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_inputreg0_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_wraddr(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_wraddr_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem(DUALMEM,221)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_ia = $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_inputreg0_q);
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_aa = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_wraddr_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_ab = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_rdcnt_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_dmem (
        .clocken1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_aa),
        .data_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_ab),
        .q_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_iq),
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
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_iq[31:0];

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_outputreg0(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_outputreg0_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_mem_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_notEnable(LOGICAL,343)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_nor(LOGICAL,344)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_nor_q = ~ (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_notEnable_q | redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_sticky_ena_q);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_last(CONSTANT,340)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp(LOGICAL,341)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp_b = {1'b0, redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_q};
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp_q = $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_last_q == redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmpReg(REG,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmpReg_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmp_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_sticky_ena(REG,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_sticky_ena_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_enaAnd(LOGICAL,346)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_enaAnd_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt(COUNTER,338)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_i[4:0];

    // redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2(DELAY,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_delay_0 <= '0;
            redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_delay_0 <= $unsigned(in_c1_eni2_10_tpl);
            redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_q <= redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x(MUX,18)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q <= redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q <= redist20_sync_together69_aunroll_x_in_c1_eni2_10_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q <= 8'b0;
            endcase
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_inputreg0(DELAY,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_wraddr(REG,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_wraddr_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem(DUALMEM,337)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_ia = $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_inputreg0_q);
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_aa = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_wraddr_q;
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_ab = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_rdcnt_q;
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_dmem (
        .clocken1(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_aa),
        .data_a(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_ab),
        .q_b(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_iq),
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
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_iq[7:0];

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_outputreg0(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_outputreg0_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_mem_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_inputreg0(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_inputreg0_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_0 <= '0;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_1 <= '0;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_2 <= '0;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_0 <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_inputreg0_q);
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_1 <= redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_0;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_2 <= redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_1;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_q <= redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_delay_2;
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_notEnable(LOGICAL,355)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_nor(LOGICAL,356)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_nor_q = ~ (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_notEnable_q | redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_sticky_ena_q);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_last(CONSTANT,352)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp(LOGICAL,353)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp_b = {1'b0, redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_q};
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp_q = $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_last_q == redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmpReg(REG,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmpReg_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmp_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_sticky_ena(REG,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_sticky_ena_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_enaAnd(LOGICAL,358)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_enaAnd_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt(COUNTER,350)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_i[4:0];

    // redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_delay_0 <= '0;
            redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_delay_0 <= $unsigned(in_c1_eni2_9_tpl);
            redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_q <= redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x(MUX,17)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q <= redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q <= redist19_sync_together69_aunroll_x_in_c1_eni2_9_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q <= 8'b0;
            endcase
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_inputreg0(DELAY,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_wraddr(REG,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_wraddr_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem(DUALMEM,349)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_ia = $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_inputreg0_q);
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_aa = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_wraddr_q;
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_ab = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_rdcnt_q;
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_dmem (
        .clocken1(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_aa),
        .data_a(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_ab),
        .q_b(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_iq),
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
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_iq[7:0];

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_outputreg0(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_outputreg0_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_mem_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_inputreg0(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_inputreg0_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_0 <= '0;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_1 <= '0;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_2 <= '0;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_0 <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_inputreg0_q);
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_1 <= redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_0;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_2 <= redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_1;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_q <= redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_delay_2;
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_notEnable(LOGICAL,367)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_nor(LOGICAL,368)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_nor_q = ~ (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_notEnable_q | redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_sticky_ena_q);

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_last(CONSTANT,364)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp(LOGICAL,365)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp_b = {1'b0, redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_q};
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp_q = $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_last_q == redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmpReg(REG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmpReg_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmp_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_sticky_ena(REG,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_sticky_ena_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_enaAnd(LOGICAL,370)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_enaAnd_q = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt(COUNTER,362)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_q = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_i[4:0];

    // redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_delay_0 <= '0;
            redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_delay_0 <= $unsigned(in_c1_eni2_8_tpl);
            redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_q <= redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x(MUX,16)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q <= redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q <= redist18_sync_together69_aunroll_x_in_c1_eni2_8_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q <= 8'b0;
            endcase
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_inputreg0(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_wraddr(REG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_wraddr_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem(DUALMEM,361)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_ia = $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_inputreg0_q);
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_aa = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_wraddr_q;
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_ab = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_rdcnt_q;
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_dmem (
        .clocken1(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_aa),
        .data_a(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_ab),
        .q_b(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_iq),
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
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_q = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_iq[7:0];

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_outputreg0(DELAY,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_outputreg0_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_mem_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_inputreg0(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_inputreg0_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_0 <= '0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_1 <= '0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_2 <= '0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_0 <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_inputreg0_q);
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_1 <= redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_2 <= redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_1;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_q <= redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_delay_2;
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_notEnable(LOGICAL,379)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_nor(LOGICAL,380)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_nor_q = ~ (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_notEnable_q | redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_sticky_ena_q);

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_last(CONSTANT,376)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_last_q = $unsigned(6'b011100);

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp(LOGICAL,377)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp_b = {1'b0, redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_q};
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp_q = $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_last_q == redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmpReg(REG,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmpReg_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmp_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_sticky_ena(REG,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_nor_q == 1'b1)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_sticky_ena_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_cmpReg_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_enaAnd(LOGICAL,382)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_enaAnd_q = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_sticky_ena_q & VCC_q;

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt(COUNTER,374)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i <= 5'd0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i == 5'd28)
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_eq == 1'b1)
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_q = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_i[4:0];

    // i_frombool_windowing22_vt_const_7(CONSTANT,45)
    assign i_frombool_windowing22_vt_const_7_q = $unsigned(7'b0000000);

    // i_frombool_windowing22_sel_x(BITSELECT,5)@26
    assign i_frombool_windowing22_sel_x_b = {7'b0000000, i_cmp_windowing14_q[0:0]};

    // i_frombool_windowing22_vt_select_0(BITSELECT,47)@26
    assign i_frombool_windowing22_vt_select_0_b = i_frombool_windowing22_sel_x_b[0:0];

    // i_frombool_windowing22_vt_join(BITJOIN,46)@26
    assign i_frombool_windowing22_vt_join_q = {i_frombool_windowing22_vt_const_7_q, i_frombool_windowing22_vt_select_0_b};

    // redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_0 <= '0;
            redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_1 <= '0;
            redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_q <= '0;
        end
        else
        begin
            redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_0 <= $unsigned(in_c1_eni2_7_tpl);
            redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_1 <= redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_0;
            redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_q <= redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_delay_1;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x(MUX,15)@26 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_s = redist45_i_tobool_mask_trunc_windowing41_sel_x_b_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q <= redist17_sync_together69_aunroll_x_in_c1_eni2_7_tpl_3_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q <= i_frombool_windowing22_vt_join_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q <= 8'b0;
            endcase
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_inputreg0(DELAY,371)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_wraddr(REG,375)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_wraddr_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem(DUALMEM,373)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_ia = $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_inputreg0_q);
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_aa = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_wraddr_q;
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_ab = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_rdcnt_q;
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_dmem (
        .clocken1(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_aa),
        .data_a(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_ab),
        .q_b(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_iq),
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
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_q = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_iq[7:0];

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_outputreg0(DELAY,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_outputreg0_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_mem_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_0 <= '0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_1 <= '0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_2 <= '0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_0 <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_split_0_outputreg0_q);
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_1 <= redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_2 <= redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_1;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_q <= redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_delay_2;
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_notEnable(LOGICAL,391)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_nor(LOGICAL,392)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_nor_q = ~ (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_notEnable_q | redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_sticky_ena_q);

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_last(CONSTANT,388)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp(LOGICAL,389)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp_b = {1'b0, redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_q};
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp_q = $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_last_q == redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmpReg(REG,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmpReg_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmp_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_sticky_ena(REG,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_sticky_ena_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_enaAnd(LOGICAL,394)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_enaAnd_q = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt(COUNTER,386)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_q = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_i[4:0];

    // redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_delay_0 <= '0;
            redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_delay_0 <= $unsigned(in_c1_eni2_6_tpl);
            redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_q <= redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x(MUX,14)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q <= redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q <= redist16_sync_together69_aunroll_x_in_c1_eni2_6_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q <= 8'b0;
            endcase
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_inputreg0(DELAY,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_wraddr(REG,387)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_wraddr_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem(DUALMEM,385)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_ia = $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_inputreg0_q);
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_aa = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_wraddr_q;
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_ab = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_rdcnt_q;
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_dmem (
        .clocken1(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_aa),
        .data_a(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_ab),
        .q_b(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_iq),
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
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_q = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_iq[7:0];

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_outputreg0(DELAY,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_outputreg0_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_mem_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_inputreg0(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_inputreg0_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_0 <= '0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_1 <= '0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_2 <= '0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_0 <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_inputreg0_q);
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_1 <= redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_2 <= redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_1;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_q <= redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_delay_2;
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_notEnable(LOGICAL,239)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_nor(LOGICAL,240)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_nor_q = ~ (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_notEnable_q | redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_sticky_ena_q);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_cmpReg(REG,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_sticky_ena(REG,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_nor_q == 1'b1)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_sticky_ena_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_cmpReg_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_enaAnd(LOGICAL,242)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_enaAnd_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_sticky_ena_q & VCC_q;

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt(COUNTER,236)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_i <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_i[0:0];

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_nor(LOGICAL,404)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_nor_q = ~ (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_notEnable_q | redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_sticky_ena_q);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_last(CONSTANT,400)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp(LOGICAL,401)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp_b = {1'b0, redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_q};
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp_q = $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_last_q == redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmpReg(REG,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmpReg_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmp_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_sticky_ena(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_sticky_ena_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_enaAnd(LOGICAL,406)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_enaAnd_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt(COUNTER,398)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_i[4:0];

    // redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_delay_0 <= '0;
            redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_delay_0 <= $unsigned(in_c1_eni2_5_tpl);
            redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_q <= redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x(MUX,13)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q <= redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q <= redist15_sync_together69_aunroll_x_in_c1_eni2_5_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q <= 32'b0;
            endcase
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_inputreg0(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_wraddr(REG,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_wraddr_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem(DUALMEM,397)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_ia = $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_inputreg0_q);
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_aa = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_wraddr_q;
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_ab = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_rdcnt_q;
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_dmem (
        .clocken1(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_aa),
        .data_a(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_ab),
        .q_b(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_iq),
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
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_iq[31:0];

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_outputreg0(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_outputreg0_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_mem_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_inputreg0(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_inputreg0_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_wraddr(REG,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_wraddr_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem(DUALMEM,235)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_ia = $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_inputreg0_q);
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_aa = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_wraddr_q;
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_ab = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_rdcnt_q;
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_dmem (
        .clocken1(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_aa),
        .data_a(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_ab),
        .q_b(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_iq),
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
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_iq[31:0];

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_outputreg0(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_outputreg0_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_mem_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_notEnable(LOGICAL,251)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_nor(LOGICAL,252)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_nor_q = ~ (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_notEnable_q | redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_sticky_ena_q);

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_last(CONSTANT,248)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_last_q = $unsigned(6'b011001);

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp(LOGICAL,249)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp_b = {1'b0, redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_q};
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp_q = $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_last_q == redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp_b ? 1'b1 : 1'b0);

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmpReg(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmpReg_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmp_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_sticky_ena(REG,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_nor_q == 1'b1)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_sticky_ena_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_cmpReg_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_enaAnd(LOGICAL,254)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_enaAnd_q = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_sticky_ena_q & VCC_q;

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt(COUNTER,246)
    // low=0, high=26, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i <= 5'd0;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i == 5'd25)
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_eq <= 1'b0;
            end
            if (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_eq == 1'b1)
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i) + $unsigned(5'd6);
            end
            else
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_q = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_i[4:0];

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x(MUX,12)@33 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_s = redist46_i_tobool_mask_trunc_windowing41_sel_x_b_8_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q <= redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q <= redist14_sync_together69_aunroll_x_in_c1_eni2_4_tpl_10_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q <= 32'b0;
            endcase
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_inputreg0(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_inputreg0_q <= '0;
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_wraddr(REG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_wraddr_q <= $unsigned(5'b11010);
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_wraddr_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem(DUALMEM,245)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_ia = $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_inputreg0_q);
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_aa = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_wraddr_q;
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_ab = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_rdcnt_q;
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(27),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(27),
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
    ) redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_dmem (
        .clocken1(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_reset0),
        .clock1(clock),
        .address_a(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_aa),
        .data_a(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_ab),
        .q_b(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_iq),
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
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_q = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_iq[31:0];

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_outputreg0(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_outputreg0_q <= '0;
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_outputreg0_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_mem_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_notEnable(LOGICAL,261)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_nor(LOGICAL,262)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_nor_q = ~ (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_notEnable_q | redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_sticky_ena_q);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_cmpReg(REG,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_sticky_ena(REG,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_nor_q == 1'b1)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_sticky_ena_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_cmpReg_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_enaAnd(LOGICAL,264)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_enaAnd_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_sticky_ena_q & VCC_q;

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt(COUNTER,258)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_i <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_i[0:0];

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_nor(LOGICAL,416)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_nor_q = ~ (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_notEnable_q | redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_sticky_ena_q);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_last(CONSTANT,412)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp(LOGICAL,413)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp_b = {1'b0, redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_q};
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp_q = $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_last_q == redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmpReg(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmpReg_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmp_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_sticky_ena(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_sticky_ena_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_enaAnd(LOGICAL,418)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_enaAnd_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt(COUNTER,410)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_i[4:0];

    // redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2(DELAY,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_delay_0 <= '0;
            redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_q <= '0;
        end
        else
        begin
            redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_delay_0 <= $unsigned(in_c1_eni2_3_tpl);
            redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_q <= redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x(MUX,11)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q <= redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q <= redist13_sync_together69_aunroll_x_in_c1_eni2_3_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q <= 32'b0;
            endcase
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_inputreg0(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_wraddr(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_wraddr_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem(DUALMEM,409)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_ia = $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_inputreg0_q);
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_aa = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_wraddr_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_ab = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_rdcnt_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_dmem (
        .clocken1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_aa),
        .data_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_ab),
        .q_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_iq),
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
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_iq[31:0];

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_outputreg0(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_outputreg0_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_mem_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_inputreg0(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_inputreg0_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_wraddr(REG,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_wraddr_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem(DUALMEM,257)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_ia = $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_inputreg0_q);
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_aa = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_wraddr_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_ab = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_rdcnt_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_dmem (
        .clocken1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_aa),
        .data_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_ab),
        .q_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_iq),
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
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_iq[31:0];

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_outputreg0(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_outputreg0_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_mem_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_notEnable(LOGICAL,271)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_nor(LOGICAL,272)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_nor_q = ~ (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_notEnable_q | redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_sticky_ena_q);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_cmpReg(REG,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_sticky_ena(REG,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_nor_q == 1'b1)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_sticky_ena_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_cmpReg_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_enaAnd(LOGICAL,274)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_enaAnd_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_sticky_ena_q & VCC_q;

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt(COUNTER,268)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_i <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_i[0:0];

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_nor(LOGICAL,428)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_nor_q = ~ (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_notEnable_q | redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_sticky_ena_q);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_last(CONSTANT,424)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp(LOGICAL,425)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp_b = {1'b0, redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_q};
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp_q = $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_last_q == redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmpReg(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmpReg_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmp_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_sticky_ena(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_sticky_ena_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_enaAnd(LOGICAL,430)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_enaAnd_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt(COUNTER,422)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_i[4:0];

    // redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_delay_0 <= '0;
            redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_q <= '0;
        end
        else
        begin
            redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_delay_0 <= $unsigned(in_c1_eni2_2_tpl);
            redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_q <= redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_delay_0;
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x(MUX,10)@25 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_s = i_tobool_mask_trunc_windowing41_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q <= redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q <= redist12_sync_together69_aunroll_x_in_c1_eni2_2_tpl_2_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q <= 32'b0;
            endcase
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_inputreg0(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_wraddr(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_wraddr_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem(DUALMEM,421)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_ia = $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_inputreg0_q);
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_aa = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_wraddr_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_ab = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_rdcnt_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_dmem (
        .clocken1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_aa),
        .data_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_ab),
        .q_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_iq),
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
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_iq[31:0];

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_outputreg0(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_outputreg0_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_mem_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_inputreg0(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_inputreg0_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_wraddr(REG,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_wraddr_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem(DUALMEM,267)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_ia = $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_inputreg0_q);
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_aa = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_wraddr_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_ab = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_rdcnt_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
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
    ) redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_dmem (
        .clocken1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_aa),
        .data_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_ab),
        .q_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_iq),
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
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_iq[31:0];

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_outputreg0(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_outputreg0_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_mem_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_notEnable(LOGICAL,283)
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_nor(LOGICAL,284)
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_nor_q = ~ (redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_notEnable_q | redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_sticky_ena_q);

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_last(CONSTANT,280)
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_last_q = $unsigned(6'b011100);

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp(LOGICAL,281)
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp_b = {1'b0, redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_q};
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp_q = $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_last_q == redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmpReg(REG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmpReg_q <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmp_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_sticky_ena(REG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_nor_q == 1'b1)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_sticky_ena_q <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_cmpReg_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_enaAnd(LOGICAL,286)
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_enaAnd_q = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_sticky_ena_q & VCC_q;

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt(COUNTER,278)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i <= 5'd0;
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i == 5'd28)
            begin
                redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_q = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_i[4:0];

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_inputreg0(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_inputreg0_q <= $unsigned(redist10_sync_together69_aunroll_x_in_c1_eni2_1_tpl_2_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_wraddr(REG,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_wraddr_q <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem(DUALMEM,277)
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_ia = $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_inputreg0_q);
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_aa = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_wraddr_q;
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_ab = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_rdcnt_q;
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(5),
        .numwords_a(30),
        .width_b(8),
        .widthad_b(5),
        .numwords_b(30),
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
    ) redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_dmem (
        .clocken1(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_aa),
        .data_a(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_ab),
        .q_b(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_iq),
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
    assign redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_q = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_iq[7:0];

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_outputreg0(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_outputreg0_q <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_mem_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_inputreg0(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_inputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_inputreg0_q <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_split_0_outputreg0_q);
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_0 <= '0;
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_1 <= '0;
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_2 <= '0;
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_q <= '0;
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_0 <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_inputreg0_q);
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_1 <= redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_0;
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_2 <= redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_1;
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_q <= redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_delay_2;
        end
    end

    // redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0_q <= $unsigned(redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x(MUX,9)@64
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_s = redist48_i_tobool_mask_trunc_windowing41_sel_x_b_39_q;
    always @(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_s or redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0_q)
    begin
        unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_s)
            1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_q = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0_q;
            1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_q = redist11_sync_together69_aunroll_x_in_c1_eni2_1_tpl_41_outputreg0_q;
            default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_q = 8'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,24)@64
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_0_x_q;
    assign out_c1_exi1_2_tpl = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_1_x_q_39_outputreg0_q;
    assign out_c1_exi1_3_tpl = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_2_x_q_39_outputreg0_q;
    assign out_c1_exi1_4_tpl = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_3_x_q_31_outputreg0_q;
    assign out_c1_exi1_5_tpl = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_4_x_q_39_outputreg0_q;
    assign out_c1_exi1_6_tpl = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_5_x_q_39_q;
    assign out_c1_exi1_7_tpl = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_6_x_q_38_q;
    assign out_c1_exi1_8_tpl = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_7_x_q_39_q;
    assign out_c1_exi1_9_tpl = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_8_x_q_39_q;
    assign out_c1_exi1_10_tpl = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_9_x_q_39_q;
    assign out_c1_exi1_11_tpl = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_10_x_q_39_outputreg0_q;
    assign out_c1_exi1_12_tpl = i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_11_x_q;
    assign out_c1_exi1_13_tpl = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_12_x_q_39_outputreg0_q;
    assign out_c1_exi1_14_tpl = redist33_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_13_x_q_39_outputreg0_q;
    assign out_c1_exi1_15_tpl = redist32_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing32_14_x_q_39_outputreg0_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_9_q;
    assign out_unnamed_windowing0 = GND_q;

endmodule
