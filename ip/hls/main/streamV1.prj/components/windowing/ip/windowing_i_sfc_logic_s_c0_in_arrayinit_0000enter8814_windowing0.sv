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

// SystemVerilog created from i_sfc_logic_s_c0_in_arrayinit_body_i_windowings_c0_enter8814_windowing0
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_sfc_logic_s_c0_in_arrayinit_0000enter8814_windowing0 (
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [0:0] out_c0_exi10_1_tpl,
    output wire [0:0] out_c0_exi10_2_tpl,
    output wire [0:0] out_c0_exi10_3_tpl,
    output wire [0:0] out_c0_exi10_4_tpl,
    output wire [63:0] out_c0_exi10_5_tpl,
    output wire [0:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [0:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [0:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_windowing0,
    input wire [0:0] in_c0_eni7_0_tpl,
    input wire [0:0] in_c0_eni7_1_tpl,
    input wire [0:0] in_c0_eni7_2_tpl,
    input wire [0:0] in_c0_eni7_3_tpl,
    input wire [0:0] in_c0_eni7_4_tpl,
    input wire [0:0] in_c0_eni7_5_tpl,
    input wire [0:0] in_c0_eni7_6_tpl,
    input wire [0:0] in_c0_eni7_7_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_windowing28_sel_x_b;
    wire [5:0] i_arrayinit_next_i_windowing0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayinit_next_i_windowing0_add_x_a;
    wire [6:0] i_arrayinit_next_i_windowing0_add_x_b;
    logic [6:0] i_arrayinit_next_i_windowing0_add_x_o;
    wire [6:0] i_arrayinit_next_i_windowing0_add_x_q;
    wire [63:0] i_arrayinit_next_i_windowing0_append_upper_bits_x_q;
    wire [5:0] i_arrayinit_next_i_windowing0_c_i6_41_x_q;
    wire [0:0] i_first_cleanup41_windowing3_sel_x_b;
    wire [0:0] i_last_initeration37_windowing10_sel_x_b;
    wire [1:0] c_i2_163_q;
    wire [2:0] c_i3_166_q;
    wire [2:0] c_i3_168_q;
    wire [63:0] c_i64_462970041693686989665_q;
    wire [1:0] i_cleanups_shl40_windowing5_vt_join_q;
    wire [0:0] i_cleanups_shl40_windowing5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor42_windowing4_q;
    wire [3:0] i_fpga_indvars_iv_next_windowing28_a;
    wire [3:0] i_fpga_indvars_iv_next_windowing28_b;
    logic [3:0] i_fpga_indvars_iv_next_windowing28_o;
    wire [3:0] i_fpga_indvars_iv_next_windowing28_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_feedback_stall_out_21;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_feedback_stall_out_16;
    wire [1:0] i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_feedback_stall_out_15;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_feedback_stall_out_13;
    wire [63:0] i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_forked5152_push17_windowing32_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i1_forked5152_push17_windowing32_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration38_windowing11_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration38_windowing11_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond46_windowing24_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond46_windowing24_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i2_cleanups39_push16_windowing27_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i2_cleanups39_push16_windowing27_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i2_initerations34_push15_windowing9_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i2_initerations34_push15_windowing9_out_feedback_valid_out_15;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29_out_feedback_valid_out_13;
    wire [63:0] i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19_out_feedback_valid_out_14;
    wire [0:0] i_masked45_windowing30_q;
    wire [0:0] i_memdep_phi23_or24_windowing16_q;
    wire [0:0] i_next_cleanups44_windowing26_s;
    reg [1:0] i_next_cleanups44_windowing26_q;
    wire [1:0] i_next_initerations35_windowing8_vt_join_q;
    wire [0:0] i_next_initerations35_windowing8_vt_select_0_b;
    wire [0:0] i_notexit47_windowing23_q;
    wire [0:0] i_or43_windowing25_q;
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
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid125_i_cleanups_shl40_windowing0_shift_x_q;
    wire [0:0] leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_s;
    reg [1:0] leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid131_i_next_initerations35_windowing0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid133_i_next_initerations35_windowing0_shift_x_q;
    wire [0:0] rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_s;
    reg [1:0] rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_q;
    wire [0:0] i_exitcond_windowing21_cmp_sign_q;
    wire [5:0] i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select_b;
    wire [57:0] i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select_c;
    reg [0:0] redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q;
    reg [0:0] redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q;
    reg [0:0] redist2_sync_together94_aunroll_x_in_c0_eni7_2_tpl_1_q;
    reg [0:0] redist3_sync_together94_aunroll_x_in_c0_eni7_3_tpl_1_q;
    reg [0:0] redist4_sync_together94_aunroll_x_in_c0_eni7_4_tpl_1_q;
    reg [0:0] redist5_sync_together94_aunroll_x_in_c0_eni7_5_tpl_1_q;
    reg [0:0] redist6_sync_together94_aunroll_x_in_c0_eni7_6_tpl_1_q;
    reg [0:0] redist7_sync_together94_aunroll_x_in_c0_eni7_7_tpl_1_q;
    reg [0:0] redist8_sync_together94_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,97)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,113)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,114)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38(BLACKBOX,77)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_0 thei_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_data_out),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_feedback_stall_out_20),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1(DELAY,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q <= $unsigned(in_c0_eni7_1_tpl);
        end
    end

    // redist7_sync_together94_aunroll_x_in_c0_eni7_7_tpl_1(DELAY,146)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together94_aunroll_x_in_c0_eni7_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together94_aunroll_x_in_c0_eni7_7_tpl_1_q <= $unsigned(in_c0_eni7_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37(BLACKBOX,66)@2
    // out out_feedback_stall_out_20@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_0 thei_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37 (
        .in_data_in(redist7_sync_together94_aunroll_x_in_c0_eni7_7_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_windowing38_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,111)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,112)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36(BLACKBOX,76)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_0 thei_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_data_out),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_feedback_stall_out_19),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together94_aunroll_x_in_c0_eni7_6_tpl_1(DELAY,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni7_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together94_aunroll_x_in_c0_eni7_6_tpl_1_q <= $unsigned(in_c0_eni7_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35(BLACKBOX,65)@2
    // out out_feedback_stall_out_19@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35 (
        .in_data_in(redist6_sync_together94_aunroll_x_in_c0_eni7_6_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_windowing36_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,109)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,110)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34(BLACKBOX,75)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_0 thei_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_data_out),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_feedback_stall_out_18),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together94_aunroll_x_in_c0_eni7_5_tpl_1(DELAY,144)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni7_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together94_aunroll_x_in_c0_eni7_5_tpl_1_q <= $unsigned(in_c0_eni7_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33(BLACKBOX,64)@2
    // out out_feedback_stall_out_18@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_0 thei_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33 (
        .in_data_in(redist5_sync_together94_aunroll_x_in_c0_eni7_5_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_windowing34_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,107)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,108)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_forked5152_push17_windowing32(BLACKBOX,73)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    windowing_i_llvm_fpga_push_i1_forked5152_push17_0 thei_llvm_fpga_push_i1_forked5152_push17_windowing32 (
        .in_data_in(i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_data_out),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_feedback_stall_out_17),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i1_forked5152_push17_windowing32_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i1_forked5152_push17_windowing32_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together94_aunroll_x_in_c0_eni7_4_tpl_1(DELAY,143)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni7_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together94_aunroll_x_in_c0_eni7_4_tpl_1_q <= $unsigned(in_c0_eni7_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked5152_pop17_windowing31(BLACKBOX,63)@2
    // out out_feedback_stall_out_17@20000000
    windowing_i_llvm_fpga_pop_i1_forked5152_pop17_0 thei_llvm_fpga_pop_i1_forked5152_pop17_windowing31 (
        .in_data_in(redist4_sync_together94_aunroll_x_in_c0_eni7_4_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i1_forked5152_push17_windowing32_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i1_forked5152_push17_windowing32_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together94_aunroll_x_in_i_valid_1(DELAY,147)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together94_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together94_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x(BITSELECT,123)@2
    assign leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x_in = i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x_b = leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid125_i_cleanups_shl40_windowing0_shift_x(BITJOIN,124)@2
    assign leftShiftStage0Idx1_uid125_i_cleanups_shl40_windowing0_shift_x_q = {leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl40_windowing0_shift_x_b, GND_q};

    // leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x(MUX,126)@2
    assign leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_s or i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out or leftShiftStage0Idx1_uid125_i_cleanups_shl40_windowing0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_s)
            1'b0 : leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_q = i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out;
            1'b1 : leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_q = leftShiftStage0Idx1_uid125_i_cleanups_shl40_windowing0_shift_x_q;
            default : leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl40_windowing5_vt_select_1(BITSELECT,56)@2
    assign i_cleanups_shl40_windowing5_vt_select_1_b = leftShiftStage0_uid127_i_cleanups_shl40_windowing0_shift_x_q[1:1];

    // i_cleanups_shl40_windowing5_vt_join(BITJOIN,55)@2
    assign i_cleanups_shl40_windowing5_vt_join_q = {i_cleanups_shl40_windowing5_vt_select_1_b, GND_q};

    // i_or43_windowing25(LOGICAL,92)@2
    assign i_or43_windowing25_q = i_exitcond_windowing21_cmp_sign_q | i_first_cleanup_xor42_windowing4_q;

    // i_next_cleanups44_windowing26(MUX,87)@2
    assign i_next_cleanups44_windowing26_s = i_or43_windowing25_q;
    always @(i_next_cleanups44_windowing26_s or i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out or i_cleanups_shl40_windowing5_vt_join_q)
    begin
        unique case (i_next_cleanups44_windowing26_s)
            1'b0 : i_next_cleanups44_windowing26_q = i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out;
            1'b1 : i_next_cleanups44_windowing26_q = i_cleanups_shl40_windowing5_vt_join_q;
            default : i_next_cleanups44_windowing26_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups39_push16_windowing27(BLACKBOX,81)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    windowing_i_llvm_fpga_push_i2_cleanups39_push16_0 thei_llvm_fpga_push_i2_cleanups39_push16_windowing27 (
        .in_data_in(i_next_cleanups44_windowing26_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_feedback_stall_out_16),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together94_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i2_cleanups39_push16_windowing27_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i2_cleanups39_push16_windowing27_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_163(CONSTANT,49)
    assign c_i2_163_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2(BLACKBOX,69)@2
    // out out_feedback_stall_out_16@20000000
    windowing_i_llvm_fpga_pop_i2_cleanups39_pop16_0 thei_llvm_fpga_pop_i2_cleanups39_pop16_windowing2 (
        .in_data_in(c_i2_163_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i2_cleanups39_push16_windowing27_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i2_cleanups39_push16_windowing27_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together94_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup41_windowing3_sel_x(BITSELECT,16)@2
    assign i_first_cleanup41_windowing3_sel_x_b = i_llvm_fpga_pop_i2_cleanups39_pop16_windowing2_out_data_out[0:0];

    // c_i3_168(CONSTANT,51)
    assign c_i3_168_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_windowing28(ADD,60)@2
    assign i_fpga_indvars_iv_next_windowing28_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_data_out};
    assign i_fpga_indvars_iv_next_windowing28_b = {1'b0, c_i3_168_q};
    assign i_fpga_indvars_iv_next_windowing28_o = $unsigned(i_fpga_indvars_iv_next_windowing28_a) + $unsigned(i_fpga_indvars_iv_next_windowing28_b);
    assign i_fpga_indvars_iv_next_windowing28_q = i_fpga_indvars_iv_next_windowing28_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_windowing28_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_fpga_indvars_iv_next_windowing28_sel_x_b = i_fpga_indvars_iv_next_windowing28_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29(BLACKBOX,83)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    windowing_i_llvm_fpga_push_i3_fpga_indvars_iv_push13_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_windowing28_sel_x_b),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_feedback_stall_out_13),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together94_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_166(CONSTANT,50)
    assign c_i3_166_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20(BLACKBOX,71)@2
    // out out_feedback_stall_out_13@20000000
    windowing_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20 (
        .in_data_in(c_i3_166_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i3_fpga_indvars_iv_push13_windowing29_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together94_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_windowing21_cmp_sign(LOGICAL,136)@2
    assign i_exitcond_windowing21_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_windowing20_out_data_out[2:2]);

    // i_masked45_windowing30(LOGICAL,85)@2
    assign i_masked45_windowing30_q = i_exitcond_windowing21_cmp_sign_q & i_first_cleanup41_windowing3_sel_x_b;

    // valid_fanout_reg8(REG,105)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,106)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select(BITSELECT,138)@2
    assign i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select_b = i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_data_out[5:0];
    assign i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select_c = i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_data_out[63:6];

    // i_arrayinit_next_i_windowing0_c_i6_41_x(CONSTANT,9)
    assign i_arrayinit_next_i_windowing0_c_i6_41_x_q = $unsigned(6'b000100);

    // i_arrayinit_next_i_windowing0_add_x(ADD,7)@2
    assign i_arrayinit_next_i_windowing0_add_x_a = {1'b0, i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select_b};
    assign i_arrayinit_next_i_windowing0_add_x_b = {1'b0, i_arrayinit_next_i_windowing0_c_i6_41_x_q};
    assign i_arrayinit_next_i_windowing0_add_x_o = $unsigned(i_arrayinit_next_i_windowing0_add_x_a) + $unsigned(i_arrayinit_next_i_windowing0_add_x_b);
    assign i_arrayinit_next_i_windowing0_add_x_q = i_arrayinit_next_i_windowing0_add_x_o[6:0];

    // i_arrayinit_next_i_windowing0_dupName_0_trunc_sel_x(BITSELECT,4)@2
    assign i_arrayinit_next_i_windowing0_dupName_0_trunc_sel_x_b = i_arrayinit_next_i_windowing0_add_x_q[5:0];

    // i_arrayinit_next_i_windowing0_append_upper_bits_x(BITJOIN,8)@2
    assign i_arrayinit_next_i_windowing0_append_upper_bits_x_q = {i_arrayinit_next_i_windowing0_trunc_sel_x_merged_bit_select_c, i_arrayinit_next_i_windowing0_dupName_0_trunc_sel_x_b};

    // i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19(BLACKBOX,84)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    windowing_i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_0 thei_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19 (
        .in_data_in(i_arrayinit_next_i_windowing0_append_upper_bits_x_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_feedback_stall_out_14),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_462970041693686989665(CONSTANT,52)
    assign c_i64_462970041693686989665_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000001000);

    // i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17(BLACKBOX,72)@2
    // out out_feedback_stall_out_14@20000000
    windowing_i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_0 thei_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17 (
        .in_data_in(c_i64_462970041693686989665_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_windowing19_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg5(REG,102)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13(BLACKBOX,80)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    windowing_i_llvm_fpga_push_i1_reduction_158_push21_windowing0 thei_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13 (
        .in_data_in(i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_feedback_stall_out_21),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together94_aunroll_x_in_c0_eni7_2_tpl_1(DELAY,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together94_aunroll_x_in_c0_eni7_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together94_aunroll_x_in_c0_eni7_2_tpl_1_q <= $unsigned(in_c0_eni7_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12(BLACKBOX,68)@2
    // out out_feedback_stall_out_21@20000000
    windowing_i_llvm_fpga_pop_i1_reduction_158_pop21_windowing0 thei_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12 (
        .in_data_in(redist2_sync_together94_aunroll_x_in_c0_eni7_2_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_reduction_windowing_158_push21_windowing13_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi23_or24_windowing16(LOGICAL,86)@2
    assign i_memdep_phi23_or24_windowing16_q = i_llvm_fpga_pop_i1_reduction_windowing_158_pop21_windowing12_out_data_out | i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_data_out;

    // valid_fanout_reg6(REG,103)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,104)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15(BLACKBOX,78)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_0 thei_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_feedback_stall_out_22),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together94_aunroll_x_in_c0_eni7_3_tpl_1(DELAY,142)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together94_aunroll_x_in_c0_eni7_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together94_aunroll_x_in_c0_eni7_3_tpl_1_q <= $unsigned(in_c0_eni7_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14(BLACKBOX,67)@2
    // out out_feedback_stall_out_22@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14 (
        .in_data_in(redist3_sync_together94_aunroll_x_in_c0_eni7_3_tpl_1_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_windowing15_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notexit47_windowing23(LOGICAL,91)@2
    assign i_notexit47_windowing23_q = i_exitcond_windowing21_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond46_windowing24(BLACKBOX,79)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    windowing_i_llvm_fpga_push_i1_notexitcond46_0 thei_llvm_fpga_push_i1_notexitcond46_windowing24 (
        .in_data_in(i_notexit47_windowing23_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going36_windowing6_out_not_exitcond_stall_out),
        .in_first_cleanup41(i_first_cleanup41_windowing3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together94_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond46_windowing24_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond46_windowing24_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,100)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid131_i_next_initerations35_windowing0_shift_x(BITSELECT,130)@2
    assign rightShiftStage0Idx1Rng1_uid131_i_next_initerations35_windowing0_shift_x_b = i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid133_i_next_initerations35_windowing0_shift_x(BITJOIN,132)@2
    assign rightShiftStage0Idx1_uid133_i_next_initerations35_windowing0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid131_i_next_initerations35_windowing0_shift_x_b};

    // valid_fanout_reg1(REG,98)@1 + 1
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

    // valid_fanout_reg2(REG,99)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations34_push15_windowing9(BLACKBOX,82)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    windowing_i_llvm_fpga_push_i2_initerations34_push15_0 thei_llvm_fpga_push_i2_initerations34_push15_windowing9 (
        .in_data_in(i_next_initerations35_windowing8_vt_join_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_feedback_stall_out_15),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i2_initerations34_push15_windowing9_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i2_initerations34_push15_windowing9_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations34_pop15_windowing7(BLACKBOX,70)@2
    // out out_feedback_stall_out_15@20000000
    windowing_i_llvm_fpga_pop_i2_initerations34_pop15_0 thei_llvm_fpga_pop_i2_initerations34_pop15_windowing7 (
        .in_data_in(c_i2_163_q),
        .in_dir(redist1_sync_together94_aunroll_x_in_c0_eni7_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i2_initerations34_push15_windowing9_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i2_initerations34_push15_windowing9_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x(MUX,134)@2
    assign rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_s or i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_data_out or rightShiftStage0Idx1_uid133_i_next_initerations35_windowing0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_s)
            1'b0 : rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_q = i_llvm_fpga_pop_i2_initerations34_pop15_windowing7_out_data_out;
            1'b1 : rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_q = rightShiftStage0Idx1_uid133_i_next_initerations35_windowing0_shift_x_q;
            default : rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations35_windowing8_vt_select_0(BITSELECT,90)@2
    assign i_next_initerations35_windowing8_vt_select_0_b = rightShiftStage0_uid135_i_next_initerations35_windowing0_shift_x_q[0:0];

    // i_next_initerations35_windowing8_vt_join(BITJOIN,89)@2
    assign i_next_initerations35_windowing8_vt_join_q = {GND_q, i_next_initerations35_windowing8_vt_select_0_b};

    // i_last_initeration37_windowing10_sel_x(BITSELECT,17)@2
    assign i_last_initeration37_windowing10_sel_x_b = i_next_initerations35_windowing8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration38_windowing11(BLACKBOX,74)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    windowing_i_llvm_fpga_push_i1_lastiniteration38_0 thei_llvm_fpga_push_i1_lastiniteration38_windowing11 (
        .in_data_in(i_last_initeration37_windowing10_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going36_windowing6_out_initeration_stall_out),
        .in_keep_going36(redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_lastiniteration38_windowing11_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_lastiniteration38_windowing11_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_windowing6(BLACKBOX,62)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    windowing_i_llvm_fpga_pipeline_keep_going36_0 thei_llvm_fpga_pipeline_keep_going36_windowing6 (
        .in_data_in(in_c0_eni7_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration38_windowing11_out_feedback_out_3),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration38_windowing11_out_feedback_valid_out_3),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond46_windowing24_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond46_windowing24_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going36_windowing6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going36_windowing6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going36_windowing6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going36_windowing6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going36_windowing6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out);
        end
    end

    // i_first_cleanup_xor42_windowing4(LOGICAL,59)@2
    assign i_first_cleanup_xor42_windowing4_q = i_first_cleanup41_windowing3_sel_x_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,22)@2
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = i_first_cleanup_xor42_windowing4_q;
    assign out_c0_exi10_2_tpl = redist0_i_llvm_fpga_pipeline_keep_going36_windowing6_out_data_out_1_q;
    assign out_c0_exi10_3_tpl = i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_windowing14_out_data_out;
    assign out_c0_exi10_4_tpl = i_memdep_phi23_or24_windowing16_q;
    assign out_c0_exi10_5_tpl = i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_windowing17_out_data_out;
    assign out_c0_exi10_6_tpl = i_masked45_windowing30_q;
    assign out_c0_exi10_7_tpl = i_llvm_fpga_pop_i1_forked5152_pop17_windowing31_out_data_out;
    assign out_c0_exi10_8_tpl = i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_windowing33_out_data_out;
    assign out_c0_exi10_9_tpl = i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_windowing35_out_data_out;
    assign out_c0_exi10_10_tpl = i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_windowing37_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_windowing0 = GND_q;

    // ext_sig_sync_out(GPOUT,53)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going36_windowing6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going36_windowing6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,95)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going36_windowing6_out_pipeline_valid_out;

endmodule
