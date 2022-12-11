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

// SystemVerilog created from i_sfc_logic_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing0
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_sfc_logic_s_c0_in_arrayinit_0000nter10115_windowing0 (
    output wire [0:0] out_c0_exi9116_0_tpl,
    output wire [0:0] out_c0_exi9116_1_tpl,
    output wire [0:0] out_c0_exi9116_2_tpl,
    output wire [63:0] out_c0_exi9116_3_tpl,
    output wire [0:0] out_c0_exi9116_4_tpl,
    output wire [0:0] out_c0_exi9116_5_tpl,
    output wire [0:0] out_c0_exi9116_6_tpl,
    output wire [0:0] out_c0_exi9116_7_tpl,
    output wire [0:0] out_c0_exi9116_8_tpl,
    output wire [0:0] out_c0_exi9116_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_windowing0,
    input wire [0:0] in_c0_eni6100_0_tpl,
    input wire [0:0] in_c0_eni6100_1_tpl,
    input wire [0:0] in_c0_eni6100_2_tpl,
    input wire [0:0] in_c0_eni6100_3_tpl,
    input wire [0:0] in_c0_eni6100_4_tpl,
    input wire [0:0] in_c0_eni6100_5_tpl,
    input wire [0:0] in_c0_eni6100_6_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next31_windowing25_sel_x_b;
    wire [5:0] i_arrayinit_next8_i_windowing0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayinit_next8_i_windowing0_add_x_a;
    wire [6:0] i_arrayinit_next8_i_windowing0_add_x_b;
    logic [6:0] i_arrayinit_next8_i_windowing0_add_x_o;
    wire [6:0] i_arrayinit_next8_i_windowing0_add_x_q;
    wire [63:0] i_arrayinit_next8_i_windowing0_append_upper_bits_x_q;
    wire [5:0] i_arrayinit_next8_i_windowing0_c_i6_41_x_q;
    wire [0:0] i_first_cleanup_windowing3_sel_x_b;
    wire [0:0] i_last_initeration_windowing10_sel_x_b;
    wire [1:0] c_i2_158_q;
    wire [2:0] c_i3_163_q;
    wire [2:0] c_i3_261_q;
    wire [63:0] c_i64_462970041693686991660_q;
    wire [1:0] i_cleanups_shl_windowing5_vt_join_q;
    wire [0:0] i_cleanups_shl_windowing5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_windowing4_q;
    wire [3:0] i_fpga_indvars_iv_next31_windowing25_a;
    wire [3:0] i_fpga_indvars_iv_next31_windowing25_b;
    logic [3:0] i_fpga_indvars_iv_next31_windowing25_o;
    wire [3:0] i_fpga_indvars_iv_next31_windowing25_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_feedback_stall_out_31;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_feedback_stall_out_26;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_feedback_stall_out_25;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_feedback_stall_out_23;
    wire [63:0] i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_push_i1_forked5153_push27_windowing29_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_forked5153_push27_windowing29_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_windowing11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_windowing11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_windowing21_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_windowing21_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35_out_feedback_valid_out_31;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push26_windowing24_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push26_windowing24_out_feedback_valid_out_26;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push25_windowing9_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push25_windowing9_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26_out_feedback_valid_out_23;
    wire [63:0] i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16_out_feedback_valid_out_24;
    wire [0:0] i_masked_windowing27_q;
    wire [0:0] i_next_cleanups_windowing23_s;
    reg [1:0] i_next_cleanups_windowing23_q;
    wire [1:0] i_next_initerations_windowing8_vt_join_q;
    wire [0:0] i_next_initerations_windowing8_vt_select_0_b;
    wire [0:0] i_notexit_windowing20_q;
    wire [0:0] i_or_windowing22_q;
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
    wire [0:0] leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid118_i_cleanups_shl_windowing0_shift_x_q;
    wire [0:0] leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_s;
    reg [1:0] leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid124_i_next_initerations_windowing0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid126_i_next_initerations_windowing0_shift_x_q;
    wire [0:0] rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_s;
    reg [1:0] rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_q;
    wire [0:0] i_exitcond32_windowing18_cmp_sign_q;
    wire [5:0] i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select_b;
    wire [57:0] i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select_c;
    reg [0:0] redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q;
    reg [0:0] redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q;
    reg [0:0] redist2_sync_together87_aunroll_x_in_c0_eni6100_2_tpl_1_q;
    reg [0:0] redist3_sync_together87_aunroll_x_in_c0_eni6100_3_tpl_1_q;
    reg [0:0] redist4_sync_together87_aunroll_x_in_c0_eni6100_4_tpl_1_q;
    reg [0:0] redist5_sync_together87_aunroll_x_in_c0_eni6100_5_tpl_1_q;
    reg [0:0] redist6_sync_together87_aunroll_x_in_c0_eni6100_6_tpl_1_q;
    reg [0:0] redist7_sync_together87_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,92)@1 + 1
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

    // valid_fanout_reg14(REG,106)@1 + 1
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

    // valid_fanout_reg15(REG,107)@1 + 1
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

    // i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35(BLACKBOX,76)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    windowing_i_llvm_fpga_push_i1_reduction_562_push31_windowing0 thei_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35 (
        .in_data_in(i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_data_out),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_feedback_stall_out_31),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q <= $unsigned(in_c0_eni6100_1_tpl);
        end
    end

    // redist6_sync_together87_aunroll_x_in_c0_eni6100_6_tpl_1(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together87_aunroll_x_in_c0_eni6100_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together87_aunroll_x_in_c0_eni6100_6_tpl_1_q <= $unsigned(in_c0_eni6100_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34(BLACKBOX,65)@2
    // out out_feedback_stall_out_31@20000000
    windowing_i_llvm_fpga_pop_i1_reduction_562_pop31_windowing0 thei_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34 (
        .in_data_in(redist6_sync_together87_aunroll_x_in_c0_eni6100_6_tpl_1_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_reduction_windowing_562_push31_windowing35_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg12(REG,104)@1 + 1
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

    // valid_fanout_reg13(REG,105)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33(BLACKBOX,74)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_0 thei_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_data_out),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_feedback_stall_out_29),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together87_aunroll_x_in_c0_eni6100_5_tpl_1(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together87_aunroll_x_in_c0_eni6100_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together87_aunroll_x_in_c0_eni6100_5_tpl_1_q <= $unsigned(in_c0_eni6100_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32(BLACKBOX,64)@2
    // out out_feedback_stall_out_29@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_0 thei_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32 (
        .in_data_in(redist5_sync_together87_aunroll_x_in_c0_eni6100_5_tpl_1_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_windowing33_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,102)@1 + 1
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

    // valid_fanout_reg11(REG,103)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31(BLACKBOX,72)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_0 thei_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_data_out),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_feedback_stall_out_28),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together87_aunroll_x_in_c0_eni6100_4_tpl_1(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together87_aunroll_x_in_c0_eni6100_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together87_aunroll_x_in_c0_eni6100_4_tpl_1_q <= $unsigned(in_c0_eni6100_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30(BLACKBOX,62)@2
    // out out_feedback_stall_out_28@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_0 thei_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30 (
        .in_data_in(redist4_sync_together87_aunroll_x_in_c0_eni6100_4_tpl_1_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_windowing31_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,100)@1 + 1
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

    // valid_fanout_reg9(REG,101)@1 + 1
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

    // i_llvm_fpga_push_i1_forked5153_push27_windowing29(BLACKBOX,70)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    windowing_i_llvm_fpga_push_i1_forked5153_push27_0 thei_llvm_fpga_push_i1_forked5153_push27_windowing29 (
        .in_data_in(i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_data_out),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_feedback_stall_out_27),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_forked5153_push27_windowing29_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_forked5153_push27_windowing29_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together87_aunroll_x_in_c0_eni6100_3_tpl_1(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together87_aunroll_x_in_c0_eni6100_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together87_aunroll_x_in_c0_eni6100_3_tpl_1_q <= $unsigned(in_c0_eni6100_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked5153_pop27_windowing28(BLACKBOX,61)@2
    // out out_feedback_stall_out_27@20000000
    windowing_i_llvm_fpga_pop_i1_forked5153_pop27_0 thei_llvm_fpga_pop_i1_forked5153_pop27_windowing28 (
        .in_data_in(redist3_sync_together87_aunroll_x_in_c0_eni6100_3_tpl_1_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_forked5153_push27_windowing29_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_forked5153_push27_windowing29_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together87_aunroll_x_in_i_valid_1(DELAY,139)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together87_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist7_sync_together87_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x(BITSELECT,116)@2
    assign leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x_b = leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid118_i_cleanups_shl_windowing0_shift_x(BITJOIN,117)@2
    assign leftShiftStage0Idx1_uid118_i_cleanups_shl_windowing0_shift_x_q = {leftShiftStage0Idx1Rng1_uid117_i_cleanups_shl_windowing0_shift_x_b, GND_q};

    // leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x(MUX,119)@2
    assign leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out or leftShiftStage0Idx1_uid118_i_cleanups_shl_windowing0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_s)
            1'b0 : leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out;
            1'b1 : leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_q = leftShiftStage0Idx1_uid118_i_cleanups_shl_windowing0_shift_x_q;
            default : leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_windowing5_vt_select_1(BITSELECT,54)@2
    assign i_cleanups_shl_windowing5_vt_select_1_b = leftShiftStage0_uid120_i_cleanups_shl_windowing0_shift_x_q[1:1];

    // i_cleanups_shl_windowing5_vt_join(BITJOIN,53)@2
    assign i_cleanups_shl_windowing5_vt_join_q = {i_cleanups_shl_windowing5_vt_select_1_b, GND_q};

    // i_or_windowing22(LOGICAL,87)@2
    assign i_or_windowing22_q = i_exitcond32_windowing18_cmp_sign_q | i_first_cleanup_xor_windowing4_q;

    // i_next_cleanups_windowing23(MUX,82)@2
    assign i_next_cleanups_windowing23_s = i_or_windowing22_q;
    always @(i_next_cleanups_windowing23_s or i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out or i_cleanups_shl_windowing5_vt_join_q)
    begin
        unique case (i_next_cleanups_windowing23_s)
            1'b0 : i_next_cleanups_windowing23_q = i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out;
            1'b1 : i_next_cleanups_windowing23_q = i_cleanups_shl_windowing5_vt_join_q;
            default : i_next_cleanups_windowing23_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push26_windowing24(BLACKBOX,77)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    windowing_i_llvm_fpga_push_i2_cleanups_push26_0 thei_llvm_fpga_push_i2_cleanups_push26_windowing24 (
        .in_data_in(i_next_cleanups_windowing23_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_feedback_stall_out_26),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i2_cleanups_push26_windowing24_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i2_cleanups_push26_windowing24_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_158(CONSTANT,47)
    assign c_i2_158_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop26_windowing2(BLACKBOX,66)@2
    // out out_feedback_stall_out_26@20000000
    windowing_i_llvm_fpga_pop_i2_cleanups_pop26_0 thei_llvm_fpga_pop_i2_cleanups_pop26_windowing2 (
        .in_data_in(c_i2_158_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i2_cleanups_push26_windowing24_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i2_cleanups_push26_windowing24_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_windowing3_sel_x(BITSELECT,16)@2
    assign i_first_cleanup_windowing3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop26_windowing2_out_data_out[0:0];

    // c_i3_163(CONSTANT,48)
    assign c_i3_163_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next31_windowing25(ADD,58)@2
    assign i_fpga_indvars_iv_next31_windowing25_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_data_out};
    assign i_fpga_indvars_iv_next31_windowing25_b = {1'b0, c_i3_163_q};
    assign i_fpga_indvars_iv_next31_windowing25_o = $unsigned(i_fpga_indvars_iv_next31_windowing25_a) + $unsigned(i_fpga_indvars_iv_next31_windowing25_b);
    assign i_fpga_indvars_iv_next31_windowing25_q = i_fpga_indvars_iv_next31_windowing25_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next31_windowing25_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_fpga_indvars_iv_next31_windowing25_sel_x_b = i_fpga_indvars_iv_next31_windowing25_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26(BLACKBOX,79)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    windowing_i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_0 thei_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next31_windowing25_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_feedback_stall_out_23),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_261(CONSTANT,49)
    assign c_i3_261_q = $unsigned(3'b010);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17(BLACKBOX,68)@2
    // out out_feedback_stall_out_23@20000000
    windowing_i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17 (
        .in_data_in(c_i3_261_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_windowing26_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond32_windowing18_cmp_sign(LOGICAL,129)@2
    assign i_exitcond32_windowing18_cmp_sign_q = $unsigned(i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_windowing17_out_data_out[2:2]);

    // i_masked_windowing27(LOGICAL,81)@2
    assign i_masked_windowing27_q = i_exitcond32_windowing18_cmp_sign_q & i_first_cleanup_windowing3_sel_x_b;

    // valid_fanout_reg5(REG,97)@1 + 1
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

    // valid_fanout_reg6(REG,98)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14(BLACKBOX,73)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    windowing_i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_0 thei_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_feedback_stall_out_30),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together87_aunroll_x_in_c0_eni6100_2_tpl_1(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni6100_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together87_aunroll_x_in_c0_eni6100_2_tpl_1_q <= $unsigned(in_c0_eni6100_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13(BLACKBOX,63)@2
    // out out_feedback_stall_out_30@20000000
    windowing_i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_0 thei_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13 (
        .in_data_in(redist2_sync_together87_aunroll_x_in_c0_eni6100_2_tpl_1_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_windowing14_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,96)@1 + 1
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

    // valid_fanout_reg7(REG,99)@1 + 1
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

    // i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select(BITSELECT,131)@2
    assign i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select_b = i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_data_out[5:0];
    assign i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select_c = i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_data_out[63:6];

    // i_arrayinit_next8_i_windowing0_c_i6_41_x(CONSTANT,9)
    assign i_arrayinit_next8_i_windowing0_c_i6_41_x_q = $unsigned(6'b000100);

    // i_arrayinit_next8_i_windowing0_add_x(ADD,7)@2
    assign i_arrayinit_next8_i_windowing0_add_x_a = {1'b0, i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select_b};
    assign i_arrayinit_next8_i_windowing0_add_x_b = {1'b0, i_arrayinit_next8_i_windowing0_c_i6_41_x_q};
    assign i_arrayinit_next8_i_windowing0_add_x_o = $unsigned(i_arrayinit_next8_i_windowing0_add_x_a) + $unsigned(i_arrayinit_next8_i_windowing0_add_x_b);
    assign i_arrayinit_next8_i_windowing0_add_x_q = i_arrayinit_next8_i_windowing0_add_x_o[6:0];

    // i_arrayinit_next8_i_windowing0_dupName_0_trunc_sel_x(BITSELECT,4)@2
    assign i_arrayinit_next8_i_windowing0_dupName_0_trunc_sel_x_b = i_arrayinit_next8_i_windowing0_add_x_q[5:0];

    // i_arrayinit_next8_i_windowing0_append_upper_bits_x(BITJOIN,8)@2
    assign i_arrayinit_next8_i_windowing0_append_upper_bits_x_q = {i_arrayinit_next8_i_windowing0_trunc_sel_x_merged_bit_select_c, i_arrayinit_next8_i_windowing0_dupName_0_trunc_sel_x_b};

    // i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16(BLACKBOX,80)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    windowing_i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_0 thei_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16 (
        .in_data_in(i_arrayinit_next8_i_windowing0_append_upper_bits_x_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_feedback_stall_out_24),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_462970041693686991660(CONSTANT,50)
    assign c_i64_462970041693686991660_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000011100);

    // i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12(BLACKBOX,69)@2
    // out out_feedback_stall_out_24@20000000
    windowing_i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_0 thei_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12 (
        .in_data_in(c_i64_462970041693686991660_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_windowing16_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notexit_windowing20(LOGICAL,86)@2
    assign i_notexit_windowing20_q = i_exitcond32_windowing18_cmp_sign_q ^ VCC_q;

    // i_llvm_fpga_push_i1_notexitcond_windowing21(BLACKBOX,75)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    windowing_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_windowing21 (
        .in_data_in(i_notexit_windowing20_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_windowing6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_windowing3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist7_sync_together87_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_windowing21_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_windowing21_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,95)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid124_i_next_initerations_windowing0_shift_x(BITSELECT,123)@2
    assign rightShiftStage0Idx1Rng1_uid124_i_next_initerations_windowing0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid126_i_next_initerations_windowing0_shift_x(BITJOIN,125)@2
    assign rightShiftStage0Idx1_uid126_i_next_initerations_windowing0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid124_i_next_initerations_windowing0_shift_x_b};

    // valid_fanout_reg1(REG,93)@1 + 1
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

    // valid_fanout_reg2(REG,94)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push25_windowing9(BLACKBOX,78)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    windowing_i_llvm_fpga_push_i2_initerations_push25_0 thei_llvm_fpga_push_i2_initerations_push25_windowing9 (
        .in_data_in(i_next_initerations_windowing8_vt_join_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_feedback_stall_out_25),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i2_initerations_push25_windowing9_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i2_initerations_push25_windowing9_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop25_windowing7(BLACKBOX,67)@2
    // out out_feedback_stall_out_25@20000000
    windowing_i_llvm_fpga_pop_i2_initerations_pop25_0 thei_llvm_fpga_pop_i2_initerations_pop25_windowing7 (
        .in_data_in(c_i2_158_q),
        .in_dir(redist1_sync_together87_aunroll_x_in_c0_eni6100_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i2_initerations_push25_windowing9_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i2_initerations_push25_windowing9_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x(MUX,127)@2
    assign rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_data_out or rightShiftStage0Idx1_uid126_i_next_initerations_windowing0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_s)
            1'b0 : rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop25_windowing7_out_data_out;
            1'b1 : rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_q = rightShiftStage0Idx1_uid126_i_next_initerations_windowing0_shift_x_q;
            default : rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_windowing8_vt_select_0(BITSELECT,85)@2
    assign i_next_initerations_windowing8_vt_select_0_b = rightShiftStage0_uid128_i_next_initerations_windowing0_shift_x_q[0:0];

    // i_next_initerations_windowing8_vt_join(BITJOIN,84)@2
    assign i_next_initerations_windowing8_vt_join_q = {GND_q, i_next_initerations_windowing8_vt_select_0_b};

    // i_last_initeration_windowing10_sel_x(BITSELECT,17)@2
    assign i_last_initeration_windowing10_sel_x_b = i_next_initerations_windowing8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_windowing11(BLACKBOX,71)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    windowing_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_windowing11 (
        .in_data_in(i_last_initeration_windowing10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_windowing6_out_initeration_stall_out),
        .in_keep_going(redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_windowing11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_windowing11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_windowing6(BLACKBOX,60)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    windowing_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_windowing6 (
        .in_data_in(in_c0_eni6100_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_windowing11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_windowing11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_windowing21_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_windowing21_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_windowing6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_windowing6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_windowing6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_windowing6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_windowing6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out);
        end
    end

    // i_first_cleanup_xor_windowing4(LOGICAL,57)@2
    assign i_first_cleanup_xor_windowing4_q = i_first_cleanup_windowing3_sel_x_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,22)@2
    assign out_c0_exi9116_0_tpl = GND_q;
    assign out_c0_exi9116_1_tpl = i_first_cleanup_xor_windowing4_q;
    assign out_c0_exi9116_2_tpl = redist0_i_llvm_fpga_pipeline_keep_going_windowing6_out_data_out_1_q;
    assign out_c0_exi9116_3_tpl = i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_windowing12_out_data_out;
    assign out_c0_exi9116_4_tpl = i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_windowing13_out_data_out;
    assign out_c0_exi9116_5_tpl = i_masked_windowing27_q;
    assign out_c0_exi9116_6_tpl = i_llvm_fpga_pop_i1_forked5153_pop27_windowing28_out_data_out;
    assign out_c0_exi9116_7_tpl = i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_windowing30_out_data_out;
    assign out_c0_exi9116_8_tpl = i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_windowing32_out_data_out;
    assign out_c0_exi9116_9_tpl = i_llvm_fpga_pop_i1_reduction_windowing_562_pop31_windowing34_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_windowing0 = GND_q;

    // ext_sig_sync_out(GPOUT,51)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_windowing6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_windowing6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,90)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_windowing6_out_pipeline_valid_out;

endmodule
