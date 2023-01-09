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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 18 05:37:18 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_ag00001_enter_aggregation0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [7:0] out_c1_exi1_1_tpl,
    output wire [31:0] out_c1_exi1_2_tpl,
    output wire [31:0] out_c1_exi1_3_tpl,
    output wire [31:0] out_c1_exi1_4_tpl,
    output wire [31:0] out_c1_exi1_5_tpl,
    output wire [7:0] out_c1_exi1_6_tpl,
    output wire [31:0] out_c1_exi1_7_tpl,
    output wire [31:0] out_c1_exi1_8_tpl,
    output wire [31:0] out_c1_exi1_9_tpl,
    output wire [31:0] out_c1_exi1_10_tpl,
    output wire [31:0] out_c1_exi1_11_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_aggregation0,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [7:0] in_c1_eni2_1_tpl,
    input wire [31:0] in_c1_eni2_2_tpl,
    input wire [31:0] in_c1_eni2_3_tpl,
    input wire [31:0] in_c1_eni2_4_tpl,
    input wire [31:0] in_c1_eni2_5_tpl,
    input wire [7:0] in_c1_eni2_6_tpl,
    input wire [31:0] in_c1_eni2_7_tpl,
    input wire [31:0] in_c1_eni2_8_tpl,
    input wire [31:0] in_c1_eni2_9_tpl,
    input wire [31:0] in_c1_eni2_10_tpl,
    input wire [31:0] in_c1_eni2_11_tpl,
    input wire [31:0] in_c1_eni2_12_tpl,
    input wire [31:0] in_c1_eni2_13_tpl,
    input wire [0:0] in_c1_eni2_14_tpl,
    input wire [0:0] in_c1_eni2_15_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_091_recast_x_q;
    wire [31:0] c_i32_194_recast_x_q;
    wire [31:0] c_i32_296_recast_x_q;
    wire [31:0] c_i32_397_recast_x_q;
    wire [0:0] dupName_0_comparator_x_qi;
    reg [0:0] dupName_0_comparator_x_q;
    wire [0:0] dupName_1_comparator_x_qi;
    reg [0:0] dupName_1_comparator_x_q;
    wire [0:0] dupName_2_comparator_x_qi;
    reg [0:0] dupName_2_comparator_x_q;
    wire [0:0] dupName_11_comparator_x_qi;
    reg [0:0] dupName_11_comparator_x_q;
    wire [0:0] dupName_12_comparator_x_qi;
    reg [0:0] dupName_12_comparator_x_q;
    wire [0:0] dupName_13_comparator_x_qi;
    reg [0:0] dupName_13_comparator_x_q;
    wire [0:0] dupName_14_comparator_x_qi;
    reg [0:0] dupName_14_comparator_x_q;
    wire [0:0] dupName_15_comparator_x_qi;
    reg [0:0] dupName_15_comparator_x_q;
    wire [0:0] i_tobool_aggregation8_sel_x_b;
    wire [31:0] c_float_0_000000e_0092_q;
    wire [31:0] c_float_0x3810000000000000101_q;
    wire [31:0] c_float_0x47EFFFFFE0000000102_q;
    wire [31:0] c_float_1_000000e_0093_q;
    wire [31:0] c_i32_499_q;
    wire [7:0] c_i8_1103_q;
    wire [0:0] i_acl_13_aggregation40_qi;
    reg [0:0] i_acl_13_aggregation40_q;
    wire [0:0] i_acl_16_aggregation41_qi;
    reg [0:0] i_acl_16_aggregation41_q;
    wire [0:0] i_acl_18_aggregation42_qi;
    reg [0:0] i_acl_18_aggregation42_q;
    wire [31:0] i_add43_aggregation38_out_primWireOut;
    wire [31:0] i_add4_aggregation19_out_primWireOut;
    wire [31:0] i_add_aggregation12_out_primWireOut;
    wire [31:0] i_conv13_aggregation25_out_primWireOut;
    wire [31:0] i_conv27_aggregation32_out_primWireOut;
    wire [31:0] i_conv42_aggregation37_out_primWireOut;
    wire [31:0] i_conv_aggregation17_out_primWireOut;
    wire [31:0] i_div_aggregation20_out_primWireOut;
    reg [31:0] i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q;
    reg [31:0] i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q;
    reg [31:0] i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q;
    wire [31:0] i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_feedback_stall_out_5;
    wire [31:0] i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_feedback_stall_out_6;
    wire [31:0] i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_feedback_stall_out_7;
    wire [31:0] i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_feedback_stall_out_4;
    wire [31:0] i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70_out_feedback_valid_out_6;
    wire [31:0] i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66_out_feedback_valid_out_4;
    wire [0:0] i_new_case_assign38_aggregation45_s;
    reg [31:0] i_new_case_assign38_aggregation45_q;
    wire [0:0] i_new_case_assign40_aggregation46_s;
    reg [31:0] i_new_case_assign40_aggregation46_q;
    wire [0:0] i_new_case_assign_aggregation39_s;
    reg [31:0] i_new_case_assign_aggregation39_q;
    wire [0:0] i_reduction_aggregation_0_aggregation50_s;
    reg [31:0] i_reduction_aggregation_0_aggregation50_q;
    wire [0:0] i_reduction_aggregation_1_aggregation55_s;
    reg [31:0] i_reduction_aggregation_1_aggregation55_q;
    wire [0:0] i_reduction_aggregation_2_aggregation62_s;
    reg [31:0] i_reduction_aggregation_2_aggregation62_q;
    wire [0:0] i_reduction_aggregation_3_aggregation53_qi;
    reg [0:0] i_reduction_aggregation_3_aggregation53_q;
    wire [0:0] i_reduction_aggregation_4_aggregation54_qi;
    reg [0:0] i_reduction_aggregation_4_aggregation54_q;
    wire [0:0] i_reduction_aggregation_5_aggregation59_qi;
    reg [0:0] i_reduction_aggregation_5_aggregation59_q;
    wire [0:0] i_reduction_aggregation_6_aggregation60_qi;
    reg [0:0] i_reduction_aggregation_6_aggregation60_q;
    wire [0:0] i_reduction_aggregation_7_aggregation61_qi;
    reg [0:0] i_reduction_aggregation_7_aggregation61_q;
    wire [0:0] i_selcond_aggregation_2_aggregation52_q;
    wire [0:0] i_selcond_aggregation_4_aggregation58_q;
    wire [0:0] i_spec_select51_aggregation65_s;
    reg [31:0] i_spec_select51_aggregation65_q;
    wire [0:0] i_spec_select52_aggregation67_s;
    reg [31:0] i_spec_select52_aggregation67_q;
    wire [0:0] i_spec_select53_aggregation69_s;
    reg [31:0] i_spec_select53_aggregation69_q;
    wire [0:0] i_spec_select54_aggregation71_s;
    reg [31:0] i_spec_select54_aggregation71_q;
    wire [0:0] i_spec_select55_aggregation73_s;
    reg [7:0] i_spec_select55_aggregation73_q;
    wire [0:0] i_spec_select_aggregation63_s;
    reg [31:0] i_spec_select_aggregation63_q;
    wire [0:0] i_unnamed_aggregation51_q;
    wire [0:0] i_unnamed_aggregation56_q;
    wire [0:0] i_unnamed_aggregation57_qi;
    reg [0:0] i_unnamed_aggregation57_q;
    wire [7:0] cstAllOWE_uid118_i_cmp14_aggregation27_q;
    wire [22:0] cstZeroWF_uid119_i_cmp14_aggregation27_q;
    wire [7:0] cstAllZWE_uid120_i_cmp14_aggregation27_q;
    wire [7:0] exp_x_uid121_i_cmp14_aggregation27_b;
    wire [22:0] frac_x_uid122_i_cmp14_aggregation27_b;
    wire [0:0] expXIsZero_uid123_i_cmp14_aggregation27_qi;
    reg [0:0] expXIsZero_uid123_i_cmp14_aggregation27_q;
    wire [0:0] expXIsMax_uid124_i_cmp14_aggregation27_qi;
    reg [0:0] expXIsMax_uid124_i_cmp14_aggregation27_q;
    wire [0:0] fracXIsZero_uid125_i_cmp14_aggregation27_qi;
    reg [0:0] fracXIsZero_uid125_i_cmp14_aggregation27_q;
    wire [0:0] fracXIsNotZero_uid126_i_cmp14_aggregation27_q;
    wire [0:0] excZ_x_uid127_i_cmp14_aggregation27_q;
    wire [0:0] excN_x_uid129_i_cmp14_aggregation27_q;
    wire [7:0] exp_y_uid138_i_cmp14_aggregation27_b;
    wire [22:0] frac_y_uid139_i_cmp14_aggregation27_b;
    wire [0:0] expXIsZero_uid140_i_cmp14_aggregation27_qi;
    reg [0:0] expXIsZero_uid140_i_cmp14_aggregation27_q;
    wire [0:0] expXIsMax_uid141_i_cmp14_aggregation27_qi;
    reg [0:0] expXIsMax_uid141_i_cmp14_aggregation27_q;
    wire [0:0] fracXIsZero_uid142_i_cmp14_aggregation27_qi;
    reg [0:0] fracXIsZero_uid142_i_cmp14_aggregation27_q;
    wire [0:0] fracXIsNotZero_uid143_i_cmp14_aggregation27_q;
    wire [0:0] excZ_y_uid144_i_cmp14_aggregation27_q;
    wire [0:0] excN_y_uid146_i_cmp14_aggregation27_q;
    wire [0:0] oneIsNaN_uid152_i_cmp14_aggregation27_qi;
    reg [0:0] oneIsNaN_uid152_i_cmp14_aggregation27_q;
    wire [30:0] expFracX_uid157_i_cmp14_aggregation27_q;
    wire [30:0] expFracY_uid159_i_cmp14_aggregation27_q;
    wire [32:0] efxGTefy_uid161_i_cmp14_aggregation27_a;
    wire [32:0] efxGTefy_uid161_i_cmp14_aggregation27_b;
    logic [32:0] efxGTefy_uid161_i_cmp14_aggregation27_o;
    wire [0:0] efxGTefy_uid161_i_cmp14_aggregation27_c;
    wire [32:0] efxLTefy_uid162_i_cmp14_aggregation27_a;
    wire [32:0] efxLTefy_uid162_i_cmp14_aggregation27_b;
    logic [32:0] efxLTefy_uid162_i_cmp14_aggregation27_o;
    wire [0:0] efxLTefy_uid162_i_cmp14_aggregation27_c;
    wire [0:0] signX_uid166_i_cmp14_aggregation27_b;
    wire [0:0] signY_uid167_i_cmp14_aggregation27_b;
    wire [1:0] two_uid168_i_cmp14_aggregation27_q;
    wire [1:0] concSXSY_uid169_i_cmp14_aggregation27_q;
    wire [0:0] sxLTsy_uid170_i_cmp14_aggregation27_qi;
    reg [0:0] sxLTsy_uid170_i_cmp14_aggregation27_q;
    wire [0:0] xorSigns_uid171_i_cmp14_aggregation27_q;
    wire [0:0] sxEQsy_uid172_i_cmp14_aggregation27_q;
    wire [0:0] expFracCompMux_uid173_i_cmp14_aggregation27_s;
    reg [0:0] expFracCompMux_uid173_i_cmp14_aggregation27_q;
    wire [0:0] invExcYZ_uid174_i_cmp14_aggregation27_q;
    wire [0:0] invExcXZ_uid175_i_cmp14_aggregation27_q;
    wire [0:0] oneNonZero_uid176_i_cmp14_aggregation27_qi;
    reg [0:0] oneNonZero_uid176_i_cmp14_aggregation27_q;
    wire [0:0] rc2_uid177_i_cmp14_aggregation27_q;
    wire [0:0] sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_qi;
    reg [0:0] sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_q;
    wire [0:0] r_uid179_i_cmp14_aggregation27_qi;
    reg [0:0] r_uid179_i_cmp14_aggregation27_q;
    wire [0:0] rPostExc_uid180_i_cmp14_aggregation27_s;
    reg [0:0] rPostExc_uid180_i_cmp14_aggregation27_q;
    wire [7:0] exp_x_uid185_i_cmp28_aggregation34_b;
    wire [22:0] frac_x_uid186_i_cmp28_aggregation34_b;
    wire [0:0] expXIsZero_uid187_i_cmp28_aggregation34_qi;
    reg [0:0] expXIsZero_uid187_i_cmp28_aggregation34_q;
    wire [0:0] expXIsMax_uid188_i_cmp28_aggregation34_qi;
    reg [0:0] expXIsMax_uid188_i_cmp28_aggregation34_q;
    wire [0:0] fracXIsZero_uid189_i_cmp28_aggregation34_qi;
    reg [0:0] fracXIsZero_uid189_i_cmp28_aggregation34_q;
    wire [0:0] fracXIsNotZero_uid190_i_cmp28_aggregation34_q;
    wire [0:0] excZ_x_uid191_i_cmp28_aggregation34_q;
    wire [0:0] excN_x_uid193_i_cmp28_aggregation34_q;
    wire [7:0] exp_y_uid202_i_cmp28_aggregation34_b;
    wire [22:0] frac_y_uid203_i_cmp28_aggregation34_b;
    wire [0:0] expXIsZero_uid204_i_cmp28_aggregation34_qi;
    reg [0:0] expXIsZero_uid204_i_cmp28_aggregation34_q;
    wire [0:0] expXIsMax_uid205_i_cmp28_aggregation34_qi;
    reg [0:0] expXIsMax_uid205_i_cmp28_aggregation34_q;
    wire [0:0] fracXIsZero_uid206_i_cmp28_aggregation34_qi;
    reg [0:0] fracXIsZero_uid206_i_cmp28_aggregation34_q;
    wire [0:0] fracXIsNotZero_uid207_i_cmp28_aggregation34_q;
    wire [0:0] excZ_y_uid208_i_cmp28_aggregation34_q;
    wire [0:0] excN_y_uid210_i_cmp28_aggregation34_q;
    wire [0:0] oneIsNaN_uid216_i_cmp28_aggregation34_qi;
    reg [0:0] oneIsNaN_uid216_i_cmp28_aggregation34_q;
    wire [30:0] expFracX_uid221_i_cmp28_aggregation34_q;
    wire [30:0] expFracY_uid223_i_cmp28_aggregation34_q;
    wire [32:0] efxGTefy_uid225_i_cmp28_aggregation34_a;
    wire [32:0] efxGTefy_uid225_i_cmp28_aggregation34_b;
    logic [32:0] efxGTefy_uid225_i_cmp28_aggregation34_o;
    wire [0:0] efxGTefy_uid225_i_cmp28_aggregation34_c;
    wire [32:0] efxLTefy_uid226_i_cmp28_aggregation34_a;
    wire [32:0] efxLTefy_uid226_i_cmp28_aggregation34_b;
    logic [32:0] efxLTefy_uid226_i_cmp28_aggregation34_o;
    wire [0:0] efxLTefy_uid226_i_cmp28_aggregation34_c;
    wire [0:0] signX_uid230_i_cmp28_aggregation34_b;
    wire [0:0] signY_uid231_i_cmp28_aggregation34_b;
    wire [1:0] concSXSY_uid233_i_cmp28_aggregation34_q;
    wire [0:0] sxLTsy_uid234_i_cmp28_aggregation34_qi;
    reg [0:0] sxLTsy_uid234_i_cmp28_aggregation34_q;
    wire [0:0] xorSigns_uid235_i_cmp28_aggregation34_q;
    wire [0:0] sxEQsy_uid236_i_cmp28_aggregation34_q;
    wire [0:0] expFracCompMux_uid237_i_cmp28_aggregation34_s;
    reg [0:0] expFracCompMux_uid237_i_cmp28_aggregation34_q;
    wire [0:0] invExcYZ_uid238_i_cmp28_aggregation34_q;
    wire [0:0] invExcXZ_uid239_i_cmp28_aggregation34_q;
    wire [0:0] oneNonZero_uid240_i_cmp28_aggregation34_qi;
    reg [0:0] oneNonZero_uid240_i_cmp28_aggregation34_q;
    wire [0:0] rc2_uid241_i_cmp28_aggregation34_q;
    wire [0:0] sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_qi;
    reg [0:0] sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_q;
    wire [0:0] r_uid243_i_cmp28_aggregation34_qi;
    reg [0:0] r_uid243_i_cmp28_aggregation34_q;
    wire [0:0] rPostExc_uid244_i_cmp28_aggregation34_s;
    reg [0:0] rPostExc_uid244_i_cmp28_aggregation34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    reg [0:0] redist0_oneIsNaN_uid216_i_cmp28_aggregation34_q_2_q;
    reg [0:0] redist1_oneIsNaN_uid152_i_cmp14_aggregation27_q_2_q;
    reg [0:0] redist2_i_reduction_aggregation_6_aggregation60_q_8_q;
    reg [0:0] redist3_i_reduction_aggregation_5_aggregation59_q_38_q;
    reg [0:0] redist4_i_reduction_aggregation_3_aggregation53_q_47_q;
    reg [31:0] redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1_q;
    reg [31:0] redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q;
    reg [31:0] redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1_q;
    reg [31:0] redist9_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_2_q;
    reg [31:0] redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_q;
    reg [31:0] redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_delay_0;
    reg [31:0] redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1_q;
    reg [31:0] redist12_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_2_q;
    reg [31:0] redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_q;
    reg [31:0] redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_delay_0;
    reg [31:0] redist14_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_1_q;
    reg [31:0] redist16_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_24_q;
    reg [31:0] redist17_i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out_1_q;
    reg [31:0] redist21_i_div_aggregation20_out_primWireOut_1_q;
    reg [31:0] redist22_i_conv_aggregation17_out_primWireOut_1_q;
    reg [31:0] redist23_i_conv42_aggregation37_out_primWireOut_1_q;
    reg [31:0] redist24_i_conv27_aggregation32_out_primWireOut_1_q;
    reg [31:0] redist25_i_conv27_aggregation32_out_primWireOut_2_q;
    reg [31:0] redist26_i_conv27_aggregation32_out_primWireOut_5_q;
    reg [31:0] redist26_i_conv27_aggregation32_out_primWireOut_5_delay_0;
    reg [31:0] redist27_i_conv13_aggregation25_out_primWireOut_1_q;
    reg [31:0] redist28_i_conv13_aggregation25_out_primWireOut_2_q;
    reg [31:0] redist29_i_conv13_aggregation25_out_primWireOut_5_q;
    reg [31:0] redist29_i_conv13_aggregation25_out_primWireOut_5_delay_0;
    reg [0:0] redist30_i_cmp21_aggregation28_q_3_q;
    reg [0:0] redist30_i_cmp21_aggregation28_q_3_delay_0;
    reg [31:0] redist31_i_add_aggregation12_out_primWireOut_1_q;
    reg [31:0] redist32_i_add4_aggregation19_out_primWireOut_1_q;
    reg [31:0] redist33_i_add43_aggregation38_out_primWireOut_1_q;
    reg [0:0] redist34_i_acl_16_aggregation41_q_49_q;
    reg [7:0] redist35_sync_together119_aunroll_x_in_c1_eni2_1_tpl_1_q;
    reg [31:0] redist37_sync_together119_aunroll_x_in_c1_eni2_2_tpl_1_q;
    reg [31:0] redist39_sync_together119_aunroll_x_in_c1_eni2_3_tpl_1_q;
    reg [31:0] redist41_sync_together119_aunroll_x_in_c1_eni2_4_tpl_1_q;
    reg [31:0] redist43_sync_together119_aunroll_x_in_c1_eni2_5_tpl_1_q;
    reg [0:0] redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_q;
    reg [0:0] redist47_sync_together119_aunroll_x_in_c1_eni2_14_tpl_43_q;
    reg [0:0] redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50_q;
    reg [0:0] redist49_sync_together119_aunroll_x_in_c1_eni2_15_tpl_6_q;
    reg [0:0] redist50_sync_together119_aunroll_x_in_c1_eni2_15_tpl_18_q;
    reg [0:0] redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45_q;
    reg [0:0] redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_q;
    reg [0:0] redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_0;
    reg [0:0] redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_1;
    reg [0:0] redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_2;
    reg [0:0] redist53_sync_together119_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist53_sync_together119_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist53_sync_together119_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist53_sync_together119_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist53_sync_together119_aunroll_x_in_i_valid_5_delay_3;
    reg [0:0] redist54_sync_together119_aunroll_x_in_i_valid_17_q;
    reg [0:0] redist55_sync_together119_aunroll_x_in_i_valid_30_q;
    reg [0:0] redist56_sync_together119_aunroll_x_in_i_valid_42_q;
    reg [0:0] redist57_sync_together119_aunroll_x_in_i_valid_44_q;
    reg [0:0] redist57_sync_together119_aunroll_x_in_i_valid_44_delay_0;
    reg [0:0] redist58_sync_together119_aunroll_x_in_i_valid_48_q;
    reg [0:0] redist58_sync_together119_aunroll_x_in_i_valid_48_delay_0;
    reg [0:0] redist58_sync_together119_aunroll_x_in_i_valid_48_delay_1;
    reg [0:0] redist58_sync_together119_aunroll_x_in_i_valid_48_delay_2;
    reg [0:0] redist59_sync_together119_aunroll_x_in_i_valid_49_q;
    reg [0:0] redist60_i_tobool_aggregation8_sel_x_b_28_q;
    reg [0:0] redist61_i_tobool_aggregation8_sel_x_b_40_q;
    reg [0:0] redist62_dupName_15_comparator_x_q_30_q;
    reg [0:0] redist63_dupName_15_comparator_x_q_42_q;
    reg [0:0] redist64_dupName_14_comparator_x_q_30_q;
    reg [0:0] redist65_dupName_14_comparator_x_q_42_q;
    reg [0:0] redist66_dupName_13_comparator_x_q_30_q;
    reg [0:0] redist67_dupName_13_comparator_x_q_42_q;
    reg [0:0] redist68_dupName_12_comparator_x_q_30_q;
    reg [0:0] redist69_dupName_12_comparator_x_q_42_q;
    reg [0:0] redist70_dupName_11_comparator_x_q_30_q;
    reg [0:0] redist71_dupName_11_comparator_x_q_42_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_inputreg0_q;
    reg [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0_q;
    wire redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_reset0;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_ia;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_aa;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_ab;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_iq;
    wire [31:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_q;
    wire [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_q;
    (* preserve *) reg [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i;
    (* preserve *) reg redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_eq;
    reg [4:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_wraddr_q;
    wire [5:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_last_q;
    wire [5:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp_b;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmpReg_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_notEnable_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_nor_q;
    (* dont_merge *) reg [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_sticky_ena_q;
    wire [0:0] redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_enaAnd_q;
    reg [31:0] redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_inputreg0_q;
    reg [31:0] redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_inputreg0_q;
    reg [31:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_inputreg0_q;
    reg [31:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_outputreg0_q;
    wire redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_reset0;
    wire [31:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_ia;
    wire [4:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_aa;
    wire [4:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_ab;
    wire [31:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_iq;
    wire [31:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_q;
    wire [4:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_q;
    (* preserve *) reg [4:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i;
    (* preserve *) reg redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_eq;
    reg [4:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_wraddr_q;
    wire [5:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_last_q;
    wire [5:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp_b;
    wire [0:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp_q;
    (* dont_merge *) reg [0:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmpReg_q;
    wire [0:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_notEnable_q;
    wire [0:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_nor_q;
    (* dont_merge *) reg [0:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_sticky_ena_q;
    wire [0:0] redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_enaAnd_q;
    reg [31:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_inputreg0_q;
    reg [31:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_outputreg0_q;
    wire redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_reset0;
    wire [31:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_ia;
    wire [4:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_aa;
    wire [4:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_ab;
    wire [31:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_iq;
    wire [31:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_q;
    wire [4:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_q;
    (* preserve *) reg [4:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i;
    (* preserve *) reg redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_eq;
    reg [4:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_wraddr_q;
    wire [5:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_last_q;
    wire [5:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp_b;
    wire [0:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmpReg_q;
    wire [0:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_notEnable_q;
    wire [0:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_nor_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_sticky_ena_q;
    wire [0:0] redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_enaAnd_q;
    reg [31:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_inputreg0_q;
    reg [31:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_outputreg0_q;
    wire redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_reset0;
    wire [31:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_ia;
    wire [1:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_aa;
    wire [1:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_ab;
    wire [31:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_iq;
    wire [31:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_q;
    wire [1:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_q;
    (* preserve *) reg [1:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_i;
    reg [1:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_wraddr_q;
    wire [2:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_last_q;
    wire [2:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp_b;
    wire [0:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmpReg_q;
    wire [0:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_notEnable_q;
    wire [0:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_sticky_ena_q;
    wire [0:0] redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_enaAnd_q;
    reg [31:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_inputreg0_q;
    reg [31:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_outputreg0_q;
    wire redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_reset0;
    wire [31:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_ia;
    wire [3:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_aa;
    wire [3:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_ab;
    wire [31:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_iq;
    wire [31:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_q;
    wire [3:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_q;
    (* preserve *) reg [3:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_i;
    reg [3:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_wraddr_q;
    wire [4:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_last_q;
    wire [4:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp_b;
    wire [0:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_enaAnd_q;
    reg [31:0] redist26_i_conv27_aggregation32_out_primWireOut_5_inputreg0_q;
    reg [31:0] redist29_i_conv13_aggregation25_out_primWireOut_5_inputreg0_q;
    reg [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_inputreg0_q;
    reg [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_outputreg0_q;
    wire redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_reset0;
    wire [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_ia;
    wire [3:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_aa;
    wire [3:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_ab;
    wire [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_iq;
    wire [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_q;
    wire [3:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_q;
    (* preserve *) reg [3:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i;
    (* preserve *) reg redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_eq;
    reg [3:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_wraddr_q;
    wire [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_last_q;
    wire [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp_b;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmpReg_q;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_notEnable_q;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_sticky_ena_q;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_enaAnd_q;
    reg [31:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_inputreg0_q;
    reg [31:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_outputreg0_q;
    wire redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_reset0;
    wire [31:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_ia;
    wire [5:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_aa;
    wire [5:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_ab;
    wire [31:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_iq;
    wire [31:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_q;
    wire [5:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_q;
    (* preserve *) reg [5:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i;
    (* preserve *) reg redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_eq;
    reg [5:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_wraddr_q;
    wire [6:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_last_q;
    wire [6:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp_b;
    wire [0:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp_q;
    reg [0:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmpReg_q;
    wire [0:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_notEnable_q;
    wire [0:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_nor_q;
    reg [0:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_sticky_ena_q;
    wire [0:0] redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_enaAnd_q;
    reg [31:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_inputreg0_q;
    reg [31:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_outputreg0_q;
    wire redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_reset0;
    wire [31:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_ia;
    wire [5:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_aa;
    wire [5:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_ab;
    wire [31:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_iq;
    wire [31:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_q;
    wire [5:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_q;
    (* preserve *) reg [5:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i;
    (* preserve *) reg redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_eq;
    reg [5:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_wraddr_q;
    wire [6:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_last_q;
    wire [6:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp_b;
    wire [0:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp_q;
    reg [0:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmpReg_q;
    wire [0:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_notEnable_q;
    wire [0:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_nor_q;
    reg [0:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_sticky_ena_q;
    wire [0:0] redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_enaAnd_q;
    reg [31:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_inputreg0_q;
    reg [31:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_outputreg0_q;
    wire redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_reset0;
    wire [31:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_ia;
    wire [5:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_aa;
    wire [5:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_ab;
    wire [31:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_iq;
    wire [31:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_q;
    wire [5:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_q;
    (* preserve *) reg [5:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i;
    (* preserve *) reg redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_eq;
    reg [5:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_wraddr_q;
    wire [6:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_last_q;
    wire [6:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp_b;
    wire [0:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp_q;
    reg [0:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmpReg_q;
    wire [0:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_notEnable_q;
    wire [0:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_nor_q;
    reg [0:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_sticky_ena_q;
    wire [0:0] redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_enaAnd_q;
    reg [31:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_inputreg0_q;
    reg [31:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_outputreg0_q;
    wire redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_reset0;
    wire [31:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_ia;
    wire [5:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_aa;
    wire [5:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_ab;
    wire [31:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_iq;
    wire [31:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_q;
    wire [5:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_q;
    (* preserve *) reg [5:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i;
    (* preserve *) reg redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_eq;
    reg [5:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_wraddr_q;
    wire [6:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_last_q;
    wire [6:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp_b;
    wire [0:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp_q;
    reg [0:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmpReg_q;
    wire [0:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_notEnable_q;
    wire [0:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_nor_q;
    reg [0:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_sticky_ena_q;
    wire [0:0] redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_enaAnd_q;
    reg [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_inputreg0_q;
    reg [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_outputreg0_q;
    wire redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_reset0;
    wire [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_ia;
    wire [3:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_aa;
    wire [3:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_ab;
    wire [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_iq;
    wire [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_q;
    wire [3:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_q;
    (* preserve *) reg [3:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i;
    (* preserve *) reg redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_eq;
    reg [3:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_wraddr_q;
    wire [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_last_q;
    wire [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp_b;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmpReg_q;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_notEnable_q;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_sticky_ena_q;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_enaAnd_q;
    reg [0:0] redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_inputreg0_q;
    reg [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_inputreg0_q;
    reg [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_outputreg0_q;
    wire redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_reset0;
    wire [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_ia;
    wire [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_aa;
    wire [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_ab;
    wire [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_iq;
    wire [7:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_q;
    wire [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i;
    (* preserve *) reg redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_eq;
    reg [4:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_wraddr_q;
    wire [5:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_last_q;
    wire [5:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp_b;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmpReg_q;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_sticky_ena_q;
    wire [0:0] redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_enaAnd_q;
    reg [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_inputreg0_q;
    reg [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_outputreg0_q;
    wire redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_reset0;
    wire [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_ia;
    wire [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_aa;
    wire [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_ab;
    wire [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_iq;
    wire [7:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_q;
    wire [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_q;
    (* preserve *) reg [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i;
    (* preserve *) reg redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_eq;
    reg [4:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_wraddr_q;
    wire [5:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_last_q;
    wire [5:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp_b;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp_q;
    (* dont_merge *) reg [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmpReg_q;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_nor_q;
    (* dont_merge *) reg [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_sticky_ena_q;
    wire [0:0] redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist53_sync_together119_aunroll_x_in_i_valid_5(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist53_sync_together119_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_1 <= redist53_sync_together119_aunroll_x_in_i_valid_5_delay_0;
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_2 <= redist53_sync_together119_aunroll_x_in_i_valid_5_delay_1;
            redist53_sync_together119_aunroll_x_in_i_valid_5_delay_3 <= redist53_sync_together119_aunroll_x_in_i_valid_5_delay_2;
            redist53_sync_together119_aunroll_x_in_i_valid_5_q <= redist53_sync_together119_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // redist54_sync_together119_aunroll_x_in_i_valid_17(DELAY,311)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist54_sync_together119_aunroll_x_in_i_valid_17 ( .xin(redist53_sync_together119_aunroll_x_in_i_valid_5_q), .xout(redist54_sync_together119_aunroll_x_in_i_valid_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist55_sync_together119_aunroll_x_in_i_valid_30(DELAY,312)
    dspba_delay_ver #( .width(1), .depth(13), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist55_sync_together119_aunroll_x_in_i_valid_30 ( .xin(redist54_sync_together119_aunroll_x_in_i_valid_17_q), .xout(redist55_sync_together119_aunroll_x_in_i_valid_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist56_sync_together119_aunroll_x_in_i_valid_42(DELAY,313)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist56_sync_together119_aunroll_x_in_i_valid_42 ( .xin(redist55_sync_together119_aunroll_x_in_i_valid_30_q), .xout(redist56_sync_together119_aunroll_x_in_i_valid_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist57_sync_together119_aunroll_x_in_i_valid_44(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together119_aunroll_x_in_i_valid_44_delay_0 <= '0;
            redist57_sync_together119_aunroll_x_in_i_valid_44_q <= '0;
        end
        else
        begin
            redist57_sync_together119_aunroll_x_in_i_valid_44_delay_0 <= $unsigned(redist56_sync_together119_aunroll_x_in_i_valid_42_q);
            redist57_sync_together119_aunroll_x_in_i_valid_44_q <= redist57_sync_together119_aunroll_x_in_i_valid_44_delay_0;
        end
    end

    // redist58_sync_together119_aunroll_x_in_i_valid_48(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together119_aunroll_x_in_i_valid_48_delay_0 <= '0;
            redist58_sync_together119_aunroll_x_in_i_valid_48_delay_1 <= '0;
            redist58_sync_together119_aunroll_x_in_i_valid_48_delay_2 <= '0;
            redist58_sync_together119_aunroll_x_in_i_valid_48_q <= '0;
        end
        else
        begin
            redist58_sync_together119_aunroll_x_in_i_valid_48_delay_0 <= $unsigned(redist57_sync_together119_aunroll_x_in_i_valid_44_q);
            redist58_sync_together119_aunroll_x_in_i_valid_48_delay_1 <= redist58_sync_together119_aunroll_x_in_i_valid_48_delay_0;
            redist58_sync_together119_aunroll_x_in_i_valid_48_delay_2 <= redist58_sync_together119_aunroll_x_in_i_valid_48_delay_1;
            redist58_sync_together119_aunroll_x_in_i_valid_48_q <= redist58_sync_together119_aunroll_x_in_i_valid_48_delay_2;
        end
    end

    // redist59_sync_together119_aunroll_x_in_i_valid_49(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist59_sync_together119_aunroll_x_in_i_valid_49_q <= '0;
        end
        else
        begin
            redist59_sync_together119_aunroll_x_in_i_valid_49_q <= $unsigned(redist58_sync_together119_aunroll_x_in_i_valid_48_q);
        end
    end

    // valid_fanout_reg0(REG,245)@74 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist59_sync_together119_aunroll_x_in_i_valid_49_q);
        end
    end

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_notEnable(LOGICAL,377)
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_nor(LOGICAL,378)
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_nor_q = ~ (redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_notEnable_q | redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_sticky_ena_q);

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_last(CONSTANT,374)
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_last_q = $unsigned(3'b010);

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp(LOGICAL,375)
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp_b = {1'b0, redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_q};
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp_q = $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_last_q == redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp_b ? 1'b1 : 1'b0);

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmpReg(REG,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmpReg_q <= $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmp_q);
        end
    end

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_sticky_ena(REG,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_nor_q == 1'b1)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_sticky_ena_q <= $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_cmpReg_q);
        end
    end

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_enaAnd(LOGICAL,380)
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_enaAnd_q = redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_sticky_ena_q & VCC_q;

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt(COUNTER,372)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_i <= $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_q = redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_i[1:0];

    // redist37_sync_together119_aunroll_x_in_c1_eni2_2_tpl_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together119_aunroll_x_in_c1_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist37_sync_together119_aunroll_x_in_c1_eni2_2_tpl_1_q <= $unsigned(in_c1_eni2_2_tpl);
        end
    end

    // redist43_sync_together119_aunroll_x_in_c1_eni2_5_tpl_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together119_aunroll_x_in_c1_eni2_5_tpl_1_q <= '0;
        end
        else
        begin
            redist43_sync_together119_aunroll_x_in_c1_eni2_5_tpl_1_q <= $unsigned(in_c1_eni2_5_tpl);
        end
    end

    // c_i32_397_recast_x(CONSTANT,5)
    assign c_i32_397_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // dupName_1_comparator_x(LOGICAL,8)@25 + 1
    assign dupName_1_comparator_x_qi = $unsigned(in_c1_eni2_13_tpl == c_i32_397_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_1_comparator_x_delay ( .xin(dupName_1_comparator_x_qi), .xout(dupName_1_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist41_sync_together119_aunroll_x_in_c1_eni2_4_tpl_1(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together119_aunroll_x_in_c1_eni2_4_tpl_1_q <= '0;
        end
        else
        begin
            redist41_sync_together119_aunroll_x_in_c1_eni2_4_tpl_1_q <= $unsigned(in_c1_eni2_4_tpl);
        end
    end

    // c_i32_296_recast_x(CONSTANT,4)
    assign c_i32_296_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // dupName_0_comparator_x(LOGICAL,6)@25 + 1
    assign dupName_0_comparator_x_qi = $unsigned(in_c1_eni2_13_tpl == c_i32_296_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_0_comparator_x_delay ( .xin(dupName_0_comparator_x_qi), .xout(dupName_0_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist39_sync_together119_aunroll_x_in_c1_eni2_3_tpl_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together119_aunroll_x_in_c1_eni2_3_tpl_1_q <= '0;
        end
        else
        begin
            redist39_sync_together119_aunroll_x_in_c1_eni2_3_tpl_1_q <= $unsigned(in_c1_eni2_3_tpl);
        end
    end

    // c_i32_194_recast_x(CONSTANT,3)
    assign c_i32_194_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // dupName_2_comparator_x(LOGICAL,10)@25 + 1
    assign dupName_2_comparator_x_qi = $unsigned(in_c1_eni2_13_tpl == c_i32_194_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_2_comparator_x_delay ( .xin(dupName_2_comparator_x_qi), .xout(dupName_2_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24(SELECTOR,74)@26 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q <= redist37_sync_together119_aunroll_x_in_c1_eni2_2_tpl_1_q;
            if (dupName_1_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q <= redist43_sync_together119_aunroll_x_in_c1_eni2_5_tpl_1_q;
            end
            if (dupName_0_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q <= redist41_sync_together119_aunroll_x_in_c1_eni2_4_tpl_1_q;
            end
            if (dupName_2_comparator_x_q == 1'b1)
            begin
                i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q <= redist39_sync_together119_aunroll_x_in_c1_eni2_3_tpl_1_q;
            end
        end
    end

    // i_conv42_aggregation37(BLACKBOX,69)@27
    // out out_primWireOut@43
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv42_aggregation37 (
        .in_0(i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q),
        .out_primWireOut(i_conv42_aggregation37_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_conv42_aggregation37_out_primWireOut_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_conv42_aggregation37_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist23_i_conv42_aggregation37_out_primWireOut_1_q <= $unsigned(i_conv42_aggregation37_out_primWireOut);
        end
    end

    // valid_fanout_reg2(REG,247)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist54_sync_together119_aunroll_x_in_i_valid_17_q);
        end
    end

    // valid_fanout_reg7(REG,252)@67 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist56_sync_together119_aunroll_x_in_i_valid_42_q);
        end
    end

    // redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_inputreg0(DELAY,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_inputreg0_q <= '0;
        end
        else
        begin
            redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_inputreg0_q <= $unsigned(in_c1_eni2_14_tpl);
        end
    end

    // redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31(DELAY,303)
    dspba_delay_ver #( .width(1), .depth(30), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31 ( .xin(redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_inputreg0_q), .xout(redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist47_sync_together119_aunroll_x_in_c1_eni2_14_tpl_43(DELAY,304)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist47_sync_together119_aunroll_x_in_c1_eni2_14_tpl_43 ( .xin(redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_q), .xout(redist47_sync_together119_aunroll_x_in_c1_eni2_14_tpl_43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select51_aggregation65(MUX,101)@68
    assign i_spec_select51_aggregation65_s = redist47_sync_together119_aunroll_x_in_c1_eni2_14_tpl_43_q;
    always @(i_spec_select51_aggregation65_s or i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q or c_float_0_000000e_0092_q)
    begin
        unique case (i_spec_select51_aggregation65_s)
            1'b0 : i_spec_select51_aggregation65_q = i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q;
            1'b1 : i_spec_select51_aggregation65_q = c_float_0_000000e_0092_q;
            default : i_spec_select51_aggregation65_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66(BLACKBOX,87)@68
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    streamer_i_llvm_fpga_push_f32_sum_1_aggr00000_push4_aggregation0 thei_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66 (
        .in_data_in(i_spec_select51_aggregation65_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_feedback_stall_out_4),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist49_sync_together119_aunroll_x_in_c1_eni2_15_tpl_6(DELAY,306)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist49_sync_together119_aunroll_x_in_c1_eni2_15_tpl_6 ( .xin(in_c1_eni2_15_tpl), .xout(redist49_sync_together119_aunroll_x_in_c1_eni2_15_tpl_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist50_sync_together119_aunroll_x_in_c1_eni2_15_tpl_18(DELAY,307)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist50_sync_together119_aunroll_x_in_c1_eni2_15_tpl_18 ( .xin(redist49_sync_together119_aunroll_x_in_c1_eni2_15_tpl_6_q), .xout(redist50_sync_together119_aunroll_x_in_c1_eni2_15_tpl_18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_float_0_000000e_0092(FLOATCONSTANT,33)
    assign c_float_0_000000e_0092_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18(BLACKBOX,82)@43
    // out out_feedback_stall_out_4@20000000
    streamer_i_llvm_fpga_pop_f32_sum_1_aggre0000_0_pop4_aggregation0 thei_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18 (
        .in_data_in(c_float_0_000000e_0092_q),
        .in_dir(redist50_sync_together119_aunroll_x_in_c1_eni2_15_tpl_18_q),
        .in_feedback_in_4(i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push4_aggregation66_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_feedback_stall_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out);
        end
    end

    // i_add43_aggregation38(BLACKBOX,58)@44
    // out out_primWireOut@65
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00003a0054c2a6344c246w65 thei_add43_aggregation38 (
        .in_0(redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1_q),
        .in_1(redist23_i_conv42_aggregation37_out_primWireOut_1_q),
        .out_primWireOut(i_add43_aggregation38_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_add43_aggregation38_out_primWireOut_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_add43_aggregation38_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist33_i_add43_aggregation38_out_primWireOut_1_q <= $unsigned(i_add43_aggregation38_out_primWireOut);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_notEnable(LOGICAL,339)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_notEnable_q = $unsigned(~ (VCC_q));

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_nor(LOGICAL,340)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_nor_q = ~ (redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_notEnable_q | redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_sticky_ena_q);

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_last(CONSTANT,336)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_last_q = $unsigned(6'b010001);

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp(LOGICAL,337)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp_b = {1'b0, redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_q};
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp_q = $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_last_q == redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp_b ? 1'b1 : 1'b0);

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmpReg(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmpReg_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmp_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_sticky_ena(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_nor_q == 1'b1)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_sticky_ena_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_cmpReg_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_enaAnd(LOGICAL,342)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_enaAnd_q = redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_sticky_ena_q & VCC_q;

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt(COUNTER,334)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i <= 5'd0;
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i == 5'd17)
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_eq <= 1'b0;
            end
            if (redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_eq == 1'b1)
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_q = redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_i[4:0];

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_inputreg0(DELAY,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_inputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_inputreg0_q <= $unsigned(redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_wraddr(REG,335)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_wraddr_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_q);
        end
    end

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem(DUALMEM,333)
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_ia = $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_inputreg0_q);
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_aa = redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_wraddr_q;
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_ab = redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_rdcnt_q;
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(19),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(19),
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
    ) redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_dmem (
        .clocken1(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_reset0),
        .clock1(clock),
        .address_a(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_aa),
        .data_a(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_ab),
        .q_b(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_iq),
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
    assign redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_q = redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_iq[31:0];

    // redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0(DELAY,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_mem_q);
        end
    end

    // redist35_sync_together119_aunroll_x_in_c1_eni2_1_tpl_1(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together119_aunroll_x_in_c1_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together119_aunroll_x_in_c1_eni2_1_tpl_1_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // i_tobool_aggregation8_sel_x(BITSELECT,30)@26
    assign i_tobool_aggregation8_sel_x_b = redist35_sync_together119_aunroll_x_in_c1_eni2_1_tpl_1_q[0:0];

    // redist60_i_tobool_aggregation8_sel_x_b_28(DELAY,317)
    dspba_delay_ver #( .width(1), .depth(28), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist60_i_tobool_aggregation8_sel_x_b_28 ( .xin(i_tobool_aggregation8_sel_x_b), .xout(redist60_i_tobool_aggregation8_sel_x_b_28_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist61_i_tobool_aggregation8_sel_x_b_40(DELAY,318)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist61_i_tobool_aggregation8_sel_x_b_40 ( .xin(redist60_i_tobool_aggregation8_sel_x_b_28_q), .xout(redist61_i_tobool_aggregation8_sel_x_b_40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_new_case_assign38_aggregation45(MUX,88)@66 + 1
    assign i_new_case_assign38_aggregation45_s = redist61_i_tobool_aggregation8_sel_x_b_40_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_new_case_assign38_aggregation45_q <= 32'b0;
        end
        else
        begin
            unique case (i_new_case_assign38_aggregation45_s)
                1'b0 : i_new_case_assign38_aggregation45_q <= redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0_q;
                1'b1 : i_new_case_assign38_aggregation45_q <= redist33_i_add43_aggregation38_out_primWireOut_1_q;
                default : i_new_case_assign38_aggregation45_q <= 32'b0;
            endcase
        end
    end

    // c_i32_499(CONSTANT,52)
    assign c_i32_499_q = $unsigned(32'b00000000000000000000000000000100);

    // dupName_15_comparator_x(LOGICAL,24)@25 + 1
    assign dupName_15_comparator_x_qi = $unsigned(in_c1_eni2_12_tpl == c_i32_499_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_15_comparator_x_delay ( .xin(dupName_15_comparator_x_qi), .xout(dupName_15_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist62_dupName_15_comparator_x_q_30(DELAY,319)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist62_dupName_15_comparator_x_q_30 ( .xin(dupName_15_comparator_x_q), .xout(redist62_dupName_15_comparator_x_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist63_dupName_15_comparator_x_q_42(DELAY,320)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist63_dupName_15_comparator_x_q_42 ( .xin(redist62_dupName_15_comparator_x_q_30_q), .xout(redist63_dupName_15_comparator_x_q_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_14_comparator_x(LOGICAL,23)@25 + 1
    assign dupName_14_comparator_x_qi = $unsigned(in_c1_eni2_12_tpl == c_i32_397_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_14_comparator_x_delay ( .xin(dupName_14_comparator_x_qi), .xout(dupName_14_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist64_dupName_14_comparator_x_q_30(DELAY,321)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist64_dupName_14_comparator_x_q_30 ( .xin(dupName_14_comparator_x_q), .xout(redist64_dupName_14_comparator_x_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist65_dupName_14_comparator_x_q_42(DELAY,322)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist65_dupName_14_comparator_x_q_42 ( .xin(redist64_dupName_14_comparator_x_q_30_q), .xout(redist65_dupName_14_comparator_x_q_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // dupName_13_comparator_x(LOGICAL,22)@25 + 1
    assign dupName_13_comparator_x_qi = $unsigned(in_c1_eni2_12_tpl == c_i32_296_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_13_comparator_x_delay ( .xin(dupName_13_comparator_x_qi), .xout(dupName_13_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist66_dupName_13_comparator_x_q_30(DELAY,323)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist66_dupName_13_comparator_x_q_30 ( .xin(dupName_13_comparator_x_q), .xout(redist66_dupName_13_comparator_x_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist67_dupName_13_comparator_x_q_42(DELAY,324)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist67_dupName_13_comparator_x_q_42 ( .xin(redist66_dupName_13_comparator_x_q_30_q), .xout(redist67_dupName_13_comparator_x_q_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_conv_aggregation17(BLACKBOX,70)@27
    // out out_primWireOut@43
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv_aggregation17 (
        .in_0(i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q),
        .out_primWireOut(i_conv_aggregation17_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_conv_aggregation17_out_primWireOut_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_conv_aggregation17_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist22_i_conv_aggregation17_out_primWireOut_1_q <= $unsigned(i_conv_aggregation17_out_primWireOut);
        end
    end

    // i_add4_aggregation19(BLACKBOX,59)@44
    // out out_primWireOut@65
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00003a0054c2a6344c246w65 thei_add4_aggregation19 (
        .in_0(redist5_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_1_q),
        .in_1(redist22_i_conv_aggregation17_out_primWireOut_1_q),
        .out_primWireOut(i_add4_aggregation19_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_add4_aggregation19_out_primWireOut_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_add4_aggregation19_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist32_i_add4_aggregation19_out_primWireOut_1_q <= $unsigned(i_add4_aggregation19_out_primWireOut);
        end
    end

    // i_new_case_assign40_aggregation46(MUX,89)@66 + 1
    assign i_new_case_assign40_aggregation46_s = redist61_i_tobool_aggregation8_sel_x_b_40_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_new_case_assign40_aggregation46_q <= 32'b0;
        end
        else
        begin
            unique case (i_new_case_assign40_aggregation46_s)
                1'b0 : i_new_case_assign40_aggregation46_q <= redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0_q;
                1'b1 : i_new_case_assign40_aggregation46_q <= redist32_i_add4_aggregation19_out_primWireOut_1_q;
                default : i_new_case_assign40_aggregation46_q <= 32'b0;
            endcase
        end
    end

    // dupName_12_comparator_x(LOGICAL,21)@25 + 1
    assign dupName_12_comparator_x_qi = $unsigned(in_c1_eni2_12_tpl == c_i32_194_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_12_comparator_x_delay ( .xin(dupName_12_comparator_x_qi), .xout(dupName_12_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist68_dupName_12_comparator_x_q_30(DELAY,325)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist68_dupName_12_comparator_x_q_30 ( .xin(dupName_12_comparator_x_q), .xout(redist68_dupName_12_comparator_x_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist69_dupName_12_comparator_x_q_42(DELAY,326)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist69_dupName_12_comparator_x_q_42 ( .xin(redist68_dupName_12_comparator_x_q_30_q), .xout(redist69_dupName_12_comparator_x_q_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q <= $unsigned(redist6_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_23_outputreg0_q);
        end
    end

    // c_i32_091_recast_x(CONSTANT,2)
    assign c_i32_091_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // dupName_11_comparator_x(LOGICAL,20)@25 + 1
    assign dupName_11_comparator_x_qi = $unsigned(in_c1_eni2_12_tpl == c_i32_091_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    dupName_11_comparator_x_delay ( .xin(dupName_11_comparator_x_qi), .xout(dupName_11_comparator_x_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist70_dupName_11_comparator_x_q_30(DELAY,327)
    dspba_delay_ver #( .width(1), .depth(29), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist70_dupName_11_comparator_x_q_30 ( .xin(dupName_11_comparator_x_q), .xout(redist70_dupName_11_comparator_x_q_30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist71_dupName_11_comparator_x_q_42(DELAY,328)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist71_dupName_11_comparator_x_q_42 ( .xin(redist70_dupName_11_comparator_x_q_30_q), .xout(redist71_dupName_11_comparator_x_q_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48(SELECTOR,73)@67 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q);
            if (redist63_dupName_15_comparator_x_q_42_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= $unsigned(i_new_case_assign38_aggregation45_q);
            end
            if (redist65_dupName_14_comparator_x_q_42_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q);
            end
            if (redist67_dupName_13_comparator_x_q_42_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q);
            end
            if (redist69_dupName_12_comparator_x_q_42_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= $unsigned(i_new_case_assign40_aggregation46_q);
            end
            if (redist71_dupName_11_comparator_x_q_42_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q <= $unsigned(redist7_i_llvm_fpga_pop_f32_sum_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop4_aggregation18_out_data_out_24_q);
            end
        end
    end

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_inputreg0(DELAY,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_inputreg0_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_inputreg0_q <= $unsigned(i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q);
        end
    end

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_wraddr(REG,373)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_wraddr_q <= $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_q);
        end
    end

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem(DUALMEM,371)
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_ia = $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_inputreg0_q);
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_aa = redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_wraddr_q;
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_ab = redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_rdcnt_q;
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
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
    ) redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_dmem (
        .clocken1(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_aa),
        .data_a(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_ab),
        .q_b(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_iq),
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
    assign redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_q = redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_iq[31:0];

    // redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_outputreg0(DELAY,370)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_outputreg0_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_outputreg0_q <= $unsigned(redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_mem_q);
        end
    end

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_notEnable(LOGICAL,365)
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_nor(LOGICAL,366)
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_nor_q = ~ (redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_notEnable_q | redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_sticky_ena_q);

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_last(CONSTANT,362)
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_last_q = $unsigned(6'b010110);

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp(LOGICAL,363)
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp_b = {1'b0, redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_q};
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp_q = $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_last_q == redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp_b ? 1'b1 : 1'b0);

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmpReg(REG,364)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmpReg_q <= $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmp_q);
        end
    end

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_sticky_ena(REG,367)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_nor_q == 1'b1)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_sticky_ena_q <= $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_cmpReg_q);
        end
    end

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_enaAnd(LOGICAL,368)
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_enaAnd_q = redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_sticky_ena_q & VCC_q;

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt(COUNTER,360)
    // low=0, high=23, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i <= 5'd0;
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i == 5'd22)
            begin
                redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_eq <= 1'b0;
            end
            if (redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_eq == 1'b1)
            begin
                redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i) + $unsigned(5'd9);
            end
            else
            begin
                redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_q = redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_i[4:0];

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_inputreg0(DELAY,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_inputreg0_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_inputreg0_q <= $unsigned(i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q);
        end
    end

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_wraddr(REG,361)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_wraddr_q <= $unsigned(5'b10111);
        end
        else
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_wraddr_q <= $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_q);
        end
    end

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem(DUALMEM,359)
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_ia = $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_inputreg0_q);
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_aa = redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_wraddr_q;
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_ab = redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_rdcnt_q;
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(24),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(24),
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
    ) redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_dmem (
        .clocken1(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_reset0),
        .clock1(clock),
        .address_a(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_aa),
        .data_a(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_ab),
        .q_b(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_iq),
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
    assign redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_q = redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_iq[31:0];

    // redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_outputreg0(DELAY,358)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_outputreg0_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_outputreg0_q <= $unsigned(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_mem_q);
        end
    end

    // i_conv13_aggregation25(BLACKBOX,67)@54
    // out out_primWireOut@70
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv13_aggregation25 (
        .in_0(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_outputreg0_q),
        .out_primWireOut(i_conv13_aggregation25_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_i_conv13_aggregation25_out_primWireOut_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_conv13_aggregation25_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist27_i_conv13_aggregation25_out_primWireOut_1_q <= $unsigned(i_conv13_aggregation25_out_primWireOut);
        end
    end

    // redist28_i_conv13_aggregation25_out_primWireOut_2(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_conv13_aggregation25_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist28_i_conv13_aggregation25_out_primWireOut_2_q <= $unsigned(redist27_i_conv13_aggregation25_out_primWireOut_1_q);
        end
    end

    // redist29_i_conv13_aggregation25_out_primWireOut_5_inputreg0(DELAY,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_conv13_aggregation25_out_primWireOut_5_inputreg0_q <= '0;
        end
        else
        begin
            redist29_i_conv13_aggregation25_out_primWireOut_5_inputreg0_q <= $unsigned(redist28_i_conv13_aggregation25_out_primWireOut_2_q);
        end
    end

    // redist29_i_conv13_aggregation25_out_primWireOut_5(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_conv13_aggregation25_out_primWireOut_5_delay_0 <= '0;
            redist29_i_conv13_aggregation25_out_primWireOut_5_q <= '0;
        end
        else
        begin
            redist29_i_conv13_aggregation25_out_primWireOut_5_delay_0 <= $unsigned(redist29_i_conv13_aggregation25_out_primWireOut_5_inputreg0_q);
            redist29_i_conv13_aggregation25_out_primWireOut_5_q <= redist29_i_conv13_aggregation25_out_primWireOut_5_delay_0;
        end
    end

    // valid_fanout_reg3(REG,248)@69 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist57_sync_together119_aunroll_x_in_i_valid_44_q);
        end
    end

    // valid_fanout_reg9(REG,254)@74 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist59_sync_together119_aunroll_x_in_i_valid_49_q);
        end
    end

    // c_float_0x3810000000000000101(FLOATCONSTANT,34)
    assign c_float_0x3810000000000000101_q = $unsigned(32'b00000000100000000000000000000000);

    // redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50(DELAY,305)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50 ( .xin(redist47_sync_together119_aunroll_x_in_c1_eni2_14_tpl_43_q), .xout(redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_spec_select53_aggregation69(MUX,103)@75
    assign i_spec_select53_aggregation69_s = redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50_q;
    always @(i_spec_select53_aggregation69_s or i_reduction_aggregation_1_aggregation55_q or c_float_0x3810000000000000101_q)
    begin
        unique case (i_spec_select53_aggregation69_s)
            1'b0 : i_spec_select53_aggregation69_q = i_reduction_aggregation_1_aggregation55_q;
            1'b1 : i_spec_select53_aggregation69_q = c_float_0x3810000000000000101_q;
            default : i_spec_select53_aggregation69_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70(BLACKBOX,85)@75
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    streamer_i_llvm_fpga_push_f32_max_1_aggr00000_push6_aggregation0 thei_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70 (
        .in_data_in(i_spec_select53_aggregation69_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_feedback_stall_out_6),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45(DELAY,308)
    dspba_delay_ver #( .width(1), .depth(27), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45 ( .xin(redist50_sync_together119_aunroll_x_in_c1_eni2_15_tpl_18_q), .xout(redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26(BLACKBOX,80)@70
    // out out_feedback_stall_out_6@20000000
    streamer_i_llvm_fpga_pop_f32_max_1_aggre0000_0_pop6_aggregation0 thei_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26 (
        .in_data_in(c_float_0_000000e_0092_q),
        .in_dir(redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45_q),
        .in_feedback_in_6(i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push6_aggregation70_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1(DELAY,268)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out);
        end
    end

    // redist12_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_2(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_2_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_2_q <= $unsigned(redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1_q);
        end
    end

    // redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_inputreg0(DELAY,344)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_inputreg0_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_inputreg0_q <= $unsigned(redist12_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_2_q);
        end
    end

    // redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_delay_0 <= '0;
            redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_delay_0 <= $unsigned(redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_inputreg0_q);
            redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_q <= redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_delay_0;
        end
    end

    // i_acl_13_aggregation40(LOGICAL,55)@26 + 1
    assign i_acl_13_aggregation40_qi = dupName_14_comparator_x_q & i_tobool_aggregation8_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_13_aggregation40_delay ( .xin(i_acl_13_aggregation40_qi), .xout(i_acl_13_aggregation40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_16_aggregation41(LOGICAL,56)@26 + 1
    assign i_acl_16_aggregation41_qi = dupName_12_comparator_x_q & i_tobool_aggregation8_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_16_aggregation41_delay ( .xin(i_acl_16_aggregation41_qi), .xout(i_acl_16_aggregation41_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_acl_18_aggregation42(LOGICAL,57)@26 + 1
    assign i_acl_18_aggregation42_qi = dupName_11_comparator_x_q & i_tobool_aggregation8_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_18_aggregation42_delay ( .xin(i_acl_18_aggregation42_qi), .xout(i_acl_18_aggregation42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_aggregation51(LOGICAL,108)@27
    assign i_unnamed_aggregation51_q = i_acl_18_aggregation42_q | i_acl_16_aggregation41_q;

    // i_selcond_aggregation_2_aggregation52(LOGICAL,99)@27
    assign i_selcond_aggregation_2_aggregation52_q = i_unnamed_aggregation51_q ^ VCC_q;

    // i_reduction_aggregation_3_aggregation53(LOGICAL,94)@27 + 1
    assign i_reduction_aggregation_3_aggregation53_qi = i_selcond_aggregation_2_aggregation52_q & i_acl_13_aggregation40_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_aggregation_3_aggregation53_delay ( .xin(i_reduction_aggregation_3_aggregation53_qi), .xout(i_reduction_aggregation_3_aggregation53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_i_reduction_aggregation_3_aggregation53_q_47(DELAY,261)
    dspba_delay_ver #( .width(1), .depth(46), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_i_reduction_aggregation_3_aggregation53_q_47 ( .xin(i_reduction_aggregation_3_aggregation53_q), .xout(redist4_i_reduction_aggregation_3_aggregation53_q_47_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // frac_y_uid139_i_cmp14_aggregation27(BITSELECT,138)@71
    assign frac_y_uid139_i_cmp14_aggregation27_b = redist27_i_conv13_aggregation25_out_primWireOut_1_q[22:0];

    // cstZeroWF_uid119_i_cmp14_aggregation27(CONSTANT,118)
    assign cstZeroWF_uid119_i_cmp14_aggregation27_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid142_i_cmp14_aggregation27(LOGICAL,141)@71 + 1
    assign fracXIsZero_uid142_i_cmp14_aggregation27_qi = $unsigned(cstZeroWF_uid119_i_cmp14_aggregation27_q == frac_y_uid139_i_cmp14_aggregation27_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid142_i_cmp14_aggregation27_delay ( .xin(fracXIsZero_uid142_i_cmp14_aggregation27_qi), .xout(fracXIsZero_uid142_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid120_i_cmp14_aggregation27(CONSTANT,119)
    assign cstAllZWE_uid120_i_cmp14_aggregation27_q = $unsigned(8'b00000000);

    // exp_y_uid138_i_cmp14_aggregation27(BITSELECT,137)@71
    assign exp_y_uid138_i_cmp14_aggregation27_b = redist27_i_conv13_aggregation25_out_primWireOut_1_q[30:23];

    // expXIsZero_uid140_i_cmp14_aggregation27(LOGICAL,139)@71 + 1
    assign expXIsZero_uid140_i_cmp14_aggregation27_qi = $unsigned(exp_y_uid138_i_cmp14_aggregation27_b == cstAllZWE_uid120_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid140_i_cmp14_aggregation27_delay ( .xin(expXIsZero_uid140_i_cmp14_aggregation27_qi), .xout(expXIsZero_uid140_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_y_uid144_i_cmp14_aggregation27(LOGICAL,143)@72
    assign excZ_y_uid144_i_cmp14_aggregation27_q = expXIsZero_uid140_i_cmp14_aggregation27_q & fracXIsZero_uid142_i_cmp14_aggregation27_q;

    // invExcYZ_uid174_i_cmp14_aggregation27(LOGICAL,173)@72
    assign invExcYZ_uid174_i_cmp14_aggregation27_q = ~ (excZ_y_uid144_i_cmp14_aggregation27_q);

    // frac_x_uid122_i_cmp14_aggregation27(BITSELECT,121)@71
    assign frac_x_uid122_i_cmp14_aggregation27_b = redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1_q[22:0];

    // fracXIsZero_uid125_i_cmp14_aggregation27(LOGICAL,124)@71 + 1
    assign fracXIsZero_uid125_i_cmp14_aggregation27_qi = $unsigned(cstZeroWF_uid119_i_cmp14_aggregation27_q == frac_x_uid122_i_cmp14_aggregation27_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid125_i_cmp14_aggregation27_delay ( .xin(fracXIsZero_uid125_i_cmp14_aggregation27_qi), .xout(fracXIsZero_uid125_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // exp_x_uid121_i_cmp14_aggregation27(BITSELECT,120)@71
    assign exp_x_uid121_i_cmp14_aggregation27_b = redist11_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_1_q[30:23];

    // expXIsZero_uid123_i_cmp14_aggregation27(LOGICAL,122)@71 + 1
    assign expXIsZero_uid123_i_cmp14_aggregation27_qi = $unsigned(exp_x_uid121_i_cmp14_aggregation27_b == cstAllZWE_uid120_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid123_i_cmp14_aggregation27_delay ( .xin(expXIsZero_uid123_i_cmp14_aggregation27_qi), .xout(expXIsZero_uid123_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_x_uid127_i_cmp14_aggregation27(LOGICAL,126)@72
    assign excZ_x_uid127_i_cmp14_aggregation27_q = expXIsZero_uid123_i_cmp14_aggregation27_q & fracXIsZero_uid125_i_cmp14_aggregation27_q;

    // invExcXZ_uid175_i_cmp14_aggregation27(LOGICAL,174)@72
    assign invExcXZ_uid175_i_cmp14_aggregation27_q = ~ (excZ_x_uid127_i_cmp14_aggregation27_q);

    // oneNonZero_uid176_i_cmp14_aggregation27(LOGICAL,175)@72 + 1
    assign oneNonZero_uid176_i_cmp14_aggregation27_qi = invExcXZ_uid175_i_cmp14_aggregation27_q | invExcYZ_uid174_i_cmp14_aggregation27_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneNonZero_uid176_i_cmp14_aggregation27_delay ( .xin(oneNonZero_uid176_i_cmp14_aggregation27_qi), .xout(oneNonZero_uid176_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // two_uid168_i_cmp14_aggregation27(CONSTANT,167)
    assign two_uid168_i_cmp14_aggregation27_q = $unsigned(2'b10);

    // signX_uid166_i_cmp14_aggregation27(BITSELECT,165)@72
    assign signX_uid166_i_cmp14_aggregation27_b = $unsigned(redist12_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_2_q[31:31]);

    // signY_uid167_i_cmp14_aggregation27(BITSELECT,166)@72
    assign signY_uid167_i_cmp14_aggregation27_b = $unsigned(redist28_i_conv13_aggregation25_out_primWireOut_2_q[31:31]);

    // concSXSY_uid169_i_cmp14_aggregation27(BITJOIN,168)@72
    assign concSXSY_uid169_i_cmp14_aggregation27_q = {signX_uid166_i_cmp14_aggregation27_b, signY_uid167_i_cmp14_aggregation27_b};

    // sxLTsy_uid170_i_cmp14_aggregation27(LOGICAL,169)@72 + 1
    assign sxLTsy_uid170_i_cmp14_aggregation27_qi = $unsigned(concSXSY_uid169_i_cmp14_aggregation27_q == two_uid168_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxLTsy_uid170_i_cmp14_aggregation27_delay ( .xin(sxLTsy_uid170_i_cmp14_aggregation27_qi), .xout(sxLTsy_uid170_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rc2_uid177_i_cmp14_aggregation27(LOGICAL,176)@73
    assign rc2_uid177_i_cmp14_aggregation27_q = sxLTsy_uid170_i_cmp14_aggregation27_q & oneNonZero_uid176_i_cmp14_aggregation27_q;

    // expFracX_uid157_i_cmp14_aggregation27(BITJOIN,156)@71
    assign expFracX_uid157_i_cmp14_aggregation27_q = {exp_x_uid121_i_cmp14_aggregation27_b, frac_x_uid122_i_cmp14_aggregation27_b};

    // expFracY_uid159_i_cmp14_aggregation27(BITJOIN,158)@71
    assign expFracY_uid159_i_cmp14_aggregation27_q = {exp_y_uid138_i_cmp14_aggregation27_b, frac_y_uid139_i_cmp14_aggregation27_b};

    // efxGTefy_uid161_i_cmp14_aggregation27(COMPARE,160)@71 + 1
    assign efxGTefy_uid161_i_cmp14_aggregation27_a = {2'b00, expFracY_uid159_i_cmp14_aggregation27_q};
    assign efxGTefy_uid161_i_cmp14_aggregation27_b = {2'b00, expFracX_uid157_i_cmp14_aggregation27_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid161_i_cmp14_aggregation27_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid161_i_cmp14_aggregation27_o <= $unsigned(efxGTefy_uid161_i_cmp14_aggregation27_a) - $unsigned(efxGTefy_uid161_i_cmp14_aggregation27_b);
        end
    end
    assign efxGTefy_uid161_i_cmp14_aggregation27_c[0] = efxGTefy_uid161_i_cmp14_aggregation27_o[32];

    // efxLTefy_uid162_i_cmp14_aggregation27(COMPARE,161)@71 + 1
    assign efxLTefy_uid162_i_cmp14_aggregation27_a = {2'b00, expFracX_uid157_i_cmp14_aggregation27_q};
    assign efxLTefy_uid162_i_cmp14_aggregation27_b = {2'b00, expFracY_uid159_i_cmp14_aggregation27_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid162_i_cmp14_aggregation27_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid162_i_cmp14_aggregation27_o <= $unsigned(efxLTefy_uid162_i_cmp14_aggregation27_a) - $unsigned(efxLTefy_uid162_i_cmp14_aggregation27_b);
        end
    end
    assign efxLTefy_uid162_i_cmp14_aggregation27_c[0] = efxLTefy_uid162_i_cmp14_aggregation27_o[32];

    // expFracCompMux_uid173_i_cmp14_aggregation27(MUX,172)@72
    assign expFracCompMux_uid173_i_cmp14_aggregation27_s = signX_uid166_i_cmp14_aggregation27_b;
    always @(expFracCompMux_uid173_i_cmp14_aggregation27_s or efxLTefy_uid162_i_cmp14_aggregation27_c or efxGTefy_uid161_i_cmp14_aggregation27_c)
    begin
        unique case (expFracCompMux_uid173_i_cmp14_aggregation27_s)
            1'b0 : expFracCompMux_uid173_i_cmp14_aggregation27_q = efxLTefy_uid162_i_cmp14_aggregation27_c;
            1'b1 : expFracCompMux_uid173_i_cmp14_aggregation27_q = efxGTefy_uid161_i_cmp14_aggregation27_c;
            default : expFracCompMux_uid173_i_cmp14_aggregation27_q = 1'b0;
        endcase
    end

    // xorSigns_uid171_i_cmp14_aggregation27(LOGICAL,170)@72
    assign xorSigns_uid171_i_cmp14_aggregation27_q = signX_uid166_i_cmp14_aggregation27_b ^ signY_uid167_i_cmp14_aggregation27_b;

    // sxEQsy_uid172_i_cmp14_aggregation27(LOGICAL,171)@72
    assign sxEQsy_uid172_i_cmp14_aggregation27_q = ~ (xorSigns_uid171_i_cmp14_aggregation27_q);

    // sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27(LOGICAL,177)@72 + 1
    assign sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_qi = sxEQsy_uid172_i_cmp14_aggregation27_q & expFracCompMux_uid173_i_cmp14_aggregation27_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_delay ( .xin(sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_qi), .xout(sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // r_uid179_i_cmp14_aggregation27(LOGICAL,178)@73 + 1
    assign r_uid179_i_cmp14_aggregation27_qi = sxEQsyExpFracCompMux_uid178_i_cmp14_aggregation27_q | rc2_uid177_i_cmp14_aggregation27_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid179_i_cmp14_aggregation27_delay ( .xin(r_uid179_i_cmp14_aggregation27_qi), .xout(r_uid179_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid143_i_cmp14_aggregation27(LOGICAL,142)@72
    assign fracXIsNotZero_uid143_i_cmp14_aggregation27_q = ~ (fracXIsZero_uid142_i_cmp14_aggregation27_q);

    // cstAllOWE_uid118_i_cmp14_aggregation27(CONSTANT,117)
    assign cstAllOWE_uid118_i_cmp14_aggregation27_q = $unsigned(8'b11111111);

    // expXIsMax_uid141_i_cmp14_aggregation27(LOGICAL,140)@71 + 1
    assign expXIsMax_uid141_i_cmp14_aggregation27_qi = $unsigned(exp_y_uid138_i_cmp14_aggregation27_b == cstAllOWE_uid118_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid141_i_cmp14_aggregation27_delay ( .xin(expXIsMax_uid141_i_cmp14_aggregation27_qi), .xout(expXIsMax_uid141_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_y_uid146_i_cmp14_aggregation27(LOGICAL,145)@72
    assign excN_y_uid146_i_cmp14_aggregation27_q = expXIsMax_uid141_i_cmp14_aggregation27_q & fracXIsNotZero_uid143_i_cmp14_aggregation27_q;

    // fracXIsNotZero_uid126_i_cmp14_aggregation27(LOGICAL,125)@72
    assign fracXIsNotZero_uid126_i_cmp14_aggregation27_q = ~ (fracXIsZero_uid125_i_cmp14_aggregation27_q);

    // expXIsMax_uid124_i_cmp14_aggregation27(LOGICAL,123)@71 + 1
    assign expXIsMax_uid124_i_cmp14_aggregation27_qi = $unsigned(exp_x_uid121_i_cmp14_aggregation27_b == cstAllOWE_uid118_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid124_i_cmp14_aggregation27_delay ( .xin(expXIsMax_uid124_i_cmp14_aggregation27_qi), .xout(expXIsMax_uid124_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_x_uid129_i_cmp14_aggregation27(LOGICAL,128)@72
    assign excN_x_uid129_i_cmp14_aggregation27_q = expXIsMax_uid124_i_cmp14_aggregation27_q & fracXIsNotZero_uid126_i_cmp14_aggregation27_q;

    // oneIsNaN_uid152_i_cmp14_aggregation27(LOGICAL,151)@72 + 1
    assign oneIsNaN_uid152_i_cmp14_aggregation27_qi = excN_x_uid129_i_cmp14_aggregation27_q | excN_y_uid146_i_cmp14_aggregation27_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid152_i_cmp14_aggregation27_delay ( .xin(oneIsNaN_uid152_i_cmp14_aggregation27_qi), .xout(oneIsNaN_uid152_i_cmp14_aggregation27_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist1_oneIsNaN_uid152_i_cmp14_aggregation27_q_2(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_oneIsNaN_uid152_i_cmp14_aggregation27_q_2_q <= '0;
        end
        else
        begin
            redist1_oneIsNaN_uid152_i_cmp14_aggregation27_q_2_q <= $unsigned(oneIsNaN_uid152_i_cmp14_aggregation27_q);
        end
    end

    // rPostExc_uid180_i_cmp14_aggregation27(MUX,179)@74
    assign rPostExc_uid180_i_cmp14_aggregation27_s = redist1_oneIsNaN_uid152_i_cmp14_aggregation27_q_2_q;
    always @(rPostExc_uid180_i_cmp14_aggregation27_s or r_uid179_i_cmp14_aggregation27_q or GND_q)
    begin
        unique case (rPostExc_uid180_i_cmp14_aggregation27_s)
            1'b0 : rPostExc_uid180_i_cmp14_aggregation27_q = r_uid179_i_cmp14_aggregation27_q;
            1'b1 : rPostExc_uid180_i_cmp14_aggregation27_q = GND_q;
            default : rPostExc_uid180_i_cmp14_aggregation27_q = 1'b0;
        endcase
    end

    // i_reduction_aggregation_4_aggregation54(LOGICAL,95)@74 + 1
    assign i_reduction_aggregation_4_aggregation54_qi = rPostExc_uid180_i_cmp14_aggregation27_q & redist4_i_reduction_aggregation_3_aggregation53_q_47_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_aggregation_4_aggregation54_delay ( .xin(i_reduction_aggregation_4_aggregation54_qi), .xout(i_reduction_aggregation_4_aggregation54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_aggregation_1_aggregation55(MUX,92)@75
    assign i_reduction_aggregation_1_aggregation55_s = i_reduction_aggregation_4_aggregation54_q;
    always @(i_reduction_aggregation_1_aggregation55_s or redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_q or redist29_i_conv13_aggregation25_out_primWireOut_5_q)
    begin
        unique case (i_reduction_aggregation_1_aggregation55_s)
            1'b0 : i_reduction_aggregation_1_aggregation55_q = redist13_i_llvm_fpga_pop_f32_max_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop6_aggregation26_out_data_out_5_q;
            1'b1 : i_reduction_aggregation_1_aggregation55_q = redist29_i_conv13_aggregation25_out_primWireOut_5_q;
            default : i_reduction_aggregation_1_aggregation55_q = 32'b0;
        endcase
    end

    // i_conv27_aggregation32(BLACKBOX,68)@54
    // out out_primWireOut@70
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz thei_conv27_aggregation32 (
        .in_0(redist18_i_llvm_fpga_case_i32_i32_v3i32_s_case_assign_struct_aggregation_fpgaunique_0s_case_stmt47_aggregation24_q_28_outputreg0_q),
        .out_primWireOut(i_conv27_aggregation32_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_conv27_aggregation32_out_primWireOut_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_conv27_aggregation32_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist24_i_conv27_aggregation32_out_primWireOut_1_q <= $unsigned(i_conv27_aggregation32_out_primWireOut);
        end
    end

    // redist25_i_conv27_aggregation32_out_primWireOut_2(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_conv27_aggregation32_out_primWireOut_2_q <= '0;
        end
        else
        begin
            redist25_i_conv27_aggregation32_out_primWireOut_2_q <= $unsigned(redist24_i_conv27_aggregation32_out_primWireOut_1_q);
        end
    end

    // redist26_i_conv27_aggregation32_out_primWireOut_5_inputreg0(DELAY,393)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_conv27_aggregation32_out_primWireOut_5_inputreg0_q <= '0;
        end
        else
        begin
            redist26_i_conv27_aggregation32_out_primWireOut_5_inputreg0_q <= $unsigned(redist25_i_conv27_aggregation32_out_primWireOut_2_q);
        end
    end

    // redist26_i_conv27_aggregation32_out_primWireOut_5(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_conv27_aggregation32_out_primWireOut_5_delay_0 <= '0;
            redist26_i_conv27_aggregation32_out_primWireOut_5_q <= '0;
        end
        else
        begin
            redist26_i_conv27_aggregation32_out_primWireOut_5_delay_0 <= $unsigned(redist26_i_conv27_aggregation32_out_primWireOut_5_inputreg0_q);
            redist26_i_conv27_aggregation32_out_primWireOut_5_q <= redist26_i_conv27_aggregation32_out_primWireOut_5_delay_0;
        end
    end

    // valid_fanout_reg4(REG,249)@69 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist57_sync_together119_aunroll_x_in_i_valid_44_q);
        end
    end

    // valid_fanout_reg10(REG,255)@74 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist59_sync_together119_aunroll_x_in_i_valid_49_q);
        end
    end

    // c_float_0x47EFFFFFE0000000102(FLOATCONSTANT,35)
    assign c_float_0x47EFFFFFE0000000102_q = $unsigned(32'b01111111011111111111111111111111);

    // i_spec_select54_aggregation71(MUX,104)@75
    assign i_spec_select54_aggregation71_s = redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50_q;
    always @(i_spec_select54_aggregation71_s or i_reduction_aggregation_2_aggregation62_q or c_float_0x47EFFFFFE0000000102_q)
    begin
        unique case (i_spec_select54_aggregation71_s)
            1'b0 : i_spec_select54_aggregation71_q = i_reduction_aggregation_2_aggregation62_q;
            1'b1 : i_spec_select54_aggregation71_q = c_float_0x47EFFFFFE0000000102_q;
            default : i_spec_select54_aggregation71_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72(BLACKBOX,86)@75
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    streamer_i_llvm_fpga_push_f32_min_1_aggr00000_push7_aggregation0 thei_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72 (
        .in_data_in(i_spec_select54_aggregation71_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_feedback_stall_out_7),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33(BLACKBOX,81)@70
    // out out_feedback_stall_out_7@20000000
    streamer_i_llvm_fpga_pop_f32_min_1_aggre0000_0_pop7_aggregation0 thei_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33 (
        .in_data_in(c_float_0_000000e_0092_q),
        .in_dir(redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45_q),
        .in_feedback_in_7(i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push7_aggregation72_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_2(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_2_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_2_q <= $unsigned(redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1_q);
        end
    end

    // redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_inputreg0(DELAY,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_inputreg0_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_inputreg0_q <= $unsigned(redist9_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_2_q);
        end
    end

    // redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_delay_0 <= '0;
            redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_delay_0 <= $unsigned(redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_inputreg0_q);
            redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_q <= redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_delay_0;
        end
    end

    // redist30_i_cmp21_aggregation28_q_3(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_cmp21_aggregation28_q_3_delay_0 <= '0;
            redist30_i_cmp21_aggregation28_q_3_q <= '0;
        end
        else
        begin
            redist30_i_cmp21_aggregation28_q_3_delay_0 <= $unsigned(dupName_13_comparator_x_q);
            redist30_i_cmp21_aggregation28_q_3_q <= redist30_i_cmp21_aggregation28_q_3_delay_0;
        end
    end

    // i_unnamed_aggregation56(LOGICAL,109)@27
    assign i_unnamed_aggregation56_q = i_acl_16_aggregation41_q | i_acl_13_aggregation40_q;

    // i_unnamed_aggregation57(LOGICAL,110)@27 + 1
    assign i_unnamed_aggregation57_qi = i_acl_18_aggregation42_q | i_unnamed_aggregation56_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_aggregation57_delay ( .xin(i_unnamed_aggregation57_qi), .xout(i_unnamed_aggregation57_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_selcond_aggregation_4_aggregation58(LOGICAL,100)@28
    assign i_selcond_aggregation_4_aggregation58_q = i_unnamed_aggregation57_q ^ VCC_q;

    // i_reduction_aggregation_5_aggregation59(LOGICAL,96)@28 + 1
    assign i_reduction_aggregation_5_aggregation59_qi = i_selcond_aggregation_4_aggregation58_q & redist30_i_cmp21_aggregation28_q_3_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_aggregation_5_aggregation59_delay ( .xin(i_reduction_aggregation_5_aggregation59_qi), .xout(i_reduction_aggregation_5_aggregation59_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_i_reduction_aggregation_5_aggregation59_q_38(DELAY,260)
    dspba_delay_ver #( .width(1), .depth(37), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_i_reduction_aggregation_5_aggregation59_q_38 ( .xin(i_reduction_aggregation_5_aggregation59_q), .xout(redist3_i_reduction_aggregation_5_aggregation59_q_38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_aggregation_6_aggregation60(LOGICAL,97)@66 + 1
    assign i_reduction_aggregation_6_aggregation60_qi = redist61_i_tobool_aggregation8_sel_x_b_40_q & redist3_i_reduction_aggregation_5_aggregation59_q_38_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_aggregation_6_aggregation60_delay ( .xin(i_reduction_aggregation_6_aggregation60_qi), .xout(i_reduction_aggregation_6_aggregation60_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_i_reduction_aggregation_6_aggregation60_q_8(DELAY,259)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_i_reduction_aggregation_6_aggregation60_q_8 ( .xin(i_reduction_aggregation_6_aggregation60_q), .xout(redist2_i_reduction_aggregation_6_aggregation60_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // frac_y_uid203_i_cmp28_aggregation34(BITSELECT,202)@71
    assign frac_y_uid203_i_cmp28_aggregation34_b = redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1_q[22:0];

    // fracXIsZero_uid206_i_cmp28_aggregation34(LOGICAL,205)@71 + 1
    assign fracXIsZero_uid206_i_cmp28_aggregation34_qi = $unsigned(cstZeroWF_uid119_i_cmp14_aggregation27_q == frac_y_uid203_i_cmp28_aggregation34_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid206_i_cmp28_aggregation34_delay ( .xin(fracXIsZero_uid206_i_cmp28_aggregation34_qi), .xout(fracXIsZero_uid206_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // exp_y_uid202_i_cmp28_aggregation34(BITSELECT,201)@71
    assign exp_y_uid202_i_cmp28_aggregation34_b = redist8_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_1_q[30:23];

    // expXIsZero_uid204_i_cmp28_aggregation34(LOGICAL,203)@71 + 1
    assign expXIsZero_uid204_i_cmp28_aggregation34_qi = $unsigned(exp_y_uid202_i_cmp28_aggregation34_b == cstAllZWE_uid120_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid204_i_cmp28_aggregation34_delay ( .xin(expXIsZero_uid204_i_cmp28_aggregation34_qi), .xout(expXIsZero_uid204_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_y_uid208_i_cmp28_aggregation34(LOGICAL,207)@72
    assign excZ_y_uid208_i_cmp28_aggregation34_q = expXIsZero_uid204_i_cmp28_aggregation34_q & fracXIsZero_uid206_i_cmp28_aggregation34_q;

    // invExcYZ_uid238_i_cmp28_aggregation34(LOGICAL,237)@72
    assign invExcYZ_uid238_i_cmp28_aggregation34_q = ~ (excZ_y_uid208_i_cmp28_aggregation34_q);

    // frac_x_uid186_i_cmp28_aggregation34(BITSELECT,185)@71
    assign frac_x_uid186_i_cmp28_aggregation34_b = redist24_i_conv27_aggregation32_out_primWireOut_1_q[22:0];

    // fracXIsZero_uid189_i_cmp28_aggregation34(LOGICAL,188)@71 + 1
    assign fracXIsZero_uid189_i_cmp28_aggregation34_qi = $unsigned(cstZeroWF_uid119_i_cmp14_aggregation27_q == frac_x_uid186_i_cmp28_aggregation34_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid189_i_cmp28_aggregation34_delay ( .xin(fracXIsZero_uid189_i_cmp28_aggregation34_qi), .xout(fracXIsZero_uid189_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // exp_x_uid185_i_cmp28_aggregation34(BITSELECT,184)@71
    assign exp_x_uid185_i_cmp28_aggregation34_b = redist24_i_conv27_aggregation32_out_primWireOut_1_q[30:23];

    // expXIsZero_uid187_i_cmp28_aggregation34(LOGICAL,186)@71 + 1
    assign expXIsZero_uid187_i_cmp28_aggregation34_qi = $unsigned(exp_x_uid185_i_cmp28_aggregation34_b == cstAllZWE_uid120_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid187_i_cmp28_aggregation34_delay ( .xin(expXIsZero_uid187_i_cmp28_aggregation34_qi), .xout(expXIsZero_uid187_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_x_uid191_i_cmp28_aggregation34(LOGICAL,190)@72
    assign excZ_x_uid191_i_cmp28_aggregation34_q = expXIsZero_uid187_i_cmp28_aggregation34_q & fracXIsZero_uid189_i_cmp28_aggregation34_q;

    // invExcXZ_uid239_i_cmp28_aggregation34(LOGICAL,238)@72
    assign invExcXZ_uid239_i_cmp28_aggregation34_q = ~ (excZ_x_uid191_i_cmp28_aggregation34_q);

    // oneNonZero_uid240_i_cmp28_aggregation34(LOGICAL,239)@72 + 1
    assign oneNonZero_uid240_i_cmp28_aggregation34_qi = invExcXZ_uid239_i_cmp28_aggregation34_q | invExcYZ_uid238_i_cmp28_aggregation34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneNonZero_uid240_i_cmp28_aggregation34_delay ( .xin(oneNonZero_uid240_i_cmp28_aggregation34_qi), .xout(oneNonZero_uid240_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signX_uid230_i_cmp28_aggregation34(BITSELECT,229)@72
    assign signX_uid230_i_cmp28_aggregation34_b = $unsigned(redist25_i_conv27_aggregation32_out_primWireOut_2_q[31:31]);

    // signY_uid231_i_cmp28_aggregation34(BITSELECT,230)@72
    assign signY_uid231_i_cmp28_aggregation34_b = $unsigned(redist9_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_2_q[31:31]);

    // concSXSY_uid233_i_cmp28_aggregation34(BITJOIN,232)@72
    assign concSXSY_uid233_i_cmp28_aggregation34_q = {signX_uid230_i_cmp28_aggregation34_b, signY_uid231_i_cmp28_aggregation34_b};

    // sxLTsy_uid234_i_cmp28_aggregation34(LOGICAL,233)@72 + 1
    assign sxLTsy_uid234_i_cmp28_aggregation34_qi = $unsigned(concSXSY_uid233_i_cmp28_aggregation34_q == two_uid168_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxLTsy_uid234_i_cmp28_aggregation34_delay ( .xin(sxLTsy_uid234_i_cmp28_aggregation34_qi), .xout(sxLTsy_uid234_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rc2_uid241_i_cmp28_aggregation34(LOGICAL,240)@73
    assign rc2_uid241_i_cmp28_aggregation34_q = sxLTsy_uid234_i_cmp28_aggregation34_q & oneNonZero_uid240_i_cmp28_aggregation34_q;

    // expFracX_uid221_i_cmp28_aggregation34(BITJOIN,220)@71
    assign expFracX_uid221_i_cmp28_aggregation34_q = {exp_x_uid185_i_cmp28_aggregation34_b, frac_x_uid186_i_cmp28_aggregation34_b};

    // expFracY_uid223_i_cmp28_aggregation34(BITJOIN,222)@71
    assign expFracY_uid223_i_cmp28_aggregation34_q = {exp_y_uid202_i_cmp28_aggregation34_b, frac_y_uid203_i_cmp28_aggregation34_b};

    // efxGTefy_uid225_i_cmp28_aggregation34(COMPARE,224)@71 + 1
    assign efxGTefy_uid225_i_cmp28_aggregation34_a = {2'b00, expFracY_uid223_i_cmp28_aggregation34_q};
    assign efxGTefy_uid225_i_cmp28_aggregation34_b = {2'b00, expFracX_uid221_i_cmp28_aggregation34_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid225_i_cmp28_aggregation34_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid225_i_cmp28_aggregation34_o <= $unsigned(efxGTefy_uid225_i_cmp28_aggregation34_a) - $unsigned(efxGTefy_uid225_i_cmp28_aggregation34_b);
        end
    end
    assign efxGTefy_uid225_i_cmp28_aggregation34_c[0] = efxGTefy_uid225_i_cmp28_aggregation34_o[32];

    // efxLTefy_uid226_i_cmp28_aggregation34(COMPARE,225)@71 + 1
    assign efxLTefy_uid226_i_cmp28_aggregation34_a = {2'b00, expFracX_uid221_i_cmp28_aggregation34_q};
    assign efxLTefy_uid226_i_cmp28_aggregation34_b = {2'b00, expFracY_uid223_i_cmp28_aggregation34_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid226_i_cmp28_aggregation34_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid226_i_cmp28_aggregation34_o <= $unsigned(efxLTefy_uid226_i_cmp28_aggregation34_a) - $unsigned(efxLTefy_uid226_i_cmp28_aggregation34_b);
        end
    end
    assign efxLTefy_uid226_i_cmp28_aggregation34_c[0] = efxLTefy_uid226_i_cmp28_aggregation34_o[32];

    // expFracCompMux_uid237_i_cmp28_aggregation34(MUX,236)@72
    assign expFracCompMux_uid237_i_cmp28_aggregation34_s = signX_uid230_i_cmp28_aggregation34_b;
    always @(expFracCompMux_uid237_i_cmp28_aggregation34_s or efxLTefy_uid226_i_cmp28_aggregation34_c or efxGTefy_uid225_i_cmp28_aggregation34_c)
    begin
        unique case (expFracCompMux_uid237_i_cmp28_aggregation34_s)
            1'b0 : expFracCompMux_uid237_i_cmp28_aggregation34_q = efxLTefy_uid226_i_cmp28_aggregation34_c;
            1'b1 : expFracCompMux_uid237_i_cmp28_aggregation34_q = efxGTefy_uid225_i_cmp28_aggregation34_c;
            default : expFracCompMux_uid237_i_cmp28_aggregation34_q = 1'b0;
        endcase
    end

    // xorSigns_uid235_i_cmp28_aggregation34(LOGICAL,234)@72
    assign xorSigns_uid235_i_cmp28_aggregation34_q = signX_uid230_i_cmp28_aggregation34_b ^ signY_uid231_i_cmp28_aggregation34_b;

    // sxEQsy_uid236_i_cmp28_aggregation34(LOGICAL,235)@72
    assign sxEQsy_uid236_i_cmp28_aggregation34_q = ~ (xorSigns_uid235_i_cmp28_aggregation34_q);

    // sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34(LOGICAL,241)@72 + 1
    assign sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_qi = sxEQsy_uid236_i_cmp28_aggregation34_q & expFracCompMux_uid237_i_cmp28_aggregation34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_delay ( .xin(sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_qi), .xout(sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // r_uid243_i_cmp28_aggregation34(LOGICAL,242)@73 + 1
    assign r_uid243_i_cmp28_aggregation34_qi = sxEQsyExpFracCompMux_uid242_i_cmp28_aggregation34_q | rc2_uid241_i_cmp28_aggregation34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid243_i_cmp28_aggregation34_delay ( .xin(r_uid243_i_cmp28_aggregation34_qi), .xout(r_uid243_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid207_i_cmp28_aggregation34(LOGICAL,206)@72
    assign fracXIsNotZero_uid207_i_cmp28_aggregation34_q = ~ (fracXIsZero_uid206_i_cmp28_aggregation34_q);

    // expXIsMax_uid205_i_cmp28_aggregation34(LOGICAL,204)@71 + 1
    assign expXIsMax_uid205_i_cmp28_aggregation34_qi = $unsigned(exp_y_uid202_i_cmp28_aggregation34_b == cstAllOWE_uid118_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid205_i_cmp28_aggregation34_delay ( .xin(expXIsMax_uid205_i_cmp28_aggregation34_qi), .xout(expXIsMax_uid205_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_y_uid210_i_cmp28_aggregation34(LOGICAL,209)@72
    assign excN_y_uid210_i_cmp28_aggregation34_q = expXIsMax_uid205_i_cmp28_aggregation34_q & fracXIsNotZero_uid207_i_cmp28_aggregation34_q;

    // fracXIsNotZero_uid190_i_cmp28_aggregation34(LOGICAL,189)@72
    assign fracXIsNotZero_uid190_i_cmp28_aggregation34_q = ~ (fracXIsZero_uid189_i_cmp28_aggregation34_q);

    // expXIsMax_uid188_i_cmp28_aggregation34(LOGICAL,187)@71 + 1
    assign expXIsMax_uid188_i_cmp28_aggregation34_qi = $unsigned(exp_x_uid185_i_cmp28_aggregation34_b == cstAllOWE_uid118_i_cmp14_aggregation27_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid188_i_cmp28_aggregation34_delay ( .xin(expXIsMax_uid188_i_cmp28_aggregation34_qi), .xout(expXIsMax_uid188_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_x_uid193_i_cmp28_aggregation34(LOGICAL,192)@72
    assign excN_x_uid193_i_cmp28_aggregation34_q = expXIsMax_uid188_i_cmp28_aggregation34_q & fracXIsNotZero_uid190_i_cmp28_aggregation34_q;

    // oneIsNaN_uid216_i_cmp28_aggregation34(LOGICAL,215)@72 + 1
    assign oneIsNaN_uid216_i_cmp28_aggregation34_qi = excN_x_uid193_i_cmp28_aggregation34_q | excN_y_uid210_i_cmp28_aggregation34_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid216_i_cmp28_aggregation34_delay ( .xin(oneIsNaN_uid216_i_cmp28_aggregation34_qi), .xout(oneIsNaN_uid216_i_cmp28_aggregation34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_oneIsNaN_uid216_i_cmp28_aggregation34_q_2(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_oneIsNaN_uid216_i_cmp28_aggregation34_q_2_q <= '0;
        end
        else
        begin
            redist0_oneIsNaN_uid216_i_cmp28_aggregation34_q_2_q <= $unsigned(oneIsNaN_uid216_i_cmp28_aggregation34_q);
        end
    end

    // rPostExc_uid244_i_cmp28_aggregation34(MUX,243)@74
    assign rPostExc_uid244_i_cmp28_aggregation34_s = redist0_oneIsNaN_uid216_i_cmp28_aggregation34_q_2_q;
    always @(rPostExc_uid244_i_cmp28_aggregation34_s or r_uid243_i_cmp28_aggregation34_q or GND_q)
    begin
        unique case (rPostExc_uid244_i_cmp28_aggregation34_s)
            1'b0 : rPostExc_uid244_i_cmp28_aggregation34_q = r_uid243_i_cmp28_aggregation34_q;
            1'b1 : rPostExc_uid244_i_cmp28_aggregation34_q = GND_q;
            default : rPostExc_uid244_i_cmp28_aggregation34_q = 1'b0;
        endcase
    end

    // i_reduction_aggregation_7_aggregation61(LOGICAL,98)@74 + 1
    assign i_reduction_aggregation_7_aggregation61_qi = rPostExc_uid244_i_cmp28_aggregation34_q & redist2_i_reduction_aggregation_6_aggregation60_q_8_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_aggregation_7_aggregation61_delay ( .xin(i_reduction_aggregation_7_aggregation61_qi), .xout(i_reduction_aggregation_7_aggregation61_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_aggregation_2_aggregation62(MUX,93)@75
    assign i_reduction_aggregation_2_aggregation62_s = i_reduction_aggregation_7_aggregation61_q;
    always @(i_reduction_aggregation_2_aggregation62_s or redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_q or redist26_i_conv27_aggregation32_out_primWireOut_5_q)
    begin
        unique case (i_reduction_aggregation_2_aggregation62_s)
            1'b0 : i_reduction_aggregation_2_aggregation62_q = redist10_i_llvm_fpga_pop_f32_min_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop7_aggregation33_out_data_out_5_q;
            1'b1 : i_reduction_aggregation_2_aggregation62_q = redist26_i_conv27_aggregation32_out_primWireOut_5_q;
            default : i_reduction_aggregation_2_aggregation62_q = 32'b0;
        endcase
    end

    // c_float_1_000000e_0093(FLOATCONSTANT,36)
    assign c_float_1_000000e_0093_q = $unsigned(32'b00111111100000000000000000000000);

    // valid_fanout_reg1(REG,246)@30 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist53_sync_together119_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg6(REG,251)@55 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist55_sync_together119_aunroll_x_in_i_valid_30_q);
        end
    end

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_notEnable(LOGICAL,353)
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_notEnable_q = $unsigned(~ (VCC_q));

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_nor(LOGICAL,354)
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_nor_q = ~ (redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_notEnable_q | redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_sticky_ena_q);

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_last(CONSTANT,350)
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_last_q = $unsigned(6'b010001);

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp(LOGICAL,351)
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp_b = {1'b0, redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_q};
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp_q = $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_last_q == redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp_b ? 1'b1 : 1'b0);

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmpReg(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmpReg_q <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmp_q);
        end
    end

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_sticky_ena(REG,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_nor_q == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_sticky_ena_q <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_cmpReg_q);
        end
    end

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_enaAnd(LOGICAL,356)
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_enaAnd_q = redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_sticky_ena_q & VCC_q;

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt(COUNTER,348)
    // low=0, high=18, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i <= 5'd0;
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i == 5'd17)
            begin
                redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_eq <= 1'b0;
            end
            if (redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_eq == 1'b1)
            begin
                redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i) + $unsigned(5'd14);
            end
            else
            begin
                redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_q = redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_i[4:0];

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_inputreg0(DELAY,345)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_inputreg0_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_inputreg0_q <= $unsigned(redist14_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_1_q);
        end
    end

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_wraddr(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_wraddr_q <= $unsigned(5'b10010);
        end
        else
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_wraddr_q <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_q);
        end
    end

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem(DUALMEM,347)
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_ia = $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_inputreg0_q);
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_aa = redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_wraddr_q;
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_ab = redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_rdcnt_q;
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(5),
        .numwords_a(19),
        .width_b(32),
        .widthad_b(5),
        .numwords_b(19),
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
    ) redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_dmem (
        .clocken1(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_reset0),
        .clock1(clock),
        .address_a(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_aa),
        .data_a(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_ab),
        .q_b(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_iq),
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
    assign redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_q = redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_iq[31:0];

    // redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_outputreg0(DELAY,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_outputreg0_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_outputreg0_q <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_mem_q);
        end
    end

    // redist16_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_24(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_24_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_24_q <= $unsigned(redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_outputreg0_q);
        end
    end

    // i_new_case_assign_aggregation39(MUX,90)@54 + 1
    assign i_new_case_assign_aggregation39_s = redist60_i_tobool_aggregation8_sel_x_b_28_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_new_case_assign_aggregation39_q <= 32'b0;
        end
        else
        begin
            unique case (i_new_case_assign_aggregation39_s)
                1'b0 : i_new_case_assign_aggregation39_q <= redist15_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_23_outputreg0_q;
                1'b1 : i_new_case_assign_aggregation39_q <= redist31_i_add_aggregation12_out_primWireOut_1_q;
                default : i_new_case_assign_aggregation39_q <= 32'b0;
            endcase
        end
    end

    // i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44(SELECTOR,72)@55 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= 32'b0;
        end
        else
        begin
            i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= $unsigned(redist16_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_24_q);
            if (redist62_dupName_15_comparator_x_q_30_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= $unsigned(i_new_case_assign_aggregation39_q);
            end
            if (redist64_dupName_14_comparator_x_q_30_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= $unsigned(i_new_case_assign_aggregation39_q);
            end
            if (redist66_dupName_13_comparator_x_q_30_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= $unsigned(i_new_case_assign_aggregation39_q);
            end
            if (redist68_dupName_12_comparator_x_q_30_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= $unsigned(i_new_case_assign_aggregation39_q);
            end
            if (redist70_dupName_11_comparator_x_q_30_q == 1'b1)
            begin
                i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q <= $unsigned(i_new_case_assign_aggregation39_q);
            end
        end
    end

    // i_spec_select_aggregation63(MUX,106)@56
    assign i_spec_select_aggregation63_s = redist46_sync_together119_aunroll_x_in_c1_eni2_14_tpl_31_q;
    always @(i_spec_select_aggregation63_s or i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q or c_float_0_000000e_0092_q)
    begin
        unique case (i_spec_select_aggregation63_s)
            1'b0 : i_spec_select_aggregation63_q = i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q;
            1'b1 : i_spec_select_aggregation63_q = c_float_0_000000e_0092_q;
            default : i_spec_select_aggregation63_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64(BLACKBOX,84)@56
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    streamer_i_llvm_fpga_push_f32_count_1_ag00000_push3_aggregation0 thei_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64 (
        .in_data_in(i_spec_select_aggregation63_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_feedback_stall_out_3),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11(BLACKBOX,79)@31
    // out out_feedback_stall_out_3@20000000
    streamer_i_llvm_fpga_pop_f32_count_1_agg0000_0_pop3_aggregation0 thei_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11 (
        .in_data_in(c_float_0_000000e_0092_q),
        .in_dir(redist49_sync_together119_aunroll_x_in_c1_eni2_15_tpl_6_q),
        .in_feedback_in_3(i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push3_aggregation64_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out);
        end
    end

    // i_add_aggregation12(BLACKBOX,60)@32
    // out out_primWireOut@53
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr00003a0054c2a6344c246w65 thei_add_aggregation12 (
        .in_0(redist14_i_llvm_fpga_pop_f32_count_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop3_aggregation11_out_data_out_1_q),
        .in_1(c_float_1_000000e_0093_q),
        .out_primWireOut(i_add_aggregation12_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_add_aggregation12_out_primWireOut_1(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_add_aggregation12_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist31_i_add_aggregation12_out_primWireOut_1_q <= $unsigned(i_add_aggregation12_out_primWireOut);
        end
    end

    // i_div_aggregation20(BLACKBOX,71)@54
    // in in_0@66
    // out out_primWireOut@74
    streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000b0c2463a0054c2a6355y thei_div_aggregation20 (
        .in_0(redist32_i_add4_aggregation19_out_primWireOut_1_q),
        .in_1(redist31_i_add_aggregation12_out_primWireOut_1_q),
        .out_primWireOut(i_div_aggregation20_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_div_aggregation20_out_primWireOut_1(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_div_aggregation20_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist21_i_div_aggregation20_out_primWireOut_1_q <= $unsigned(i_div_aggregation20_out_primWireOut);
        end
    end

    // valid_fanout_reg5(REG,250)@73 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist58_sync_together119_aunroll_x_in_i_valid_48_q);
        end
    end

    // valid_fanout_reg8(REG,253)@74 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist59_sync_together119_aunroll_x_in_i_valid_49_q);
        end
    end

    // i_spec_select52_aggregation67(MUX,102)@75
    assign i_spec_select52_aggregation67_s = redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50_q;
    always @(i_spec_select52_aggregation67_s or i_reduction_aggregation_0_aggregation50_q or c_float_0_000000e_0092_q)
    begin
        unique case (i_spec_select52_aggregation67_s)
            1'b0 : i_spec_select52_aggregation67_q = i_reduction_aggregation_0_aggregation50_q;
            1'b1 : i_spec_select52_aggregation67_q = c_float_0_000000e_0092_q;
            default : i_spec_select52_aggregation67_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68(BLACKBOX,83)@75
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    streamer_i_llvm_fpga_push_f32_avg_1_aggr00000_push5_aggregation0 thei_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68 (
        .in_data_in(i_spec_select52_aggregation67_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_feedback_stall_out_5),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_0 <= '0;
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_1 <= '0;
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_2 <= '0;
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_q <= '0;
        end
        else
        begin
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_0 <= $unsigned(redist51_sync_together119_aunroll_x_in_c1_eni2_15_tpl_45_q);
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_1 <= redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_0;
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_2 <= redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_1;
            redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_q <= redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_delay_2;
        end
    end

    // i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49(BLACKBOX,78)@74
    // out out_feedback_stall_out_5@20000000
    streamer_i_llvm_fpga_pop_f32_avg_1_aggre0000_0_pop5_aggregation0 thei_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49 (
        .in_data_in(c_float_0_000000e_0092_q),
        .in_dir(redist52_sync_together119_aunroll_x_in_c1_eni2_15_tpl_49_q),
        .in_feedback_in_5(i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_push5_aggregation68_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_feedback_stall_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out);
        end
    end

    // redist34_i_acl_16_aggregation41_q_49(DELAY,291)
    dspba_delay_ver #( .width(1), .depth(48), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist34_i_acl_16_aggregation41_q_49 ( .xin(i_acl_16_aggregation41_q), .xout(redist34_i_acl_16_aggregation41_q_49_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_reduction_aggregation_0_aggregation50(MUX,91)@75
    assign i_reduction_aggregation_0_aggregation50_s = redist34_i_acl_16_aggregation41_q_49_q;
    always @(i_reduction_aggregation_0_aggregation50_s or redist17_i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out_1_q or redist21_i_div_aggregation20_out_primWireOut_1_q)
    begin
        unique case (i_reduction_aggregation_0_aggregation50_s)
            1'b0 : i_reduction_aggregation_0_aggregation50_q = redist17_i_llvm_fpga_pop_f32_avg_1_aggregation_ya_autuple_u2_hh_n_z_4ma_static_0_pop5_aggregation49_out_data_out_1_q;
            1'b1 : i_reduction_aggregation_0_aggregation50_q = redist21_i_div_aggregation20_out_primWireOut_1_q;
            default : i_reduction_aggregation_0_aggregation50_q = 32'b0;
        endcase
    end

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_notEnable(LOGICAL,389)
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_nor(LOGICAL,390)
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_nor_q = ~ (redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_notEnable_q | redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_sticky_ena_q);

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_last(CONSTANT,386)
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_last_q = $unsigned(5'b01110);

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp(LOGICAL,387)
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp_b = {1'b0, redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_q};
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp_q = $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_last_q == redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp_b ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmpReg(REG,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_sticky_ena(REG,391)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_enaAnd(LOGICAL,392)
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_enaAnd_q = redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt(COUNTER,384)
    // low=0, high=15, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_i <= 4'd0;
        end
        else
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_i) + $unsigned(4'd1);
        end
    end
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_q = redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_i[3:0];

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_inputreg0(DELAY,381)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_inputreg0_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_inputreg0_q <= $unsigned(i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q);
        end
    end

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_wraddr(REG,385)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_wraddr_q <= $unsigned(4'b1111);
        end
        else
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_wraddr_q <= $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem(DUALMEM,383)
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_ia = $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_inputreg0_q);
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_aa = redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_wraddr_q;
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_ab = redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_rdcnt_q;
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(4),
        .numwords_a(16),
        .width_b(32),
        .widthad_b(4),
        .numwords_b(16),
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
    ) redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_aa),
        .data_a(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_ab),
        .q_b(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_iq),
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
    assign redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_q = redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_iq[31:0];

    // redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_outputreg0(DELAY,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_outputreg0_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_outputreg0_q <= $unsigned(redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_mem_q);
        end
    end

    // c_i8_1103(CONSTANT,53)
    assign c_i8_1103_q = $unsigned(8'b00000001);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_notEnable(LOGICAL,463)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_nor(LOGICAL,464)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_nor_q = ~ (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_notEnable_q | redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_sticky_ena_q);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_last(CONSTANT,460)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_last_q = $unsigned(5'b01100);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp(LOGICAL,461)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp_b = {1'b0, redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_q};
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp_q = $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_last_q == redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp_b ? 1'b1 : 1'b0);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmpReg(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmpReg_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmp_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_sticky_ena(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_nor_q == 1'b1)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_sticky_ena_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_cmpReg_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_enaAnd(LOGICAL,466)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_enaAnd_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_sticky_ena_q & VCC_q;

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt(COUNTER,458)
    // low=0, high=13, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i <= 4'd0;
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i == 4'd12)
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_eq <= 1'b0;
            end
            if (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_eq == 1'b1)
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i) + $unsigned(4'd3);
            end
            else
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_i[3:0];

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_nor(LOGICAL,489)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_nor_q = ~ (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_notEnable_q | redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_sticky_ena_q);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_last(CONSTANT,485)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_last_q = $unsigned(6'b011100);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp(LOGICAL,486)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp_b = {1'b0, redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_q};
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp_q = $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_last_q == redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmpReg(REG,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmpReg_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmp_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_sticky_ena(REG,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_nor_q == 1'b1)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_sticky_ena_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_cmpReg_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_enaAnd(LOGICAL,491)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_enaAnd_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_sticky_ena_q & VCC_q;

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt(COUNTER,483)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i <= 5'd0;
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i == 5'd28)
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_eq == 1'b1)
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_i[4:0];

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_inputreg0(DELAY,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_inputreg0_q <= $unsigned(in_c1_eni2_6_tpl);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_wraddr(REG,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_wraddr_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem(DUALMEM,482)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_ia = $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_inputreg0_q);
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_aa = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_wraddr_q;
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_ab = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_rdcnt_q;
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_reset0 = ~ (resetn);
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
    ) redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_dmem (
        .clocken1(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_aa),
        .data_a(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_ab),
        .q_b(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_iq),
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
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_iq[7:0];

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_outputreg0(DELAY,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_outputreg0_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_mem_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_inputreg0(DELAY,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_inputreg0_q <= '0;
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_inputreg0_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_split_0_outputreg0_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_wraddr(REG,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_wraddr_q <= $unsigned(4'b1101);
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_wraddr_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_q);
        end
    end

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem(DUALMEM,457)
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_ia = $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_inputreg0_q);
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_aa = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_wraddr_q;
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_ab = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_rdcnt_q;
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(14),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(14),
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
    ) redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_dmem (
        .clocken1(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_reset0),
        .clock1(clock),
        .address_a(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_aa),
        .data_a(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_ab),
        .q_b(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_iq),
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
    assign redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_iq[7:0];

    // redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_outputreg0(DELAY,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_outputreg0_q <= '0;
        end
        else
        begin
            redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_outputreg0_q <= $unsigned(redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_mem_q);
        end
    end

    // i_spec_select55_aggregation73(MUX,105)@75
    assign i_spec_select55_aggregation73_s = redist48_sync_together119_aunroll_x_in_c1_eni2_14_tpl_50_q;
    always @(i_spec_select55_aggregation73_s or redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_outputreg0_q or c_i8_1103_q)
    begin
        unique case (i_spec_select55_aggregation73_s)
            1'b0 : i_spec_select55_aggregation73_q = redist45_sync_together119_aunroll_x_in_c1_eni2_6_tpl_50_outputreg0_q;
            1'b1 : i_spec_select55_aggregation73_q = c_i8_1103_q;
            default : i_spec_select55_aggregation73_q = 8'b0;
        endcase
    end

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_notEnable(LOGICAL,451)
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_nor(LOGICAL,452)
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_nor_q = ~ (redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_notEnable_q | redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_sticky_ena_q);

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_last(CONSTANT,448)
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_last_q = $unsigned(7'b0101100);

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp(LOGICAL,449)
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp_b = {1'b0, redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_q};
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp_q = $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_last_q == redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp_b ? 1'b1 : 1'b0);

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmpReg(REG,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmpReg_q <= $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmp_q);
        end
    end

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_sticky_ena(REG,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_nor_q == 1'b1)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_sticky_ena_q <= $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_cmpReg_q);
        end
    end

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_enaAnd(LOGICAL,454)
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_enaAnd_q = redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_sticky_ena_q & VCC_q;

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt(COUNTER,446)
    // low=0, high=45, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i <= 6'd0;
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i == 6'd44)
            begin
                redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_eq <= 1'b0;
            end
            if (redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_eq == 1'b1)
            begin
                redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i <= $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i) + $unsigned(6'd19);
            end
            else
            begin
                redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i <= $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_q = redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_i[5:0];

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_inputreg0(DELAY,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_inputreg0_q <= '0;
        end
        else
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_inputreg0_q <= $unsigned(redist43_sync_together119_aunroll_x_in_c1_eni2_5_tpl_1_q);
        end
    end

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_wraddr(REG,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_wraddr_q <= $unsigned(6'b101101);
        end
        else
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_wraddr_q <= $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_q);
        end
    end

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem(DUALMEM,445)
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_ia = $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_inputreg0_q);
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_aa = redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_wraddr_q;
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_ab = redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_rdcnt_q;
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(46),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(46),
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
    ) redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_dmem (
        .clocken1(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_reset0),
        .clock1(clock),
        .address_a(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_aa),
        .data_a(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_ab),
        .q_b(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_iq),
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
    assign redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_q = redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_iq[31:0];

    // redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_outputreg0(DELAY,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_outputreg0_q <= '0;
        end
        else
        begin
            redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_outputreg0_q <= $unsigned(redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_mem_q);
        end
    end

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_notEnable(LOGICAL,439)
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_nor(LOGICAL,440)
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_nor_q = ~ (redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_notEnable_q | redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_sticky_ena_q);

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_last(CONSTANT,436)
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_last_q = $unsigned(7'b0101100);

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp(LOGICAL,437)
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp_b = {1'b0, redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_q};
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp_q = $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_last_q == redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp_b ? 1'b1 : 1'b0);

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmpReg(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmpReg_q <= $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmp_q);
        end
    end

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_sticky_ena(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_nor_q == 1'b1)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_sticky_ena_q <= $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_cmpReg_q);
        end
    end

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_enaAnd(LOGICAL,442)
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_enaAnd_q = redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_sticky_ena_q & VCC_q;

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt(COUNTER,434)
    // low=0, high=45, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i <= 6'd0;
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i == 6'd44)
            begin
                redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_eq <= 1'b0;
            end
            if (redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_eq == 1'b1)
            begin
                redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i <= $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i) + $unsigned(6'd19);
            end
            else
            begin
                redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i <= $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_q = redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_i[5:0];

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_inputreg0(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_inputreg0_q <= '0;
        end
        else
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_inputreg0_q <= $unsigned(redist41_sync_together119_aunroll_x_in_c1_eni2_4_tpl_1_q);
        end
    end

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_wraddr(REG,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_wraddr_q <= $unsigned(6'b101101);
        end
        else
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_wraddr_q <= $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_q);
        end
    end

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem(DUALMEM,433)
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_ia = $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_inputreg0_q);
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_aa = redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_wraddr_q;
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_ab = redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_rdcnt_q;
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(46),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(46),
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
    ) redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_dmem (
        .clocken1(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_aa),
        .data_a(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_ab),
        .q_b(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_iq),
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
    assign redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_q = redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_iq[31:0];

    // redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_outputreg0(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_outputreg0_q <= '0;
        end
        else
        begin
            redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_outputreg0_q <= $unsigned(redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_mem_q);
        end
    end

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_notEnable(LOGICAL,427)
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_nor(LOGICAL,428)
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_nor_q = ~ (redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_notEnable_q | redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_sticky_ena_q);

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_last(CONSTANT,424)
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_last_q = $unsigned(7'b0101100);

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp(LOGICAL,425)
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp_b = {1'b0, redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_q};
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp_q = $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_last_q == redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp_b ? 1'b1 : 1'b0);

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmpReg(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmpReg_q <= $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmp_q);
        end
    end

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_sticky_ena(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_nor_q == 1'b1)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_sticky_ena_q <= $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_cmpReg_q);
        end
    end

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_enaAnd(LOGICAL,430)
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_enaAnd_q = redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_sticky_ena_q & VCC_q;

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt(COUNTER,422)
    // low=0, high=45, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i <= 6'd0;
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i == 6'd44)
            begin
                redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_eq <= 1'b0;
            end
            if (redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_eq == 1'b1)
            begin
                redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i <= $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i) + $unsigned(6'd19);
            end
            else
            begin
                redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i <= $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_q = redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_i[5:0];

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_inputreg0(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_inputreg0_q <= '0;
        end
        else
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_inputreg0_q <= $unsigned(redist39_sync_together119_aunroll_x_in_c1_eni2_3_tpl_1_q);
        end
    end

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_wraddr(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_wraddr_q <= $unsigned(6'b101101);
        end
        else
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_wraddr_q <= $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_q);
        end
    end

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem(DUALMEM,421)
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_ia = $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_inputreg0_q);
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_aa = redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_wraddr_q;
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_ab = redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_rdcnt_q;
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(46),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(46),
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
    ) redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_dmem (
        .clocken1(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_reset0),
        .clock1(clock),
        .address_a(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_aa),
        .data_a(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_ab),
        .q_b(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_iq),
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
    assign redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_q = redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_iq[31:0];

    // redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_outputreg0(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_outputreg0_q <= '0;
        end
        else
        begin
            redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_outputreg0_q <= $unsigned(redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_mem_q);
        end
    end

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_notEnable(LOGICAL,415)
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_nor(LOGICAL,416)
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_nor_q = ~ (redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_notEnable_q | redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_sticky_ena_q);

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_last(CONSTANT,412)
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_last_q = $unsigned(7'b0101100);

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp(LOGICAL,413)
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp_b = {1'b0, redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_q};
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp_q = $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_last_q == redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp_b ? 1'b1 : 1'b0);

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmpReg(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmpReg_q <= $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmp_q);
        end
    end

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_sticky_ena(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_nor_q == 1'b1)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_sticky_ena_q <= $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_cmpReg_q);
        end
    end

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_enaAnd(LOGICAL,418)
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_enaAnd_q = redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_sticky_ena_q & VCC_q;

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt(COUNTER,410)
    // low=0, high=45, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i <= 6'd0;
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i == 6'd44)
            begin
                redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_eq <= 1'b0;
            end
            if (redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_eq == 1'b1)
            begin
                redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i <= $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i) + $unsigned(6'd19);
            end
            else
            begin
                redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i <= $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i) + $unsigned(6'd1);
            end
        end
    end
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_q = redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_i[5:0];

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_inputreg0(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_inputreg0_q <= '0;
        end
        else
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_inputreg0_q <= $unsigned(redist37_sync_together119_aunroll_x_in_c1_eni2_2_tpl_1_q);
        end
    end

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_wraddr(REG,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_wraddr_q <= $unsigned(6'b101101);
        end
        else
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_wraddr_q <= $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_q);
        end
    end

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem(DUALMEM,409)
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_ia = $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_inputreg0_q);
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_aa = redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_wraddr_q;
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_ab = redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_rdcnt_q;
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(6),
        .numwords_a(46),
        .width_b(32),
        .widthad_b(6),
        .numwords_b(46),
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
    ) redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_dmem (
        .clocken1(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_reset0),
        .clock1(clock),
        .address_a(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_aa),
        .data_a(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_ab),
        .q_b(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_iq),
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
    assign redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_q = redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_iq[31:0];

    // redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_outputreg0(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_outputreg0_q <= '0;
        end
        else
        begin
            redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_outputreg0_q <= $unsigned(redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_mem_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_notEnable(LOGICAL,403)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_notEnable_q = $unsigned(~ (VCC_q));

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_nor(LOGICAL,404)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_nor_q = ~ (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_notEnable_q | redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_sticky_ena_q);

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_last(CONSTANT,400)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_last_q = $unsigned(5'b01011);

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp(LOGICAL,401)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp_b = {1'b0, redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_q};
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp_q = $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_last_q == redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp_b ? 1'b1 : 1'b0);

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmpReg(REG,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmpReg_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmp_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_sticky_ena(REG,405)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_nor_q == 1'b1)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_sticky_ena_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_cmpReg_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_enaAnd(LOGICAL,406)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_enaAnd_q = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_sticky_ena_q & VCC_q;

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt(COUNTER,398)
    // low=0, high=12, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i <= 4'd0;
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i == 4'd11)
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_eq <= 1'b0;
            end
            if (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_eq == 1'b1)
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i) + $unsigned(4'd4);
            end
            else
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_q = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_i[3:0];

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_nor(LOGICAL,477)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_nor_q = ~ (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_notEnable_q | redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_sticky_ena_q);

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_last(CONSTANT,473)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_last_q = $unsigned(6'b011100);

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp(LOGICAL,474)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp_b = {1'b0, redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_q};
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp_q = $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_last_q == redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp_b ? 1'b1 : 1'b0);

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmpReg(REG,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmpReg_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmp_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_sticky_ena(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_nor_q == 1'b1)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_sticky_ena_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_cmpReg_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_enaAnd(LOGICAL,479)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_enaAnd_q = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_sticky_ena_q & VCC_q;

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt(COUNTER,471)
    // low=0, high=29, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i <= 5'd0;
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i == 5'd28)
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_eq <= 1'b0;
            end
            if (redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_eq == 1'b1)
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i) + $unsigned(5'd3);
            end
            else
            begin
                redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i) + $unsigned(5'd1);
            end
        end
    end
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_q = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_i[4:0];

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_inputreg0(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_inputreg0_q <= '0;
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_inputreg0_q <= $unsigned(redist35_sync_together119_aunroll_x_in_c1_eni2_1_tpl_1_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_wraddr(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_wraddr_q <= $unsigned(5'b11101);
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_wraddr_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem(DUALMEM,470)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_ia = $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_inputreg0_q);
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_aa = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_wraddr_q;
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_ab = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_rdcnt_q;
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_reset0 = ~ (resetn);
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
    ) redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_dmem (
        .clocken1(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_aa),
        .data_a(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_ab),
        .q_b(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_iq),
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
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_q = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_iq[7:0];

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_outputreg0(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_outputreg0_q <= '0;
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_outputreg0_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_mem_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_inputreg0(DELAY,395)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_inputreg0_q <= '0;
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_inputreg0_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_split_0_outputreg0_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_wraddr(REG,399)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_wraddr_q <= $unsigned(4'b1100);
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_wraddr_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_q);
        end
    end

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem(DUALMEM,397)
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_ia = $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_inputreg0_q);
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_aa = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_wraddr_q;
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_ab = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_rdcnt_q;
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(13),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(13),
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
    ) redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_dmem (
        .clocken1(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_reset0),
        .clock1(clock),
        .address_a(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_aa),
        .data_a(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_ab),
        .q_b(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_iq),
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
    assign redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_q = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_iq[7:0];

    // redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_outputreg0(DELAY,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_outputreg0_q <= '0;
        end
        else
        begin
            redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_outputreg0_q <= $unsigned(redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_mem_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,31)@75
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = redist36_sync_together119_aunroll_x_in_c1_eni2_1_tpl_50_outputreg0_q;
    assign out_c1_exi1_2_tpl = redist38_sync_together119_aunroll_x_in_c1_eni2_2_tpl_50_outputreg0_q;
    assign out_c1_exi1_3_tpl = redist40_sync_together119_aunroll_x_in_c1_eni2_3_tpl_50_outputreg0_q;
    assign out_c1_exi1_4_tpl = redist42_sync_together119_aunroll_x_in_c1_eni2_4_tpl_50_outputreg0_q;
    assign out_c1_exi1_5_tpl = redist44_sync_together119_aunroll_x_in_c1_eni2_5_tpl_50_outputreg0_q;
    assign out_c1_exi1_6_tpl = i_spec_select55_aggregation73_q;
    assign out_c1_exi1_7_tpl = redist20_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt61_aggregation44_q_20_outputreg0_q;
    assign out_c1_exi1_8_tpl = i_reduction_aggregation_0_aggregation50_q;
    assign out_c1_exi1_9_tpl = i_reduction_aggregation_2_aggregation62_q;
    assign out_c1_exi1_10_tpl = i_reduction_aggregation_1_aggregation55_q;
    assign out_c1_exi1_11_tpl = redist19_i_llvm_fpga_case_f32_i32_v5i32_s_case_assign_struct_aggregation_fpgaunique_4s_case_stmt67_aggregation48_q_8_outputreg0_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_aggregation0 = GND_q;

endmodule
