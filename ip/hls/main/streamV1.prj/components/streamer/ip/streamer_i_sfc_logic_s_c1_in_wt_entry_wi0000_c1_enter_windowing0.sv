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
// SystemVerilog created on Sun Jan  1 13:31:30 2023


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
    wire [31:0] bgTrunc_i_acl_2_windowing44_sel_x_b;
    wire [31:0] bgTrunc_i_inc_i_windowing20_sel_x_b;
    wire [31:0] c_i32_055_recast_x_q;
    wire [7:0] i_frombool_windowing23_sel_x_b;
    wire [31:0] i_inc7_windowing43_sel_x_b;
    wire [0:0] i_tobool_mask_trunc_windowing42_sel_x_b;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_s;
    reg [7:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q;
    wire [0:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_s;
    reg [31:0] i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q;
    wire [31:0] c_float_0_000000e_0056_q;
    wire [31:0] c_i32_153_q;
    wire [31:0] c_i32_354_q;
    wire [32:0] i_acl_2_windowing44_a;
    wire [32:0] i_acl_2_windowing44_b;
    logic [32:0] i_acl_2_windowing44_o;
    wire [32:0] i_acl_2_windowing44_q;
    wire [31:0] i_add_i_windowing18_out_primWireOut;
    wire [0:0] i_cmp_windowing14_qi;
    reg [0:0] i_cmp_windowing14_q;
    wire [31:0] i_conv_i_windowing21_out_primWireOut;
    wire [31:0] i_conv_windowing16_out_primWireOut;
    wire [31:0] i_div_i_windowing22_out_primWireOut;
    wire [6:0] i_frombool_windowing23_vt_const_7_q;
    wire [7:0] i_frombool_windowing23_vt_join_q;
    wire [0:0] i_frombool_windowing23_vt_select_0_b;
    wire [30:0] i_inc7_windowing43_vt_const_31_q;
    wire [31:0] i_inc7_windowing43_vt_join_q;
    wire [0:0] i_inc7_windowing43_vt_select_0_b;
    wire [32:0] i_inc_i_windowing20_a;
    wire [32:0] i_inc_i_windowing20_b;
    logic [32:0] i_inc_i_windowing20_o;
    wire [32:0] i_inc_i_windowing20_q;
    wire [31:0] i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_feedback_stall_out_4;
    wire [31:0] i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_feedback_stall_out_5;
    wire [31:0] i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45_out_feedback_valid_out_5;
    wire [0:0] i_reduction_windowing_0_windowing34_s;
    reg [31:0] i_reduction_windowing_0_windowing34_q;
    wire [0:0] i_reduction_windowing_1_windowing37_s;
    reg [31:0] i_reduction_windowing_1_windowing37_q;
    wire [0:0] i_reduction_windowing_2_windowing39_s;
    reg [31:0] i_reduction_windowing_2_windowing39_q;
    wire [0:0] i_reduction_windowing_3_windowing40_s;
    reg [31:0] i_reduction_windowing_3_windowing40_q;
    wire [0:0] i_selcond_windowing_0_windowing35_q;
    wire [0:0] i_selcond_windowing_1_windowing36_q;
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
    reg [0:0] redist1_i_selcond_windowing_1_windowing36_q_29_q;
    reg [31:0] redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q;
    reg [31:0] redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_1_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_2_q;
    reg [31:0] redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_1_q;
    reg [31:0] redist7_i_div_i_windowing22_out_primWireOut_1_q;
    reg [31:0] redist8_i_conv_windowing16_out_primWireOut_1_q;
    reg [31:0] redist9_i_conv_i_windowing21_out_primWireOut_1_q;
    reg [31:0] redist10_i_add_i_windowing18_out_primWireOut_1_q;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_q;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_0;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_1;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_2;
    reg [0:0] redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8_q;
    reg [0:0] redist28_sync_together70_aunroll_x_in_c1_eni2_16_tpl_16_q;
    reg [0:0] redist29_sync_together70_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist30_sync_together70_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist31_sync_together70_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist32_sync_together70_aunroll_x_in_i_valid_15_q;
    reg [0:0] redist33_sync_together70_aunroll_x_in_i_valid_38_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_0;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_1;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_2;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_0;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_1;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_2;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_0;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_1;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_2;
    reg [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_q;
    reg [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_0;
    reg [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_1;
    reg [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_2;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_q;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_0;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_1;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_2;
    reg [0:0] redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q;
    reg [0:0] redist48_i_tobool_mask_trunc_windowing42_sel_x_b_29_q;
    reg [0:0] redist49_i_tobool_mask_trunc_windowing42_sel_x_b_39_q;
    reg [31:0] redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_inputreg0_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_outputreg0_q;
    wire redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_reset0;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_ia;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_aa;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_ab;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_iq;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_q;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_q;
    (* preserve *) reg [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i;
    (* preserve *) reg redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_eq;
    reg [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_wraddr_q;
    wire [5:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_last_q;
    wire [5:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp_b;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmpReg_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_notEnable_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_sticky_ena_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_enaAnd_q;
    reg [7:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_inputreg0_q;
    reg [7:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_outputreg0_q;
    wire redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_reset0;
    wire [7:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_ia;
    wire [2:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_aa;
    wire [2:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_ab;
    wire [7:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_iq;
    wire [7:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_q;
    wire [2:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i;
    (* preserve *) reg redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_eq;
    reg [2:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_wraddr_q;
    wire [3:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_last_q;
    wire [3:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp_b;
    wire [0:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmpReg_q;
    wire [0:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_notEnable_q;
    wire [0:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_sticky_ena_q;
    wire [0:0] redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_enaAnd_q;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_inputreg0_q;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0_q;
    reg [31:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_inputreg0_q;
    reg [31:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_outputreg0_q;
    wire redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_reset0;
    wire [31:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_ia;
    wire [2:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_aa;
    wire [2:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_ab;
    wire [31:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_iq;
    wire [31:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_q;
    wire [2:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i;
    (* preserve *) reg redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_eq;
    reg [2:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_wraddr_q;
    wire [3:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_last_q;
    wire [3:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp_b;
    wire [0:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmpReg_q;
    wire [0:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_notEnable_q;
    wire [0:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_sticky_ena_q;
    wire [0:0] redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_enaAnd_q;
    reg [31:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_inputreg0_q;
    reg [31:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_outputreg0_q;
    wire redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_reset0;
    wire [31:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_ia;
    wire [2:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_aa;
    wire [2:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_ab;
    wire [31:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_iq;
    wire [31:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_q;
    wire [2:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i;
    (* preserve *) reg redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_eq;
    reg [2:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_wraddr_q;
    wire [3:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_last_q;
    wire [3:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp_b;
    wire [0:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmpReg_q;
    wire [0:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_notEnable_q;
    wire [0:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_sticky_ena_q;
    wire [0:0] redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_enaAnd_q;
    reg [31:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_inputreg0_q;
    reg [31:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_outputreg0_q;
    wire redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_reset0;
    wire [31:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_ia;
    wire [2:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_aa;
    wire [2:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_ab;
    wire [31:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_iq;
    wire [31:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_q;
    wire [2:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i;
    (* preserve *) reg redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_eq;
    reg [2:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_wraddr_q;
    wire [3:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_last_q;
    wire [3:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp_b;
    wire [0:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmpReg_q;
    wire [0:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_notEnable_q;
    wire [0:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_sticky_ena_q;
    wire [0:0] redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_enaAnd_q;
    reg [31:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_inputreg0_q;
    reg [31:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_outputreg0_q;
    wire redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_reset0;
    wire [31:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_ia;
    wire [2:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_aa;
    wire [2:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_ab;
    wire [31:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_iq;
    wire [31:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_q;
    wire [2:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i;
    (* preserve *) reg redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_eq;
    reg [2:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_wraddr_q;
    wire [3:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_last_q;
    wire [3:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp_b;
    wire [0:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmpReg_q;
    wire [0:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_notEnable_q;
    wire [0:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_sticky_ena_q;
    wire [0:0] redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_enaAnd_q;
    reg [7:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_inputreg0_q;
    reg [7:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_outputreg0_q;
    wire redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_reset0;
    wire [7:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_ia;
    wire [2:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_aa;
    wire [2:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_ab;
    wire [7:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_iq;
    wire [7:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_q;
    wire [2:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i;
    (* preserve *) reg redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_eq;
    reg [2:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_wraddr_q;
    wire [3:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_last_q;
    wire [3:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp_b;
    wire [0:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmpReg_q;
    wire [0:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_notEnable_q;
    wire [0:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_sticky_ena_q;
    wire [0:0] redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_enaAnd_q;
    reg [7:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_inputreg0_q;
    reg [7:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_outputreg0_q;
    wire redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_reset0;
    wire [7:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_ia;
    wire [2:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_aa;
    wire [2:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_ab;
    wire [7:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_iq;
    wire [7:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_q;
    wire [2:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_q;
    (* preserve *) reg [2:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i;
    (* preserve *) reg redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_eq;
    reg [2:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_wraddr_q;
    wire [3:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_last_q;
    wire [3:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp_b;
    wire [0:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp_q;
    (* dont_merge *) reg [0:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmpReg_q;
    wire [0:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_notEnable_q;
    wire [0:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_nor_q;
    (* dont_merge *) reg [0:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_sticky_ena_q;
    wire [0:0] redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_enaAnd_q;
    reg [7:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_inputreg0_q;
    reg [7:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_outputreg0_q;
    wire redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_reset0;
    wire [7:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_ia;
    wire [2:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_aa;
    wire [2:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_ab;
    wire [7:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_iq;
    wire [7:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_q;
    wire [2:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i;
    (* preserve *) reg redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_eq;
    reg [2:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_wraddr_q;
    wire [3:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_last_q;
    wire [3:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp_b;
    wire [0:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmpReg_q;
    wire [0:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_notEnable_q;
    wire [0:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_sticky_ena_q;
    wire [0:0] redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_enaAnd_q;
    reg [7:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_inputreg0_q;
    reg [7:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_outputreg0_q;
    wire redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_reset0;
    wire [7:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_ia;
    wire [2:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_aa;
    wire [2:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_ab;
    wire [7:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_iq;
    wire [7:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_q;
    wire [2:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i;
    (* preserve *) reg redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_eq;
    reg [2:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_wraddr_q;
    wire [3:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_last_q;
    wire [3:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp_b;
    wire [0:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmpReg_q;
    wire [0:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_notEnable_q;
    wire [0:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_sticky_ena_q;
    wire [0:0] redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_enaAnd_q;
    reg [7:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_inputreg0_q;
    reg [7:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_outputreg0_q;
    wire redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_reset0;
    wire [7:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_ia;
    wire [2:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_aa;
    wire [2:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_ab;
    wire [7:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_iq;
    wire [7:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_q;
    wire [2:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i;
    (* preserve *) reg redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_eq;
    reg [2:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_wraddr_q;
    wire [3:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_last_q;
    wire [3:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp_b;
    wire [0:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmpReg_q;
    wire [0:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_notEnable_q;
    wire [0:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_sticky_ena_q;
    wire [0:0] redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_enaAnd_q;
    reg [31:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_inputreg0_q;
    reg [31:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_outputreg0_q;
    wire redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_reset0;
    wire [31:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_ia;
    wire [2:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_aa;
    wire [2:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_ab;
    wire [31:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_iq;
    wire [31:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_q;
    wire [2:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i;
    (* preserve *) reg redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_eq;
    reg [2:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_wraddr_q;
    wire [3:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_last_q;
    wire [3:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp_b;
    wire [0:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmpReg_q;
    wire [0:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_notEnable_q;
    wire [0:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_sticky_ena_q;
    wire [0:0] redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_enaAnd_q;
    reg [31:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_inputreg0_q;
    reg [31:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_outputreg0_q;
    wire redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_reset0;
    wire [31:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_ia;
    wire [5:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_aa;
    wire [5:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_ab;
    wire [31:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_iq;
    wire [31:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_q;
    wire [5:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_q;
    (* preserve *) reg [5:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i;
    (* preserve *) reg redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_eq;
    reg [5:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_wraddr_q;
    wire [6:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_last_q;
    wire [6:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp_b;
    wire [0:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp_q;
    reg [0:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmpReg_q;
    wire [0:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_notEnable_q;
    wire [0:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_nor_q;
    reg [0:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_sticky_ena_q;
    wire [0:0] redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_enaAnd_q;
    reg [31:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_inputreg0_q;
    reg [31:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_outputreg0_q;
    wire redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_reset0;
    wire [31:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_ia;
    wire [2:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_aa;
    wire [2:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_ab;
    wire [31:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_iq;
    wire [31:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_q;
    wire [2:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i;
    (* preserve *) reg redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_eq;
    reg [2:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_wraddr_q;
    wire [3:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_last_q;
    wire [3:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp_b;
    wire [0:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmpReg_q;
    wire [0:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_notEnable_q;
    wire [0:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_sticky_ena_q;
    wire [0:0] redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_enaAnd_q;
    reg [31:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_inputreg0_q;
    reg [31:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_outputreg0_q;
    wire redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_reset0;
    wire [31:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_ia;
    wire [2:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_aa;
    wire [2:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_ab;
    wire [31:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_iq;
    wire [31:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_q;
    wire [2:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i;
    (* preserve *) reg redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_eq;
    reg [2:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_wraddr_q;
    wire [3:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_last_q;
    wire [3:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp_b;
    wire [0:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmpReg_q;
    wire [0:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_notEnable_q;
    wire [0:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_sticky_ena_q;
    wire [0:0] redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_enaAnd_q;
    reg [31:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_inputreg0_q;
    reg [31:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_outputreg0_q;
    wire redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_reset0;
    wire [31:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_ia;
    wire [2:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_aa;
    wire [2:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_ab;
    wire [31:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_iq;
    wire [31:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_q;
    wire [2:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i;
    (* preserve *) reg redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_eq;
    reg [2:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_wraddr_q;
    wire [3:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_last_q;
    wire [3:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp_b;
    wire [0:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmpReg_q;
    wire [0:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_notEnable_q;
    wire [0:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_sticky_ena_q;
    wire [0:0] redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_enaAnd_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_inputreg0_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_outputreg0_q;
    wire redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_reset0;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_ia;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_aa;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_ab;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_iq;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_i;
    reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_cmpReg_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_notEnable_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_sticky_ena_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_enaAnd_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_inputreg0_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_outputreg0_q;
    wire redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_reset0;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_ia;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_aa;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_ab;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_iq;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_i;
    reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_cmpReg_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_notEnable_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_sticky_ena_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_enaAnd_q;
    reg [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_inputreg0_q;
    reg [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_outputreg0_q;
    wire redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_reset0;
    wire [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_ia;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_aa;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_ab;
    wire [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_iq;
    wire [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_i;
    reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_cmpReg_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_notEnable_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_sticky_ena_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_enaAnd_q;
    reg [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_inputreg0_q;
    reg [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_outputreg0_q;
    wire redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_reset0;
    wire [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_ia;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_aa;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_ab;
    wire [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_iq;
    wire [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_i;
    reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_cmpReg_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_notEnable_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_sticky_ena_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_enaAnd_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_inputreg0_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_inputreg0_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_inputreg0_q;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_inputreg0_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_inputreg0_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_outputreg0_q;
    wire redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_reset0;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_ia;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_aa;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_ab;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_iq;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_i;
    reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_cmpReg_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_notEnable_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_sticky_ena_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_enaAnd_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_inputreg0_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_outputreg0_q;
    wire redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_reset0;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_ia;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_aa;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_ab;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_iq;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_i;
    reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_cmpReg_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_notEnable_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_sticky_ena_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_enaAnd_q;
    reg [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_inputreg0_q;
    reg [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_outputreg0_q;
    wire redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_reset0;
    wire [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_ia;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_aa;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_ab;
    wire [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_iq;
    wire [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_q;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_i;
    reg [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_cmpReg_q;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_notEnable_q;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_sticky_ena_q;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_enaAnd_q;
    reg [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_inputreg0_q;
    reg [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_outputreg0_q;
    wire redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_reset0;
    wire [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_ia;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_aa;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_ab;
    wire [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_iq;
    wire [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_q;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_q;
    (* preserve *) reg [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_i;
    reg [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_wraddr_q;
    (* dont_merge *) reg [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_cmpReg_q;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_notEnable_q;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_nor_q;
    (* dont_merge *) reg [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_sticky_ena_q;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_enaAnd_q;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_inputreg0_q;
    reg [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_outputreg0_q;
    wire redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_reset0;
    wire [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_ia;
    wire [4:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_aa;
    wire [4:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_ab;
    wire [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_iq;
    wire [7:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_q;
    wire [4:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i;
    (* preserve *) reg redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_eq;
    reg [4:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_wraddr_q;
    wire [5:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_last_q;
    wire [5:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp_b;
    wire [0:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmpReg_q;
    wire [0:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_notEnable_q;
    wire [0:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_sticky_ena_q;
    wire [0:0] redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_enaAnd_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_outputreg0_q;
    wire redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_reset0;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_ia;
    wire [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_aa;
    wire [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_ab;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_iq;
    wire [31:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_q;
    wire [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_wraddr_q;
    wire [5:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_last_q;
    wire [5:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp_b;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_outputreg0_q;
    wire redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_reset0;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_ia;
    wire [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_aa;
    wire [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_ab;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_iq;
    wire [31:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_q;
    wire [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_wraddr_q;
    wire [5:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_last_q;
    wire [5:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp_b;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_outputreg0_q;
    wire redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_reset0;
    wire [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_ia;
    wire [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_aa;
    wire [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_ab;
    wire [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_iq;
    wire [31:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_q;
    wire [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_wraddr_q;
    wire [5:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_last_q;
    wire [5:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp_b;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_outputreg0_q;
    wire redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_reset0;
    wire [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_ia;
    wire [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_aa;
    wire [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_ab;
    wire [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_iq;
    wire [31:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_q;
    wire [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_wraddr_q;
    wire [5:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_last_q;
    wire [5:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp_b;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_outputreg0_q;
    wire redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_reset0;
    wire [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_ia;
    wire [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_aa;
    wire [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_ab;
    wire [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_iq;
    wire [7:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_q;
    wire [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_wraddr_q;
    wire [5:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_last_q;
    wire [5:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp_b;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_notEnable_q;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_outputreg0_q;
    wire redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_reset0;
    wire [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_ia;
    wire [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_aa;
    wire [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_ab;
    wire [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_iq;
    wire [7:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_q;
    wire [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_wraddr_q;
    wire [5:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_last_q;
    wire [5:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp_b;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_notEnable_q;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_outputreg0_q;
    wire redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_reset0;
    wire [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_ia;
    wire [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_aa;
    wire [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_ab;
    wire [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_iq;
    wire [7:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_q;
    wire [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_wraddr_q;
    wire [5:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_last_q;
    wire [5:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp_b;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_notEnable_q;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_enaAnd_q;
    reg [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_inputreg0_q;
    reg [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_outputreg0_q;
    wire redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_reset0;
    wire [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_ia;
    wire [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_aa;
    wire [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_ab;
    wire [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_iq;
    wire [7:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_q;
    wire [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i;
    (* preserve *) reg redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_eq;
    reg [4:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_wraddr_q;
    wire [5:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_last_q;
    wire [5:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp_b;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmpReg_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_notEnable_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_sticky_ena_q;
    wire [0:0] redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_enaAnd_q;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_inputreg0_q;
    reg [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_outputreg0_q;
    wire redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_reset0;
    wire [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_ia;
    wire [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_aa;
    wire [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_ab;
    wire [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_iq;
    wire [7:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_q;
    wire [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_wraddr_q;
    wire [5:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_last_q;
    wire [5:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp_b;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_notEnable_q;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_outputreg0_q;
    wire redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_reset0;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_ia;
    wire [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_aa;
    wire [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_ab;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_iq;
    wire [31:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_q;
    wire [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_wraddr_q;
    wire [5:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_last_q;
    wire [5:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp_b;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_outputreg0_q;
    wire redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_reset0;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_ia;
    wire [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_aa;
    wire [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_ab;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_iq;
    wire [31:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_q;
    wire [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_wraddr_q;
    wire [5:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_last_q;
    wire [5:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp_b;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_outputreg0_q;
    wire redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_reset0;
    wire [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_ia;
    wire [4:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_aa;
    wire [4:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_ab;
    wire [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_iq;
    wire [31:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_q;
    wire [4:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_wraddr_q;
    wire [5:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_last_q;
    wire [5:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp_b;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_enaAnd_q;
    reg [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_inputreg0_q;
    reg [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_outputreg0_q;
    wire redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_reset0;
    wire [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_ia;
    wire [4:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_aa;
    wire [4:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_ab;
    wire [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_iq;
    wire [31:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_q;
    wire [4:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i;
    (* preserve *) reg redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_eq;
    reg [4:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_wraddr_q;
    wire [5:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_last_q;
    wire [5:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp_b;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmpReg_q;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_sticky_ena_q;
    wire [0:0] redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist29_sync_together70_aunroll_x_in_i_valid_7(DELAY,118)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_sync_together70_aunroll_x_in_i_valid_7 ( .xin(in_i_valid), .xout(redist29_sync_together70_aunroll_x_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_sync_together70_aunroll_x_in_i_valid_8(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together70_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist30_sync_together70_aunroll_x_in_i_valid_8_q <= $unsigned(redist29_sync_together70_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist31_sync_together70_aunroll_x_in_i_valid_9(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together70_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist31_sync_together70_aunroll_x_in_i_valid_9_q <= $unsigned(redist30_sync_together70_aunroll_x_in_i_valid_8_q);
        end
    end

    // redist32_sync_together70_aunroll_x_in_i_valid_15(DELAY,121)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_sync_together70_aunroll_x_in_i_valid_15 ( .xin(redist31_sync_together70_aunroll_x_in_i_valid_9_q), .xout(redist32_sync_together70_aunroll_x_in_i_valid_15_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_sync_together70_aunroll_x_in_i_valid_38(DELAY,122)
    dspba_delay_ver #( .width(1), .depth(23), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist33_sync_together70_aunroll_x_in_i_valid_38 ( .xin(redist32_sync_together70_aunroll_x_in_i_valid_15_q), .xout(redist33_sync_together70_aunroll_x_in_i_valid_38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,76)@61 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist33_sync_together70_aunroll_x_in_i_valid_38_q);
        end
    end

    // redist0_valid_fanout_reg0_q_9(DELAY,89)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_valid_fanout_reg0_q_9 ( .xin(valid_fanout_reg0_q), .xout(redist0_valid_fanout_reg0_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_notEnable(LOGICAL,354)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_nor(LOGICAL,355)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_nor_q = ~ (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_notEnable_q | redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_sticky_ena_q);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_cmpReg(REG,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_sticky_ena(REG,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_nor_q == 1'b1)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_sticky_ena_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_cmpReg_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_enaAnd(LOGICAL,357)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_enaAnd_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_sticky_ena_q & VCC_q;

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt(COUNTER,351)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_i <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_i[0:0];

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_nor(LOGICAL,453)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_nor_q = ~ (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_notEnable_q | redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_sticky_ena_q);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_last(CONSTANT,449)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp(LOGICAL,450)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp_b = {1'b0, redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_q};
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp_q = $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_last_q == redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmpReg(REG,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmpReg_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmp_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_sticky_ena(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_sticky_ena_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_enaAnd(LOGICAL,455)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_enaAnd_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt(COUNTER,447)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_i[4:0];

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_notEnable(LOGICAL,344)
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_nor(LOGICAL,345)
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_nor_q = ~ (redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_notEnable_q | redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_sticky_ena_q);

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_last(CONSTANT,341)
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp(LOGICAL,342)
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp_b = {1'b0, redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_q};
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp_q = $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_last_q == redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmpReg(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmpReg_q <= $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmp_q);
        end
    end

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_sticky_ena(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_nor_q == 1'b1)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_sticky_ena_q <= $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_cmpReg_q);
        end
    end

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_enaAnd(LOGICAL,347)
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_enaAnd_q = redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_sticky_ena_q & VCC_q;

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt(COUNTER,339)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i <= 3'd0;
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i == 3'd4)
            begin
                redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i <= $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i <= $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_q = redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_i[2:0];

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_inputreg0(DELAY,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_15_tpl);
        end
    end

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_wraddr(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_wraddr_q <= $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_q);
        end
    end

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem(DUALMEM,338)
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_ia = $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_inputreg0_q);
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_aa = redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_wraddr_q;
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_ab = redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_rdcnt_q;
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_dmem (
        .clocken1(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_aa),
        .data_a(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_ab),
        .q_b(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_iq),
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
    assign redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_q = redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_iq[31:0];

    // redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_outputreg0(DELAY,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_outputreg0_q <= $unsigned(redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_mem_q);
        end
    end

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_notEnable(LOGICAL,174)
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_nor(LOGICAL,175)
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_nor_q = ~ (redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_notEnable_q | redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_sticky_ena_q);

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_last(CONSTANT,171)
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp(LOGICAL,172)
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp_b = {1'b0, redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_q};
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp_q = $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_last_q == redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmpReg(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmpReg_q <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmp_q);
        end
    end

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_sticky_ena(REG,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_nor_q == 1'b1)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_sticky_ena_q <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_cmpReg_q);
        end
    end

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_enaAnd(LOGICAL,177)
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_enaAnd_q = redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_sticky_ena_q & VCC_q;

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt(COUNTER,169)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i <= 3'd0;
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i == 3'd4)
            begin
                redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_q = redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_i[2:0];

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_inputreg0(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_wraddr(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_wraddr_q <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_q);
        end
    end

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem(DUALMEM,168)
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_ia = $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_inputreg0_q);
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_aa = redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_wraddr_q;
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_ab = redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_rdcnt_q;
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_dmem (
        .clocken1(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_aa),
        .data_a(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_ab),
        .q_b(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_iq),
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
    assign redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_q = redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_iq[7:0];

    // redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_outputreg0(DELAY,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_outputreg0_q <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_mem_q);
        end
    end

    // i_tobool_mask_trunc_windowing42_sel_x(BITSELECT,8)@32
    assign i_tobool_mask_trunc_windowing42_sel_x_b = redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_outputreg0_q[0:0];

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x(MUX,24)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q <= redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q <= redist26_sync_together70_aunroll_x_in_c1_eni2_15_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q <= 32'b0;
            endcase
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_inputreg0(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_wraddr(REG,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_wraddr_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem(DUALMEM,446)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_ia = $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_inputreg0_q);
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_aa = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_wraddr_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_ab = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_rdcnt_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_dmem (
        .clocken1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_aa),
        .data_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_ab),
        .q_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_iq),
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
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_iq[31:0];

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_outputreg0(DELAY,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_outputreg0_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_mem_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_inputreg0(DELAY,348)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_inputreg0_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_wraddr(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_wraddr_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_q);
        end
    end

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem(DUALMEM,350)
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_ia = $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_inputreg0_q);
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_aa = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_wraddr_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_ab = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_rdcnt_q;
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_dmem (
        .clocken1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_aa),
        .data_a(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_ab),
        .q_b(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_iq),
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
    assign redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_q = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_iq[31:0];

    // redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_outputreg0(DELAY,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_outputreg0_q <= $unsigned(redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_mem_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_notEnable(LOGICAL,364)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_nor(LOGICAL,365)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_nor_q = ~ (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_notEnable_q | redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_sticky_ena_q);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_cmpReg(REG,363)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_sticky_ena(REG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_nor_q == 1'b1)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_sticky_ena_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_cmpReg_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_enaAnd(LOGICAL,367)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_enaAnd_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_sticky_ena_q & VCC_q;

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt(COUNTER,361)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_i <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_i[0:0];

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_nor(LOGICAL,465)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_nor_q = ~ (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_notEnable_q | redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_sticky_ena_q);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_last(CONSTANT,461)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp(LOGICAL,462)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp_b = {1'b0, redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_q};
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp_q = $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_last_q == redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmpReg(REG,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmpReg_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmp_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_sticky_ena(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_sticky_ena_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_enaAnd(LOGICAL,467)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_enaAnd_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt(COUNTER,459)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_i[4:0];

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_notEnable(LOGICAL,332)
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_nor(LOGICAL,333)
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_nor_q = ~ (redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_notEnable_q | redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_sticky_ena_q);

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_last(CONSTANT,329)
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp(LOGICAL,330)
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp_b = {1'b0, redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_q};
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp_q = $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_last_q == redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmpReg(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmpReg_q <= $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmp_q);
        end
    end

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_sticky_ena(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_nor_q == 1'b1)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_sticky_ena_q <= $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_cmpReg_q);
        end
    end

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_enaAnd(LOGICAL,335)
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_enaAnd_q = redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_sticky_ena_q & VCC_q;

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt(COUNTER,327)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i <= 3'd0;
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i == 3'd4)
            begin
                redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i <= $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i <= $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_q = redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_i[2:0];

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_inputreg0(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_14_tpl);
        end
    end

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_wraddr(REG,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_wraddr_q <= $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_q);
        end
    end

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem(DUALMEM,326)
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_ia = $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_inputreg0_q);
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_aa = redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_wraddr_q;
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_ab = redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_rdcnt_q;
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_dmem (
        .clocken1(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_aa),
        .data_a(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_ab),
        .q_b(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_iq),
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
    assign redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_q = redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_iq[31:0];

    // redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_outputreg0(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_outputreg0_q <= $unsigned(redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x(MUX,23)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q <= redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q <= redist25_sync_together70_aunroll_x_in_c1_eni2_14_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q <= 32'b0;
            endcase
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_inputreg0(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_wraddr(REG,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_wraddr_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem(DUALMEM,458)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_ia = $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_inputreg0_q);
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_aa = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_wraddr_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_ab = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_rdcnt_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_dmem (
        .clocken1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_aa),
        .data_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_ab),
        .q_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_iq),
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
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_iq[31:0];

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_outputreg0(DELAY,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_outputreg0_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_mem_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_inputreg0(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_inputreg0_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_wraddr(REG,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_wraddr_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_q);
        end
    end

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem(DUALMEM,360)
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_ia = $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_inputreg0_q);
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_aa = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_wraddr_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_ab = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_rdcnt_q;
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_dmem (
        .clocken1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_aa),
        .data_a(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_ab),
        .q_b(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_iq),
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
    assign redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_q = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_iq[31:0];

    // redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_outputreg0(DELAY,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_outputreg0_q <= $unsigned(redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_mem_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_notEnable(LOGICAL,374)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_nor(LOGICAL,375)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_nor_q = ~ (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_notEnable_q | redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_sticky_ena_q);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_cmpReg(REG,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_sticky_ena(REG,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_nor_q == 1'b1)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_sticky_ena_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_cmpReg_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_enaAnd(LOGICAL,377)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_enaAnd_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_sticky_ena_q & VCC_q;

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt(COUNTER,371)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_i <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_i[0:0];

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_nor(LOGICAL,477)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_nor_q = ~ (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_notEnable_q | redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_sticky_ena_q);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_last(CONSTANT,473)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp(LOGICAL,474)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp_b = {1'b0, redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_q};
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp_q = $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_last_q == redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmpReg(REG,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmpReg_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmp_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_sticky_ena(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_sticky_ena_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_enaAnd(LOGICAL,479)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_enaAnd_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt(COUNTER,471)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_i[4:0];

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_notEnable(LOGICAL,320)
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_nor(LOGICAL,321)
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_nor_q = ~ (redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_notEnable_q | redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_sticky_ena_q);

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_last(CONSTANT,317)
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp(LOGICAL,318)
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp_b = {1'b0, redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_q};
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp_q = $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_last_q == redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmpReg(REG,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmpReg_q <= $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmp_q);
        end
    end

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_sticky_ena(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_nor_q == 1'b1)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_sticky_ena_q <= $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_cmpReg_q);
        end
    end

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_enaAnd(LOGICAL,323)
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_enaAnd_q = redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_sticky_ena_q & VCC_q;

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt(COUNTER,315)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i <= 3'd0;
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i == 3'd4)
            begin
                redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i <= $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i <= $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_q = redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_i[2:0];

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_inputreg0(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_13_tpl);
        end
    end

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_wraddr(REG,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_wraddr_q <= $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_q);
        end
    end

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem(DUALMEM,314)
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_ia = $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_inputreg0_q);
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_aa = redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_wraddr_q;
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_ab = redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_rdcnt_q;
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_dmem (
        .clocken1(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_aa),
        .data_a(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_ab),
        .q_b(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_iq),
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
    assign redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_q = redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_iq[31:0];

    // redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_outputreg0(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_outputreg0_q <= $unsigned(redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x(MUX,22)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q <= redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q <= redist24_sync_together70_aunroll_x_in_c1_eni2_13_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q <= 32'b0;
            endcase
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_inputreg0(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_wraddr(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_wraddr_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem(DUALMEM,470)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_ia = $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_inputreg0_q);
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_aa = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_wraddr_q;
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_ab = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_rdcnt_q;
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_dmem (
        .clocken1(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_aa),
        .data_a(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_ab),
        .q_b(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_iq),
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
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_iq[31:0];

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_outputreg0(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_outputreg0_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_mem_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_inputreg0(DELAY,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_inputreg0_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_wraddr(REG,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_wraddr_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_q);
        end
    end

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem(DUALMEM,370)
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_ia = $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_inputreg0_q);
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_aa = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_wraddr_q;
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_ab = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_rdcnt_q;
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_dmem (
        .clocken1(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_aa),
        .data_a(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_ab),
        .q_b(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_iq),
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
    assign redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_q = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_iq[31:0];

    // redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_outputreg0(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_outputreg0_q <= $unsigned(redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_mem_q);
        end
    end

    // c_i32_153(CONSTANT,38)
    assign c_i32_153_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg3(REG,79)@30 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist29_sync_together70_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg5(REG,81)@32 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist31_sync_together70_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_2(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_2_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_2_q <= $unsigned(redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_1_q);
        end
    end

    // redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q <= $unsigned(i_tobool_mask_trunc_windowing42_sel_x_b);
        end
    end

    // i_reduction_windowing_2_windowing39(MUX,63)@33
    assign i_reduction_windowing_2_windowing39_s = redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q;
    always @(i_reduction_windowing_2_windowing39_s or redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_2_q or c_i32_055_recast_x_q)
    begin
        unique case (i_reduction_windowing_2_windowing39_s)
            1'b0 : i_reduction_windowing_2_windowing39_q = redist4_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_2_q;
            1'b1 : i_reduction_windowing_2_windowing39_q = c_i32_055_recast_x_q;
            default : i_reduction_windowing_2_windowing39_q = 32'b0;
        endcase
    end

    // i_unnamed_windowing13_vt_const_31(CONSTANT,70)
    assign i_unnamed_windowing13_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // c_i32_354(CONSTANT,39)
    assign c_i32_354_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg1(REG,77)@30 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist29_sync_together70_aunroll_x_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg6(REG,82)@31 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist30_sync_together70_aunroll_x_in_i_valid_8_q);
        end
    end

    // i_inc7_windowing43_vt_const_31(CONSTANT,51)
    assign i_inc7_windowing43_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // i_inc7_windowing43_sel_x(BITSELECT,7)@32
    assign i_inc7_windowing43_sel_x_b = {31'b0000000000000000000000000000000, i_tobool_mask_trunc_windowing42_sel_x_b[0:0]};

    // i_inc7_windowing43_vt_select_0(BITSELECT,53)@32
    assign i_inc7_windowing43_vt_select_0_b = i_inc7_windowing43_sel_x_b[0:0];

    // i_inc7_windowing43_vt_join(BITJOIN,52)@32
    assign i_inc7_windowing43_vt_join_q = {i_inc7_windowing43_vt_const_31_q, i_inc7_windowing43_vt_select_0_b};

    // i_acl_2_windowing44(ADD,40)@32
    assign i_acl_2_windowing44_a = {1'b0, redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q};
    assign i_acl_2_windowing44_b = {1'b0, i_inc7_windowing43_vt_join_q};
    assign i_acl_2_windowing44_o = $unsigned(i_acl_2_windowing44_a) + $unsigned(i_acl_2_windowing44_b);
    assign i_acl_2_windowing44_q = i_acl_2_windowing44_o[32:0];

    // bgTrunc_i_acl_2_windowing44_sel_x(BITSELECT,2)@32
    assign bgTrunc_i_acl_2_windowing44_sel_x_b = i_acl_2_windowing44_q[31:0];

    // i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45(BLACKBOX,60)@32
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    streamer_i_llvm_fpga_push_i32_i_1_window0000c_0_push5_windowing0 thei_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45 (
        .in_data_in(bgTrunc_i_acl_2_windowing44_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_feedback_stall_out_5),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12(BLACKBOX,57)@31
    // out out_feedback_stall_out_5@20000000
    streamer_i_llvm_fpga_pop_i32_i_1_windowi0000ic_0_pop5_windowing0 thei_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12 (
        .in_data_in(c_i32_153_q),
        .in_dir(redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8_q),
        .in_feedback_in_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_push5_windowing45_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out);
        end
    end

    // i_unnamed_windowing13(LOGICAL,69)@32
    assign i_unnamed_windowing13_q = redist2_i_llvm_fpga_pop_i32_i_1_windowing_e_s1_3v_stream_utuple_v_ihc_a_e_s2_3v23_auavg_struct_0a_m_00_yaxxz_4ha_static_0_pop5_windowing12_out_data_out_1_q & c_i32_354_q;

    // i_unnamed_windowing13_vt_select_1(BITSELECT,72)@32
    assign i_unnamed_windowing13_vt_select_1_b = i_unnamed_windowing13_q[1:0];

    // i_unnamed_windowing13_vt_join(BITJOIN,71)@32
    assign i_unnamed_windowing13_vt_join_q = {i_unnamed_windowing13_vt_const_31_q, i_unnamed_windowing13_vt_select_1_b};

    // i_cmp_windowing14(LOGICAL,42)@32 + 1
    assign i_cmp_windowing14_qi = $unsigned(i_unnamed_windowing13_vt_join_q == c_i32_055_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_windowing14_delay ( .xin(i_cmp_windowing14_qi), .xout(i_cmp_windowing14_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_selcond_windowing_0_windowing35(LOGICAL,65)@33
    assign i_selcond_windowing_0_windowing35_q = redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q ^ VCC_q;

    // i_selcond_windowing_1_windowing36(LOGICAL,66)@33
    assign i_selcond_windowing_1_windowing36_q = i_selcond_windowing_0_windowing35_q | i_cmp_windowing14_q;

    // i_reduction_windowing_3_windowing40(MUX,64)@33
    assign i_reduction_windowing_3_windowing40_s = i_selcond_windowing_1_windowing36_q;
    always @(i_reduction_windowing_3_windowing40_s or redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1_q or i_reduction_windowing_2_windowing39_q)
    begin
        unique case (i_reduction_windowing_3_windowing40_s)
            1'b0 : i_reduction_windowing_3_windowing40_q = redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1_q;
            1'b1 : i_reduction_windowing_3_windowing40_q = i_reduction_windowing_2_windowing39_q;
            default : i_reduction_windowing_3_windowing40_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41(BLACKBOX,59)@33
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    streamer_i_llvm_fpga_push_i32_count_1_f_0000c_0_push4_windowing0 thei_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41 (
        .in_data_in(i_reduction_windowing_3_windowing40_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_feedback_stall_out_4),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8(DELAY,116)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8 ( .xin(in_c1_eni2_16_tpl), .xout(redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_055_recast_x(CONSTANT,4)
    assign c_i32_055_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19(BLACKBOX,56)@31
    // out out_feedback_stall_out_4@20000000
    streamer_i_llvm_fpga_pop_i32_count_1_f_m0000ic_0_pop4_windowing0 thei_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19 (
        .in_data_in(c_i32_055_recast_x_q),
        .in_dir(redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8_q),
        .in_feedback_in_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_push4_windowing41_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out);
        end
    end

    // i_inc_i_windowing20(ADD,54)@32
    assign i_inc_i_windowing20_a = {1'b0, redist3_i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing19_out_data_out_1_q};
    assign i_inc_i_windowing20_b = {1'b0, c_i32_153_q};
    assign i_inc_i_windowing20_o = $unsigned(i_inc_i_windowing20_a) + $unsigned(i_inc_i_windowing20_b);
    assign i_inc_i_windowing20_q = i_inc_i_windowing20_o[32:0];

    // bgTrunc_i_inc_i_windowing20_sel_x(BITSELECT,3)@32
    assign bgTrunc_i_inc_i_windowing20_sel_x_b = i_inc_i_windowing20_q[31:0];

    // redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1_q <= $unsigned(bgTrunc_i_inc_i_windowing20_sel_x_b);
        end
    end

    // i_conv_i_windowing21(BLACKBOX,43)@33
    // out out_primWireOut@49
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv_i_windowing21 (
        .in_0(redist50_bgTrunc_i_inc_i_windowing20_sel_x_b_1_q),
        .out_primWireOut(i_conv_i_windowing21_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_conv_i_windowing21_out_primWireOut_1(DELAY,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_conv_i_windowing21_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist9_i_conv_i_windowing21_out_primWireOut_1_q <= $unsigned(i_conv_i_windowing21_out_primWireOut);
        end
    end

    // i_conv_windowing16(BLACKBOX,44)@23
    // out out_primWireOut@39
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv_windowing16 (
        .in_0(in_c1_eni2_2_tpl),
        .out_primWireOut(i_conv_windowing16_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_conv_windowing16_out_primWireOut_1(DELAY,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_conv_windowing16_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist8_i_conv_windowing16_out_primWireOut_1_q <= $unsigned(i_conv_windowing16_out_primWireOut);
        end
    end

    // valid_fanout_reg2(REG,78)@38 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist32_sync_together70_aunroll_x_in_i_valid_15_q);
        end
    end

    // valid_fanout_reg4(REG,80)@61 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist33_sync_together70_aunroll_x_in_i_valid_38_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_notEnable(LOGICAL,162)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_nor(LOGICAL,163)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_nor_q = ~ (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_notEnable_q | redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_sticky_ena_q);

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_last(CONSTANT,159)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_last_q = $unsigned(6'b010000);

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp(LOGICAL,160)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp_b = {1'b0, redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_q};
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp_q = $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_last_q == redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp_b ? 1'b1 : 1'b0);

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmpReg(REG,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmpReg_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmp_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_sticky_ena(REG,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_nor_q == 1'b1)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_sticky_ena_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_cmpReg_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_enaAnd(LOGICAL,165)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_enaAnd_q = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_sticky_ena_q & VCC_q;

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt(COUNTER,157)
    // low=0, high=17, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i <= 5'd0;
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i == 5'd16)
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_eq <= 1'b0;
            end
            if (redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_eq == 1'b1)
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i) + $unsigned(5'd15);
            end
            else
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_q = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_i[4:0];

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_inputreg0(DELAY,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_inputreg0_q <= $unsigned(redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_1_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_wraddr(REG,158)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_wraddr_q <= $unsigned(5'b10001);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_wraddr_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem(DUALMEM,156)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_ia = $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_inputreg0_q);
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_aa = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_wraddr_q;
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_ab = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_rdcnt_q;
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_reset0 = ~ (resetn);
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
    ) redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_dmem (
        .clocken1(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_aa),
        .data_a(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_ab),
        .q_b(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_iq),
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
    assign redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_q = redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_iq[31:0];

    // redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_outputreg0(DELAY,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_outputreg0_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_mem_q);
        end
    end

    // redist48_i_tobool_mask_trunc_windowing42_sel_x_b_29(DELAY,137)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_i_tobool_mask_trunc_windowing42_sel_x_b_29 ( .xin(redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q), .xout(redist48_i_tobool_mask_trunc_windowing42_sel_x_b_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_windowing_0_windowing34(MUX,61)@61 + 1
    assign i_reduction_windowing_0_windowing34_s = redist48_i_tobool_mask_trunc_windowing42_sel_x_b_29_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_reduction_windowing_0_windowing34_q <= 32'b0;
        end
        else
        begin
            unique case (i_reduction_windowing_0_windowing34_s)
                1'b0 : i_reduction_windowing_0_windowing34_q <= redist6_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_22_outputreg0_q;
                1'b1 : i_reduction_windowing_0_windowing34_q <= c_float_0_000000e_0056_q;
                default : i_reduction_windowing_0_windowing34_q <= 32'b0;
            endcase
        end
    end

    // redist1_i_selcond_windowing_1_windowing36_q_29(DELAY,90)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist1_i_selcond_windowing_1_windowing36_q_29 ( .xin(i_selcond_windowing_1_windowing36_q), .xout(redist1_i_selcond_windowing_1_windowing36_q_29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_windowing_1_windowing37(MUX,62)@62
    assign i_reduction_windowing_1_windowing37_s = redist1_i_selcond_windowing_1_windowing36_q_29_q;
    always @(i_reduction_windowing_1_windowing37_s or redist10_i_add_i_windowing18_out_primWireOut_1_q or i_reduction_windowing_0_windowing34_q)
    begin
        unique case (i_reduction_windowing_1_windowing37_s)
            1'b0 : i_reduction_windowing_1_windowing37_q = redist10_i_add_i_windowing18_out_primWireOut_1_q;
            1'b1 : i_reduction_windowing_1_windowing37_q = i_reduction_windowing_0_windowing34_q;
            default : i_reduction_windowing_1_windowing37_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38(BLACKBOX,58)@62
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    streamer_i_llvm_fpga_push_f32_sum_1_f_m_0000c_0_push3_windowing0 thei_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38 (
        .in_data_in(i_reduction_windowing_1_windowing37_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_feedback_stall_out_3),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together70_aunroll_x_in_c1_eni2_16_tpl_16(DELAY,117)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_sync_together70_aunroll_x_in_c1_eni2_16_tpl_16 ( .xin(redist27_sync_together70_aunroll_x_in_c1_eni2_16_tpl_8_q), .xout(redist28_sync_together70_aunroll_x_in_c1_eni2_16_tpl_16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_float_0_000000e_0056(FLOATCONSTANT,29)
    assign c_float_0_000000e_0056_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17(BLACKBOX,55)@39
    // out out_feedback_stall_out_3@20000000
    streamer_i_llvm_fpga_pop_f32_sum_1_f_m_a0000ic_0_pop3_windowing0 thei_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17 (
        .in_data_in(c_float_0_000000e_0056_q),
        .in_dir(redist28_sync_together70_aunroll_x_in_c1_eni2_16_tpl_16_q),
        .in_feedback_in_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_push3_windowing38_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_1(DELAY,94)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out);
        end
    end

    // i_add_i_windowing18(BLACKBOX,41)@40
    // out out_primWireOut@61
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00003a0054c2a6344c246w65 thei_add_i_windowing18 (
        .in_0(redist5_i_llvm_fpga_pop_f32_sum_1_f_m_avg_struct_samm_n_z_4ma_static_0_pop3_windowing17_out_data_out_1_q),
        .in_1(redist8_i_conv_windowing16_out_primWireOut_1_q),
        .out_primWireOut(i_add_i_windowing18_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_add_i_windowing18_out_primWireOut_1(DELAY,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_add_i_windowing18_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist10_i_add_i_windowing18_out_primWireOut_1_q <= $unsigned(i_add_i_windowing18_out_primWireOut);
        end
    end

    // i_div_i_windowing22(BLACKBOX,45)@50
    // in in_0@62
    // out out_primWireOut@70
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000b0c2463a0054c2a6355y thei_div_i_windowing22 (
        .in_0(redist10_i_add_i_windowing18_out_primWireOut_1_q),
        .in_1(redist9_i_conv_i_windowing21_out_primWireOut_1_q),
        .out_primWireOut(i_div_i_windowing22_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_div_i_windowing22_out_primWireOut_1(DELAY,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_div_i_windowing22_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist7_i_div_i_windowing22_out_primWireOut_1_q <= $unsigned(i_div_i_windowing22_out_primWireOut);
        end
    end

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_notEnable(LOGICAL,308)
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_notEnable_q = $unsigned(~ (VCC_q));

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_nor(LOGICAL,309)
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_nor_q = ~ (redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_notEnable_q | redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_sticky_ena_q);

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_last(CONSTANT,305)
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_last_q = $unsigned(7'b0101011);

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp(LOGICAL,306)
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp_b = {1'b0, redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_q};
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp_q = $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_last_q == redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp_b ? 1'b1 : 1'b0);

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmpReg(REG,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmpReg_q <= $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmp_q);
        end
    end

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_sticky_ena(REG,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_nor_q == 1'b1)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_sticky_ena_q <= $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_cmpReg_q);
        end
    end

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_enaAnd(LOGICAL,311)
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_enaAnd_q = redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_sticky_ena_q & VCC_q;

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt(COUNTER,303)
    // low=0, high=44, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i <= 6'd0;
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i == 6'd43)
            begin
                redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_eq <= 1'b0;
            end
            if (redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_eq == 1'b1)
            begin
                redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i <= $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i) + $unsigned(6'd20);
            end
            else
            begin
                redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i <= $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_q = redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_i[5:0];

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_inputreg0(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_inputreg0_q <= '0;
        end
        else
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_inputreg0_q <= $unsigned(in_c1_eni2_12_tpl);
        end
    end

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_wraddr(REG,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_wraddr_q <= $unsigned(6'b101100);
        end
        else
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_wraddr_q <= $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_q);
        end
    end

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem(DUALMEM,302)
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_ia = $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_inputreg0_q);
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_aa = redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_wraddr_q;
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_ab = redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_rdcnt_q;
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(45),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(45),
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
    ) redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_dmem (
        .clocken1(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_reset0),
        .clock1(clock),
        .address_a(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_aa),
        .data_a(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_ab),
        .q_b(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_iq),
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
    assign redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_q = redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_iq[31:0];

    // redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_outputreg0(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_outputreg0_q <= '0;
        end
        else
        begin
            redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_outputreg0_q <= $unsigned(redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_mem_q);
        end
    end

    // redist49_i_tobool_mask_trunc_windowing42_sel_x_b_39(DELAY,138)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist49_i_tobool_mask_trunc_windowing42_sel_x_b_39 ( .xin(redist48_i_tobool_mask_trunc_windowing42_sel_x_b_29_q), .xout(redist49_i_tobool_mask_trunc_windowing42_sel_x_b_39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x(MUX,21)@71
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_s = redist49_i_tobool_mask_trunc_windowing42_sel_x_b_39_q;
    always @(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_s or redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_outputreg0_q or redist7_i_div_i_windowing22_out_primWireOut_1_q)
    begin
        unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_s)
            1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_q = redist23_sync_together70_aunroll_x_in_c1_eni2_12_tpl_48_outputreg0_q;
            1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_q = redist7_i_div_i_windowing22_out_primWireOut_1_q;
            default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_q = 32'b0;
        endcase
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_notEnable(LOGICAL,384)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_nor(LOGICAL,385)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_nor_q = ~ (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_notEnable_q | redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_sticky_ena_q);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_cmpReg(REG,383)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_sticky_ena(REG,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_nor_q == 1'b1)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_sticky_ena_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_cmpReg_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_enaAnd(LOGICAL,387)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_enaAnd_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_sticky_ena_q & VCC_q;

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt(COUNTER,381)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_i <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_i[0:0];

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_nor(LOGICAL,489)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_nor_q = ~ (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_notEnable_q | redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_sticky_ena_q);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_last(CONSTANT,485)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp(LOGICAL,486)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp_b = {1'b0, redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_q};
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp_q = $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_last_q == redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmpReg(REG,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmpReg_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmp_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_sticky_ena(REG,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_sticky_ena_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_enaAnd(LOGICAL,491)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_enaAnd_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt(COUNTER,483)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_i[4:0];

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_notEnable(LOGICAL,296)
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_nor(LOGICAL,297)
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_nor_q = ~ (redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_notEnable_q | redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_sticky_ena_q);

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_last(CONSTANT,293)
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp(LOGICAL,294)
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp_b = {1'b0, redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_q};
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp_q = $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_last_q == redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmpReg(REG,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmpReg_q <= $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmp_q);
        end
    end

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_sticky_ena(REG,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_nor_q == 1'b1)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_sticky_ena_q <= $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_cmpReg_q);
        end
    end

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_enaAnd(LOGICAL,299)
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_enaAnd_q = redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_sticky_ena_q & VCC_q;

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt(COUNTER,291)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i <= 3'd0;
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i == 3'd4)
            begin
                redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i <= $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i <= $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_q = redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_i[2:0];

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_inputreg0(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_11_tpl);
        end
    end

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_wraddr(REG,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_wraddr_q <= $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_q);
        end
    end

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem(DUALMEM,290)
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_ia = $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_inputreg0_q);
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_aa = redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_wraddr_q;
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_ab = redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_rdcnt_q;
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_dmem (
        .clocken1(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_aa),
        .data_a(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_ab),
        .q_b(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_iq),
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
    assign redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_q = redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_iq[31:0];

    // redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_outputreg0(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_outputreg0_q <= $unsigned(redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x(MUX,20)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q <= redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q <= redist22_sync_together70_aunroll_x_in_c1_eni2_11_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q <= 32'b0;
            endcase
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_inputreg0(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_wraddr(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_wraddr_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem(DUALMEM,482)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_ia = $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_inputreg0_q);
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_aa = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_wraddr_q;
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_ab = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_rdcnt_q;
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_dmem (
        .clocken1(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_aa),
        .data_a(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_ab),
        .q_b(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_iq),
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
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_iq[31:0];

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_outputreg0(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_outputreg0_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_mem_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_inputreg0(DELAY,378)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_inputreg0_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_wraddr(REG,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_wraddr_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_q);
        end
    end

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem(DUALMEM,380)
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_ia = $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_inputreg0_q);
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_aa = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_wraddr_q;
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_ab = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_rdcnt_q;
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_dmem (
        .clocken1(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_aa),
        .data_a(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_ab),
        .q_b(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_iq),
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
    assign redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_q = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_iq[31:0];

    // redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_outputreg0(DELAY,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_outputreg0_q <= $unsigned(redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_mem_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_notEnable(LOGICAL,500)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_nor(LOGICAL,501)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_nor_q = ~ (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_notEnable_q | redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_sticky_ena_q);

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_last(CONSTANT,497)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp(LOGICAL,498)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp_b = {1'b0, redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_q};
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp_q = $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_last_q == redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmpReg(REG,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmpReg_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmp_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_sticky_ena(REG,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_sticky_ena_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_enaAnd(LOGICAL,503)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_enaAnd_q = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt(COUNTER,495)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_q = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_i[4:0];

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_notEnable(LOGICAL,284)
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_nor(LOGICAL,285)
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_nor_q = ~ (redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_notEnable_q | redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_sticky_ena_q);

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_last(CONSTANT,281)
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp(LOGICAL,282)
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp_b = {1'b0, redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_q};
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp_q = $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_last_q == redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmpReg(REG,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmpReg_q <= $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmp_q);
        end
    end

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_sticky_ena(REG,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_nor_q == 1'b1)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_sticky_ena_q <= $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_cmpReg_q);
        end
    end

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_enaAnd(LOGICAL,287)
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_enaAnd_q = redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_sticky_ena_q & VCC_q;

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt(COUNTER,279)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i <= 3'd0;
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i == 3'd4)
            begin
                redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i <= $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i <= $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_q = redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_i[2:0];

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_inputreg0(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_10_tpl);
        end
    end

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_wraddr(REG,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_wraddr_q <= $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_q);
        end
    end

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem(DUALMEM,278)
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_ia = $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_inputreg0_q);
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_aa = redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_wraddr_q;
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_ab = redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_rdcnt_q;
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_dmem (
        .clocken1(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_aa),
        .data_a(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_ab),
        .q_b(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_iq),
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
    assign redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_q = redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_iq[7:0];

    // redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_outputreg0(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_outputreg0_q <= $unsigned(redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x(MUX,19)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q <= redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q <= redist21_sync_together70_aunroll_x_in_c1_eni2_10_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q <= 8'b0;
            endcase
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_inputreg0(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_wraddr(REG,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_wraddr_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem(DUALMEM,494)
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_ia = $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_inputreg0_q);
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_aa = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_wraddr_q;
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_ab = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_rdcnt_q;
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_dmem (
        .clocken1(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_aa),
        .data_a(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_ab),
        .q_b(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_iq),
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
    assign redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_q = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_iq[7:0];

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_outputreg0(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_outputreg0_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_mem_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_inputreg0(DELAY,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_inputreg0_q <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_0 <= '0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_1 <= '0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_2 <= '0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_q <= '0;
        end
        else
        begin
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_0 <= $unsigned(redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_inputreg0_q);
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_1 <= redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_0;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_2 <= redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_1;
            redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_q <= redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_delay_2;
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_notEnable(LOGICAL,512)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_nor(LOGICAL,513)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_nor_q = ~ (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_notEnable_q | redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_sticky_ena_q);

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_last(CONSTANT,509)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp(LOGICAL,510)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp_b = {1'b0, redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_q};
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp_q = $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_last_q == redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmpReg(REG,511)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmpReg_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmp_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_sticky_ena(REG,514)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_sticky_ena_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_enaAnd(LOGICAL,515)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_enaAnd_q = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt(COUNTER,507)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_q = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_i[4:0];

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_notEnable(LOGICAL,272)
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_nor(LOGICAL,273)
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_nor_q = ~ (redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_notEnable_q | redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_sticky_ena_q);

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_last(CONSTANT,269)
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp(LOGICAL,270)
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp_b = {1'b0, redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_q};
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp_q = $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_last_q == redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmpReg(REG,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmpReg_q <= $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmp_q);
        end
    end

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_sticky_ena(REG,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_nor_q == 1'b1)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_sticky_ena_q <= $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_cmpReg_q);
        end
    end

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_enaAnd(LOGICAL,275)
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_enaAnd_q = redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_sticky_ena_q & VCC_q;

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt(COUNTER,267)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i <= 3'd0;
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i == 3'd4)
            begin
                redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i <= $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i <= $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_q = redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_i[2:0];

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_inputreg0(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_9_tpl);
        end
    end

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_wraddr(REG,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_wraddr_q <= $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_q);
        end
    end

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem(DUALMEM,266)
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_ia = $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_inputreg0_q);
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_aa = redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_wraddr_q;
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_ab = redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_rdcnt_q;
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_dmem (
        .clocken1(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_aa),
        .data_a(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_ab),
        .q_b(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_iq),
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
    assign redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_q = redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_iq[7:0];

    // redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_outputreg0(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_outputreg0_q <= $unsigned(redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x(MUX,18)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q <= redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q <= redist20_sync_together70_aunroll_x_in_c1_eni2_9_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q <= 8'b0;
            endcase
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_inputreg0(DELAY,504)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_wraddr(REG,508)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_wraddr_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem(DUALMEM,506)
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_ia = $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_inputreg0_q);
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_aa = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_wraddr_q;
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_ab = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_rdcnt_q;
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_dmem (
        .clocken1(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_aa),
        .data_a(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_ab),
        .q_b(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_iq),
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
    assign redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_q = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_iq[7:0];

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_outputreg0(DELAY,505)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_outputreg0_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_mem_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_inputreg0(DELAY,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_inputreg0_q <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_0 <= '0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_1 <= '0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_2 <= '0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_q <= '0;
        end
        else
        begin
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_0 <= $unsigned(redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_inputreg0_q);
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_1 <= redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_0;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_2 <= redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_1;
            redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_q <= redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_delay_2;
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_notEnable(LOGICAL,524)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_nor(LOGICAL,525)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_nor_q = ~ (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_notEnable_q | redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_sticky_ena_q);

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_last(CONSTANT,521)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp(LOGICAL,522)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp_b = {1'b0, redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_q};
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp_q = $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_last_q == redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmpReg(REG,523)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmpReg_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmp_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_sticky_ena(REG,526)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_sticky_ena_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_enaAnd(LOGICAL,527)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_enaAnd_q = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt(COUNTER,519)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_q = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_i[4:0];

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_notEnable(LOGICAL,260)
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_nor(LOGICAL,261)
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_nor_q = ~ (redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_notEnable_q | redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_sticky_ena_q);

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_last(CONSTANT,257)
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp(LOGICAL,258)
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp_b = {1'b0, redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_q};
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp_q = $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_last_q == redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmpReg(REG,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmpReg_q <= $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmp_q);
        end
    end

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_sticky_ena(REG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_nor_q == 1'b1)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_sticky_ena_q <= $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_cmpReg_q);
        end
    end

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_enaAnd(LOGICAL,263)
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_enaAnd_q = redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_sticky_ena_q & VCC_q;

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt(COUNTER,255)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i <= 3'd0;
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i == 3'd4)
            begin
                redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i <= $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i <= $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_q = redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_i[2:0];

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_inputreg0(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_8_tpl);
        end
    end

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_wraddr(REG,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_wraddr_q <= $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_q);
        end
    end

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem(DUALMEM,254)
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_ia = $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_inputreg0_q);
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_aa = redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_wraddr_q;
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_ab = redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_rdcnt_q;
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_dmem (
        .clocken1(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_aa),
        .data_a(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_ab),
        .q_b(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_iq),
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
    assign redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_q = redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_iq[7:0];

    // redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_outputreg0(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_outputreg0_q <= $unsigned(redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x(MUX,17)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q <= redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q <= redist19_sync_together70_aunroll_x_in_c1_eni2_8_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q <= 8'b0;
            endcase
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_inputreg0(DELAY,516)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_wraddr(REG,520)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_wraddr_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem(DUALMEM,518)
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_ia = $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_inputreg0_q);
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_aa = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_wraddr_q;
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_ab = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_rdcnt_q;
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_dmem (
        .clocken1(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_aa),
        .data_a(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_ab),
        .q_b(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_iq),
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
    assign redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_q = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_iq[7:0];

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_outputreg0(DELAY,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_outputreg0_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_mem_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_inputreg0(DELAY,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_inputreg0_q <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_0 <= '0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_1 <= '0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_2 <= '0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_q <= '0;
        end
        else
        begin
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_0 <= $unsigned(redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_inputreg0_q);
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_1 <= redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_0;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_2 <= redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_1;
            redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_q <= redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_delay_2;
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_notEnable(LOGICAL,536)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_nor(LOGICAL,537)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_nor_q = ~ (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_notEnable_q | redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_sticky_ena_q);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_last(CONSTANT,533)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_last_q = $unsigned(6'b011100);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp(LOGICAL,534)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp_b = {1'b0, redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_q};
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp_q = $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_last_q == redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmpReg(REG,535)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmpReg_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmp_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_sticky_ena(REG,538)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_nor_q == 1'b1)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_sticky_ena_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_cmpReg_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_enaAnd(LOGICAL,539)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_enaAnd_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_sticky_ena_q & VCC_q;

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt(COUNTER,531)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i <= 5'd0;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i == 5'd28)
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_eq == 1'b1)
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_i[4:0];

    // i_frombool_windowing23_vt_const_7(CONSTANT,47)
    assign i_frombool_windowing23_vt_const_7_q = $unsigned(7'b0000000);

    // i_frombool_windowing23_sel_x(BITSELECT,6)@33
    assign i_frombool_windowing23_sel_x_b = {7'b0000000, i_cmp_windowing14_q[0:0]};

    // i_frombool_windowing23_vt_select_0(BITSELECT,49)@33
    assign i_frombool_windowing23_vt_select_0_b = i_frombool_windowing23_sel_x_b[0:0];

    // i_frombool_windowing23_vt_join(BITJOIN,48)@33
    assign i_frombool_windowing23_vt_join_q = {i_frombool_windowing23_vt_const_7_q, i_frombool_windowing23_vt_select_0_b};

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_notEnable(LOGICAL,248)
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_nor(LOGICAL,249)
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_nor_q = ~ (redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_notEnable_q | redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_sticky_ena_q);

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_last(CONSTANT,245)
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_last_q = $unsigned(4'b0101);

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp(LOGICAL,246)
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp_b = {1'b0, redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_q};
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp_q = $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_last_q == redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp_b ? 1'b1 : 1'b0);

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmpReg(REG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmpReg_q <= $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmp_q);
        end
    end

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_sticky_ena(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_nor_q == 1'b1)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_sticky_ena_q <= $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_cmpReg_q);
        end
    end

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_enaAnd(LOGICAL,251)
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_enaAnd_q = redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_sticky_ena_q & VCC_q;

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt(COUNTER,243)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i <= 3'd0;
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i == 3'd5)
            begin
                redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_eq <= 1'b0;
            end
            if (redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_eq == 1'b1)
            begin
                redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i <= $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i <= $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_q = redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_i[2:0];

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_inputreg0(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_inputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_inputreg0_q <= $unsigned(in_c1_eni2_7_tpl);
        end
    end

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_wraddr(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_wraddr_q <= $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_q);
        end
    end

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem(DUALMEM,242)
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_ia = $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_inputreg0_q);
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_aa = redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_wraddr_q;
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_ab = redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_rdcnt_q;
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(8),
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
    ) redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_dmem (
        .clocken1(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_reset0),
        .clock1(clock),
        .address_a(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_aa),
        .data_a(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_ab),
        .q_b(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_iq),
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
    assign redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_q = redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_iq[7:0];

    // redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_outputreg0(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_outputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_outputreg0_q <= $unsigned(redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x(MUX,16)@33 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_s = redist47_i_tobool_mask_trunc_windowing42_sel_x_b_1_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q <= redist18_sync_together70_aunroll_x_in_c1_eni2_7_tpl_10_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q <= i_frombool_windowing23_vt_join_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q <= 8'b0;
            endcase
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_inputreg0(DELAY,528)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_wraddr(REG,532)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_wraddr_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem(DUALMEM,530)
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_ia = $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_inputreg0_q);
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_aa = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_wraddr_q;
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_ab = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_rdcnt_q;
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_reset0 = ~ (resetn);
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
    ) redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_dmem (
        .clocken1(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_aa),
        .data_a(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_ab),
        .q_b(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_iq),
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
    assign redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_q = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_iq[7:0];

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_outputreg0(DELAY,529)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_outputreg0_q <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_mem_q);
        end
    end

    // redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_0 <= '0;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_1 <= '0;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_2 <= '0;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_q <= '0;
        end
        else
        begin
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_0 <= $unsigned(redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_split_0_outputreg0_q);
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_1 <= redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_0;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_2 <= redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_1;
            redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_q <= redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_delay_2;
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_notEnable(LOGICAL,548)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_nor(LOGICAL,549)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_nor_q = ~ (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_notEnable_q | redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_sticky_ena_q);

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_last(CONSTANT,545)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp(LOGICAL,546)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp_b = {1'b0, redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_q};
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp_q = $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_last_q == redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmpReg(REG,547)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmpReg_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmp_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_sticky_ena(REG,550)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_sticky_ena_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_enaAnd(LOGICAL,551)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_enaAnd_q = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt(COUNTER,543)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_q = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_i[4:0];

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_notEnable(LOGICAL,236)
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_nor(LOGICAL,237)
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_nor_q = ~ (redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_notEnable_q | redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_sticky_ena_q);

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_last(CONSTANT,233)
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp(LOGICAL,234)
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp_b = {1'b0, redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_q};
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp_q = $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_last_q == redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmpReg(REG,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmpReg_q <= $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmp_q);
        end
    end

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_sticky_ena(REG,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_nor_q == 1'b1)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_sticky_ena_q <= $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_cmpReg_q);
        end
    end

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_enaAnd(LOGICAL,239)
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_enaAnd_q = redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_sticky_ena_q & VCC_q;

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt(COUNTER,231)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i <= 3'd0;
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i == 3'd4)
            begin
                redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i <= $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i <= $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_q = redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_i[2:0];

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_inputreg0(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_6_tpl);
        end
    end

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_wraddr(REG,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_wraddr_q <= $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_q);
        end
    end

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem(DUALMEM,230)
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_ia = $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_inputreg0_q);
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_aa = redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_wraddr_q;
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_ab = redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_rdcnt_q;
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(8),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_dmem (
        .clocken1(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_aa),
        .data_a(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_ab),
        .q_b(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_iq),
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
    assign redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_q = redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_iq[7:0];

    // redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_outputreg0(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_outputreg0_q <= $unsigned(redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x(MUX,15)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q <= 8'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q <= redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q <= redist17_sync_together70_aunroll_x_in_c1_eni2_6_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q <= 8'b0;
            endcase
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_inputreg0(DELAY,540)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_wraddr(REG,544)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_wraddr_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem(DUALMEM,542)
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_ia = $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_inputreg0_q);
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_aa = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_wraddr_q;
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_ab = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_rdcnt_q;
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_dmem (
        .clocken1(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_aa),
        .data_a(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_ab),
        .q_b(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_iq),
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
    assign redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_q = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_iq[7:0];

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_outputreg0(DELAY,541)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_outputreg0_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_mem_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_inputreg0(DELAY,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_inputreg0_q <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_0 <= '0;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_1 <= '0;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_2 <= '0;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_q <= '0;
        end
        else
        begin
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_0 <= $unsigned(redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_inputreg0_q);
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_1 <= redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_0;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_2 <= redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_1;
            redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_q <= redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_delay_2;
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_notEnable(LOGICAL,398)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_nor(LOGICAL,399)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_nor_q = ~ (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_notEnable_q | redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_sticky_ena_q);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_cmpReg(REG,397)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_sticky_ena(REG,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_nor_q == 1'b1)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_sticky_ena_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_cmpReg_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_enaAnd(LOGICAL,401)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_enaAnd_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_sticky_ena_q & VCC_q;

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt(COUNTER,395)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_i <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_i[0:0];

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_nor(LOGICAL,561)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_nor_q = ~ (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_notEnable_q | redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_sticky_ena_q);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_last(CONSTANT,557)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp(LOGICAL,558)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp_b = {1'b0, redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_q};
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp_q = $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_last_q == redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmpReg(REG,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmpReg_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmp_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_sticky_ena(REG,562)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_sticky_ena_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_enaAnd(LOGICAL,563)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_enaAnd_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt(COUNTER,555)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_i[4:0];

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_notEnable(LOGICAL,224)
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_nor(LOGICAL,225)
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_nor_q = ~ (redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_notEnable_q | redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_sticky_ena_q);

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_last(CONSTANT,221)
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp(LOGICAL,222)
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp_b = {1'b0, redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_q};
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp_q = $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_last_q == redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmpReg(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmpReg_q <= $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmp_q);
        end
    end

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_sticky_ena(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_nor_q == 1'b1)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_sticky_ena_q <= $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_cmpReg_q);
        end
    end

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_enaAnd(LOGICAL,227)
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_enaAnd_q = redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_sticky_ena_q & VCC_q;

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt(COUNTER,219)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i <= 3'd0;
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i == 3'd4)
            begin
                redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i <= $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i <= $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_q = redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_i[2:0];

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_inputreg0(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_5_tpl);
        end
    end

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_wraddr(REG,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_wraddr_q <= $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_q);
        end
    end

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem(DUALMEM,218)
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_ia = $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_inputreg0_q);
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_aa = redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_wraddr_q;
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_ab = redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_rdcnt_q;
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_dmem (
        .clocken1(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_aa),
        .data_a(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_ab),
        .q_b(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_iq),
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
    assign redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_q = redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_iq[31:0];

    // redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_outputreg0(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_outputreg0_q <= $unsigned(redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x(MUX,14)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q <= redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q <= redist16_sync_together70_aunroll_x_in_c1_eni2_5_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q <= 32'b0;
            endcase
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_inputreg0(DELAY,552)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_wraddr(REG,556)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_wraddr_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem(DUALMEM,554)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_ia = $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_inputreg0_q);
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_aa = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_wraddr_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_ab = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_rdcnt_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_dmem (
        .clocken1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_aa),
        .data_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_ab),
        .q_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_iq),
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
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_iq[31:0];

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_outputreg0(DELAY,553)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_outputreg0_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_mem_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_inputreg0(DELAY,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_inputreg0_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_wraddr(REG,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_wraddr_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_q);
        end
    end

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem(DUALMEM,394)
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_ia = $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_inputreg0_q);
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_aa = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_wraddr_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_ab = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_rdcnt_q;
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_dmem (
        .clocken1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_aa),
        .data_a(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_ab),
        .q_b(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_iq),
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
    assign redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_q = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_iq[31:0];

    // redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_outputreg0(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_outputreg0_q <= $unsigned(redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_mem_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_notEnable(LOGICAL,408)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_nor(LOGICAL,409)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_nor_q = ~ (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_notEnable_q | redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_sticky_ena_q);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_cmpReg(REG,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_sticky_ena(REG,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_nor_q == 1'b1)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_sticky_ena_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_cmpReg_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_enaAnd(LOGICAL,411)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_enaAnd_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_sticky_ena_q & VCC_q;

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt(COUNTER,405)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_i <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_i[0:0];

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_nor(LOGICAL,573)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_nor_q = ~ (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_notEnable_q | redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_sticky_ena_q);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_last(CONSTANT,569)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp(LOGICAL,570)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp_b = {1'b0, redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_q};
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp_q = $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_last_q == redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmpReg(REG,571)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmpReg_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmp_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_sticky_ena(REG,574)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_sticky_ena_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_enaAnd(LOGICAL,575)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_enaAnd_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt(COUNTER,567)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_i[4:0];

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_notEnable(LOGICAL,212)
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_nor(LOGICAL,213)
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_nor_q = ~ (redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_notEnable_q | redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_sticky_ena_q);

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_last(CONSTANT,209)
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp(LOGICAL,210)
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp_b = {1'b0, redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_q};
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp_q = $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_last_q == redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmpReg(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmpReg_q <= $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmp_q);
        end
    end

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_sticky_ena(REG,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_nor_q == 1'b1)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_sticky_ena_q <= $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_cmpReg_q);
        end
    end

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_enaAnd(LOGICAL,215)
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_enaAnd_q = redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_sticky_ena_q & VCC_q;

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt(COUNTER,207)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i <= 3'd0;
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i == 3'd4)
            begin
                redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i <= $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i <= $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_q = redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_i[2:0];

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_inputreg0(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_4_tpl);
        end
    end

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_wraddr(REG,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_wraddr_q <= $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_q);
        end
    end

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem(DUALMEM,206)
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_ia = $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_inputreg0_q);
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_aa = redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_wraddr_q;
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_ab = redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_rdcnt_q;
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_dmem (
        .clocken1(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_aa),
        .data_a(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_ab),
        .q_b(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_iq),
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
    assign redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_q = redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_iq[31:0];

    // redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_outputreg0(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_outputreg0_q <= $unsigned(redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x(MUX,13)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q <= redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q <= redist15_sync_together70_aunroll_x_in_c1_eni2_4_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q <= 32'b0;
            endcase
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_inputreg0(DELAY,564)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_wraddr(REG,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_wraddr_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem(DUALMEM,566)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_ia = $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_inputreg0_q);
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_aa = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_wraddr_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_ab = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_rdcnt_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_dmem (
        .clocken1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_aa),
        .data_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_ab),
        .q_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_iq),
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
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_iq[31:0];

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_outputreg0(DELAY,565)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_outputreg0_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_mem_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_inputreg0(DELAY,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_inputreg0_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_wraddr(REG,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_wraddr_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_q);
        end
    end

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem(DUALMEM,404)
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_ia = $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_inputreg0_q);
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_aa = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_wraddr_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_ab = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_rdcnt_q;
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_dmem (
        .clocken1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_aa),
        .data_a(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_ab),
        .q_b(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_iq),
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
    assign redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_q = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_iq[31:0];

    // redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_outputreg0(DELAY,403)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_outputreg0_q <= $unsigned(redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_mem_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_notEnable(LOGICAL,418)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_nor(LOGICAL,419)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_nor_q = ~ (redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_notEnable_q | redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_sticky_ena_q);

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_cmpReg(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_sticky_ena(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_nor_q == 1'b1)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_sticky_ena_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_cmpReg_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_enaAnd(LOGICAL,421)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_enaAnd_q = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_sticky_ena_q & VCC_q;

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt(COUNTER,415)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_i <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_q = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_i[0:0];

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_nor(LOGICAL,585)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_nor_q = ~ (redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_notEnable_q | redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_sticky_ena_q);

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_last(CONSTANT,581)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp(LOGICAL,582)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp_b = {1'b0, redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_q};
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp_q = $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_last_q == redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmpReg(REG,583)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmpReg_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmp_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_sticky_ena(REG,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_sticky_ena_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_enaAnd(LOGICAL,587)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_enaAnd_q = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt(COUNTER,579)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_q = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_i[4:0];

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_notEnable(LOGICAL,200)
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_nor(LOGICAL,201)
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_nor_q = ~ (redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_notEnable_q | redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_sticky_ena_q);

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_last(CONSTANT,197)
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp(LOGICAL,198)
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp_b = {1'b0, redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_q};
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp_q = $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_last_q == redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmpReg(REG,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmpReg_q <= $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmp_q);
        end
    end

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_sticky_ena(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_nor_q == 1'b1)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_sticky_ena_q <= $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_cmpReg_q);
        end
    end

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_enaAnd(LOGICAL,203)
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_enaAnd_q = redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_sticky_ena_q & VCC_q;

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt(COUNTER,195)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i <= 3'd0;
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i == 3'd4)
            begin
                redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i <= $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i <= $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_q = redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_i[2:0];

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_inputreg0(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_3_tpl);
        end
    end

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_wraddr(REG,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_wraddr_q <= $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_q);
        end
    end

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem(DUALMEM,194)
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_ia = $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_inputreg0_q);
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_aa = redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_wraddr_q;
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_ab = redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_rdcnt_q;
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_dmem (
        .clocken1(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_aa),
        .data_a(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_ab),
        .q_b(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_iq),
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
    assign redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_q = redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_iq[31:0];

    // redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_outputreg0(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_outputreg0_q <= $unsigned(redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x(MUX,12)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q <= redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q <= redist14_sync_together70_aunroll_x_in_c1_eni2_3_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q <= 32'b0;
            endcase
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_inputreg0(DELAY,576)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_wraddr(REG,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_wraddr_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem(DUALMEM,578)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_ia = $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_inputreg0_q);
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_aa = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_wraddr_q;
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_ab = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_rdcnt_q;
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_dmem (
        .clocken1(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_aa),
        .data_a(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_ab),
        .q_b(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_iq),
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
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_q = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_iq[31:0];

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_outputreg0(DELAY,577)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_outputreg0_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_mem_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_inputreg0(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_inputreg0_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_wraddr(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_wraddr_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_q);
        end
    end

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem(DUALMEM,414)
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_ia = $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_inputreg0_q);
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_aa = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_wraddr_q;
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_ab = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_rdcnt_q;
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_dmem (
        .clocken1(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_aa),
        .data_a(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_ab),
        .q_b(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_iq),
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
    assign redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_q = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_iq[31:0];

    // redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_outputreg0(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_outputreg0_q <= $unsigned(redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_mem_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_notEnable(LOGICAL,428)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_notEnable_q = $unsigned(~ (VCC_q));

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_nor(LOGICAL,429)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_nor_q = ~ (redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_notEnable_q | redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_sticky_ena_q);

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_cmpReg(REG,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_sticky_ena(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_nor_q == 1'b1)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_sticky_ena_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_cmpReg_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_enaAnd(LOGICAL,431)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_enaAnd_q = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_sticky_ena_q & VCC_q;

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt(COUNTER,425)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_i <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_q = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_i[0:0];

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_nor(LOGICAL,597)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_nor_q = ~ (redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_notEnable_q | redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_sticky_ena_q);

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_last(CONSTANT,593)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_last_q = $unsigned(6'b011100);

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp(LOGICAL,594)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp_b = {1'b0, redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_q};
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp_q = $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_last_q == redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmpReg(REG,595)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmpReg_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmp_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_sticky_ena(REG,598)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_nor_q == 1'b1)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_sticky_ena_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_cmpReg_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_enaAnd(LOGICAL,599)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_enaAnd_q = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_sticky_ena_q & VCC_q;

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt(COUNTER,591)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i <= 5'd0;
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i == 5'd28)
            begin
                redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_eq == 1'b1)
            begin
                redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_q = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_i[4:0];

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_notEnable(LOGICAL,188)
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_nor(LOGICAL,189)
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_nor_q = ~ (redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_notEnable_q | redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_sticky_ena_q);

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_last(CONSTANT,185)
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_last_q = $unsigned(4'b0100);

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp(LOGICAL,186)
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp_b = {1'b0, redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_q};
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp_q = $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_last_q == redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmpReg(REG,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmpReg_q <= $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmp_q);
        end
    end

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_sticky_ena(REG,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_nor_q == 1'b1)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_sticky_ena_q <= $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_cmpReg_q);
        end
    end

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_enaAnd(LOGICAL,191)
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_enaAnd_q = redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_sticky_ena_q & VCC_q;

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt(COUNTER,183)
    // low=0, high=5, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i <= 3'd0;
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i == 3'd4)
            begin
                redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_eq <= 1'b0;
            end
            if (redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_eq == 1'b1)
            begin
                redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i <= $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i) + $unsigned(3'd3);
            end
            else
            begin
                redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i <= $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_q = redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_i[2:0];

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_inputreg0(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_inputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_inputreg0_q <= $unsigned(in_c1_eni2_2_tpl);
        end
    end

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_wraddr(REG,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_wraddr_q <= $unsigned(3'b101);
        end
        else
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_wraddr_q <= $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_q);
        end
    end

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem(DUALMEM,182)
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_ia = $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_inputreg0_q);
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_aa = redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_wraddr_q;
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_ab = redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_rdcnt_q;
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(6),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(6),
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
    ) redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_dmem (
        .clocken1(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_aa),
        .data_a(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_ab),
        .q_b(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_iq),
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
    assign redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_q = redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_iq[31:0];

    // redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_outputreg0(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_outputreg0_q <= '0;
        end
        else
        begin
            redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_outputreg0_q <= $unsigned(redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_mem_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x(MUX,11)@32 + 1
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_s = i_tobool_mask_trunc_windowing42_sel_x_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q <= 32'b0;
        end
        else
        begin
            unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_s)
                1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q <= redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_outputreg0_q;
                1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q <= redist13_sync_together70_aunroll_x_in_c1_eni2_2_tpl_9_outputreg0_q;
                default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q <= 32'b0;
            endcase
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_inputreg0(DELAY,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_inputreg0_q <= $unsigned(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_wraddr(REG,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_wraddr_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem(DUALMEM,590)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_ia = $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_inputreg0_q);
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_aa = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_wraddr_q;
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_ab = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_rdcnt_q;
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_reset0 = ~ (resetn);
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
    ) redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_dmem (
        .clocken1(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_aa),
        .data_a(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_ab),
        .q_b(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_iq),
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
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_q = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_iq[31:0];

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_outputreg0(DELAY,589)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_outputreg0_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_mem_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_inputreg0(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_inputreg0_q <= '0;
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_inputreg0_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_split_0_outputreg0_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_wraddr(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_wraddr_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_q);
        end
    end

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem(DUALMEM,424)
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_ia = $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_inputreg0_q);
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_aa = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_wraddr_q;
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_ab = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_rdcnt_q;
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_reset0 = ~ (resetn);
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
    ) redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_dmem (
        .clocken1(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_reset0),
        .clock1(clock),
        .address_a(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_aa),
        .data_a(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_ab),
        .q_b(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_iq),
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
    assign redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_q = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_iq[31:0];

    // redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_outputreg0(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_outputreg0_q <= '0;
        end
        else
        begin
            redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_outputreg0_q <= $unsigned(redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_mem_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_notEnable(LOGICAL,440)
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_notEnable_q = $unsigned(~ (VCC_q));

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_nor(LOGICAL,441)
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_nor_q = ~ (redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_notEnable_q | redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_sticky_ena_q);

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_last(CONSTANT,437)
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_last_q = $unsigned(6'b011100);

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp(LOGICAL,438)
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp_b = {1'b0, redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_q};
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp_q = $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_last_q == redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmpReg(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmpReg_q <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmp_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_sticky_ena(REG,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_nor_q == 1'b1)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_sticky_ena_q <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_cmpReg_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_enaAnd(LOGICAL,443)
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_enaAnd_q = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_sticky_ena_q & VCC_q;

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt(COUNTER,435)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i <= 5'd0;
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i == 5'd28)
            begin
                redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_eq == 1'b1)
            begin
                redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_q = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_i[4:0];

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_inputreg0(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_inputreg0_q <= $unsigned(redist11_sync_together70_aunroll_x_in_c1_eni2_1_tpl_9_outputreg0_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_wraddr(REG,436)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_wraddr_q <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem(DUALMEM,434)
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_ia = $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_inputreg0_q);
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_aa = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_wraddr_q;
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_ab = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_rdcnt_q;
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_reset0 = ~ (resetn);
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
    ) redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_dmem (
        .clocken1(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_aa),
        .data_a(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_ab),
        .q_b(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_iq),
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
    assign redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_q = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_iq[7:0];

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_outputreg0(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_outputreg0_q <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_mem_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_inputreg0(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_inputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_inputreg0_q <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_split_0_outputreg0_q);
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48(DELAY,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_0 <= '0;
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_1 <= '0;
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_2 <= '0;
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_q <= '0;
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_0 <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_inputreg0_q);
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_1 <= redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_0;
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_2 <= redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_1;
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_q <= redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_delay_2;
        end
    end

    // redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0_q <= '0;
        end
        else
        begin
            redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0_q <= $unsigned(redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_q);
        end
    end

    // i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x(MUX,10)@71
    assign i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_s = redist49_i_tobool_mask_trunc_windowing42_sel_x_b_39_q;
    always @(i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_s or redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0_q)
    begin
        unique case (i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_s)
            1'b0 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_q = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0_q;
            1'b1 : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_q = redist12_sync_together70_aunroll_x_in_c1_eni2_1_tpl_48_outputreg0_q;
            default : i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_q = 8'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,25)@71
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_0_x_q;
    assign out_c1_exi1_2_tpl = redist46_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_1_x_q_39_outputreg0_q;
    assign out_c1_exi1_3_tpl = redist45_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_2_x_q_39_outputreg0_q;
    assign out_c1_exi1_4_tpl = redist44_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_3_x_q_39_outputreg0_q;
    assign out_c1_exi1_5_tpl = redist43_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_4_x_q_39_outputreg0_q;
    assign out_c1_exi1_6_tpl = redist42_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_5_x_q_39_q;
    assign out_c1_exi1_7_tpl = redist41_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_6_x_q_38_q;
    assign out_c1_exi1_8_tpl = redist40_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_7_x_q_39_q;
    assign out_c1_exi1_9_tpl = redist39_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_8_x_q_39_q;
    assign out_c1_exi1_10_tpl = redist38_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_9_x_q_39_q;
    assign out_c1_exi1_11_tpl = redist37_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_10_x_q_39_outputreg0_q;
    assign out_c1_exi1_12_tpl = i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_11_x_q;
    assign out_c1_exi1_13_tpl = redist36_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_12_x_q_39_outputreg0_q;
    assign out_c1_exi1_14_tpl = redist35_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_13_x_q_39_outputreg0_q;
    assign out_c1_exi1_15_tpl = redist34_i_writedata5_fca_3_4_insert_or_writedata_fca_3_4_insert_windowing33_14_x_q_39_outputreg0_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_9_q;
    assign out_unnamed_windowing0 = GND_q;

endmodule
