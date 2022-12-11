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
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_wi0000_c1_enter_windowing0 (
    output wire [0:0] out_c1_exi3_0_tpl,
    output wire [0:0] out_c1_exi3_1_tpl,
    output wire [7:0] out_c1_exi3_2_tpl,
    output wire [31:0] out_c1_exi3_3_tpl,
    output wire [31:0] out_c1_exi3_4_tpl,
    output wire [31:0] out_c1_exi3_5_tpl,
    output wire [31:0] out_c1_exi3_6_tpl,
    output wire [7:0] out_c1_exi3_7_tpl,
    output wire [31:0] out_c1_exi3_8_tpl,
    output wire [31:0] out_c1_exi3_9_tpl,
    output wire [31:0] out_c1_exi3_10_tpl,
    output wire [31:0] out_c1_exi3_11_tpl,
    output wire [31:0] out_c1_exi3_12_tpl,
    output wire [31:0] out_c1_exi3_13_tpl,
    output wire [31:0] out_c1_exi3_14_tpl,
    output wire [0:0] out_c1_exi3_15_tpl,
    output wire [0:0] out_c1_exi3_16_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_windowing0,
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
    input wire [0:0] in_c1_eni2_12_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_acl_windowing14_sel_x_b;
    wire [31:0] c_i32_010_recast_x_q;
    wire [31:0] i_inc7_windowing13_sel_x_b;
    wire [0:0] i_tobool_mask_trunc_windowing12_sel_x_b;
    wire [31:0] c_i32_19_q;
    wire [31:0] c_i32_319_q;
    wire [32:0] i_acl_windowing14_a;
    wire [32:0] i_acl_windowing14_b;
    logic [32:0] i_acl_windowing14_o;
    wire [32:0] i_acl_windowing14_q;
    wire [0:0] i_cmp_windowing6_q;
    wire [30:0] i_inc7_windowing13_vt_const_31_q;
    wire [31:0] i_inc7_windowing13_vt_join_q;
    wire [0:0] i_inc7_windowing13_vt_select_0_b;
    wire [31:0] i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_feedback_stall_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15_out_feedback_valid_out_3;
    wire [0:0] i_tobool_xor_windowing11_q;
    wire [31:0] i_unnamed_windowing5_q;
    wire [29:0] i_unnamed_windowing5_vt_const_31_q;
    wire [31:0] i_unnamed_windowing5_vt_join_q;
    wire [1:0] i_unnamed_windowing5_vt_select_1_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    reg [0:0] redist0_valid_fanout_reg0_q_1_q;
    reg [1:0] redist1_i_unnamed_windowing5_vt_select_1_b_1_q;
    reg [7:0] redist2_sync_together31_aunroll_x_in_c1_eni2_1_tpl_1_q;
    reg [7:0] redist3_sync_together31_aunroll_x_in_c1_eni2_1_tpl_2_q;
    reg [31:0] redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_q;
    reg [31:0] redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_delay_0;
    reg [31:0] redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_q;
    reg [31:0] redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_delay_0;
    reg [31:0] redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_q;
    reg [31:0] redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_delay_0;
    reg [31:0] redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_q;
    reg [31:0] redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_delay_0;
    reg [7:0] redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_q;
    reg [7:0] redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_delay_0;
    reg [31:0] redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_q;
    reg [31:0] redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_delay_0;
    reg [31:0] redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_q;
    reg [31:0] redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_delay_0;
    reg [31:0] redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_q;
    reg [31:0] redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_delay_0;
    reg [31:0] redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_q;
    reg [31:0] redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_delay_0;
    reg [31:0] redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_q;
    reg [31:0] redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_delay_0;
    reg [0:0] redist14_sync_together31_aunroll_x_in_c1_eni2_12_tpl_1_q;
    reg [0:0] redist15_i_tobool_mask_trunc_windowing12_sel_x_b_1_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // valid_fanout_reg0(REG,35)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_1(DELAY,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_tobool_xor_windowing11(LOGICAL,28)@3
    assign i_tobool_xor_windowing11_q = redist15_i_tobool_mask_trunc_windowing12_sel_x_b_1_q ^ VCC_q;

    // i_unnamed_windowing5_vt_const_31(CONSTANT,30)
    assign i_unnamed_windowing5_vt_const_31_q = $unsigned(30'b000000000000000000000000000000);

    // c_i32_319(CONSTANT,15)
    assign c_i32_319_q = $unsigned(32'b00000000000000000000000000000011);

    // valid_fanout_reg1(REG,36)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,58)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // valid_fanout_reg2(REG,37)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_inc7_windowing13_vt_const_31(CONSTANT,21)
    assign i_inc7_windowing13_vt_const_31_q = $unsigned(31'b0000000000000000000000000000000);

    // redist2_sync_together31_aunroll_x_in_c1_eni2_1_tpl_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together31_aunroll_x_in_c1_eni2_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together31_aunroll_x_in_c1_eni2_1_tpl_1_q <= $unsigned(in_c1_eni2_1_tpl);
        end
    end

    // i_tobool_mask_trunc_windowing12_sel_x(BITSELECT,6)@2
    assign i_tobool_mask_trunc_windowing12_sel_x_b = redist2_sync_together31_aunroll_x_in_c1_eni2_1_tpl_1_q[0:0];

    // i_inc7_windowing13_sel_x(BITSELECT,5)@2
    assign i_inc7_windowing13_sel_x_b = {31'b0000000000000000000000000000000, i_tobool_mask_trunc_windowing12_sel_x_b[0:0]};

    // i_inc7_windowing13_vt_select_0(BITSELECT,23)@2
    assign i_inc7_windowing13_vt_select_0_b = i_inc7_windowing13_sel_x_b[0:0];

    // i_inc7_windowing13_vt_join(BITJOIN,22)@2
    assign i_inc7_windowing13_vt_join_q = {i_inc7_windowing13_vt_const_31_q, i_inc7_windowing13_vt_select_0_b};

    // i_acl_windowing14(ADD,18)@2
    assign i_acl_windowing14_a = {1'b0, i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_data_out};
    assign i_acl_windowing14_b = {1'b0, i_inc7_windowing13_vt_join_q};
    assign i_acl_windowing14_o = $unsigned(i_acl_windowing14_a) + $unsigned(i_acl_windowing14_b);
    assign i_acl_windowing14_q = i_acl_windowing14_o[32:0];

    // bgTrunc_i_acl_windowing14_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_acl_windowing14_sel_x_b = i_acl_windowing14_q[31:0];

    // i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15(BLACKBOX,25)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    streamer_i_llvm_fpga_push_i32_i_1_window0000c_0_push3_windowing0 thei_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15 (
        .in_data_in(bgTrunc_i_acl_windowing14_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_feedback_stall_out_3),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together31_aunroll_x_in_c1_eni2_12_tpl_1(DELAY,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together31_aunroll_x_in_c1_eni2_12_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_sync_together31_aunroll_x_in_c1_eni2_12_tpl_1_q <= $unsigned(in_c1_eni2_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4(BLACKBOX,24)@2
    // out out_feedback_stall_out_3@20000000
    streamer_i_llvm_fpga_pop_i32_i_1_windowi0000ic_0_pop3_windowing0 thei_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4 (
        .in_data_in(c_i32_19_q),
        .in_dir(redist14_sync_together31_aunroll_x_in_c1_eni2_12_tpl_1_q),
        .in_feedback_in_3(i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_push3_windowing15_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_feedback_stall_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_windowing5(LOGICAL,29)@2
    assign i_unnamed_windowing5_q = i_llvm_fpga_pop_i32_i_1_windowing_e_s0_3v_stream_utuple_v_ihc_a_e_s_out_3v_stream_out_utuple_v_3_a_yaxxz_4ha_static_0_pop3_windowing4_out_data_out & c_i32_319_q;

    // i_unnamed_windowing5_vt_select_1(BITSELECT,32)@2
    assign i_unnamed_windowing5_vt_select_1_b = i_unnamed_windowing5_q[1:0];

    // redist1_i_unnamed_windowing5_vt_select_1_b_1(DELAY,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_unnamed_windowing5_vt_select_1_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_unnamed_windowing5_vt_select_1_b_1_q <= $unsigned(i_unnamed_windowing5_vt_select_1_b);
        end
    end

    // i_unnamed_windowing5_vt_join(BITJOIN,31)@3
    assign i_unnamed_windowing5_vt_join_q = {i_unnamed_windowing5_vt_const_31_q, redist1_i_unnamed_windowing5_vt_select_1_b_1_q};

    // i_cmp_windowing6(LOGICAL,19)@3
    assign i_cmp_windowing6_q = $unsigned(i_unnamed_windowing5_vt_join_q == c_i32_010_recast_x_q ? 1'b1 : 1'b0);

    // c_i32_010_recast_x(CONSTANT,3)
    assign c_i32_010_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_19(CONSTANT,14)
    assign c_i32_19_q = $unsigned(32'b00000000000000000000000000000001);

    // redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2(DELAY,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_delay_0 <= '0;
            redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_delay_0 <= $unsigned(in_c1_eni2_11_tpl);
            redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_q <= redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_delay_0;
        end
    end

    // redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2(DELAY,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_delay_0 <= '0;
            redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_delay_0 <= $unsigned(in_c1_eni2_10_tpl);
            redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_q <= redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_delay_0;
        end
    end

    // redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2(DELAY,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_delay_0 <= '0;
            redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_delay_0 <= $unsigned(in_c1_eni2_9_tpl);
            redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_q <= redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_delay_0;
        end
    end

    // redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_delay_0 <= '0;
            redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_delay_0 <= $unsigned(in_c1_eni2_8_tpl);
            redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_q <= redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_delay_0;
        end
    end

    // redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_delay_0 <= '0;
            redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_delay_0 <= $unsigned(in_c1_eni2_7_tpl);
            redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_q <= redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_delay_0;
        end
    end

    // redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_delay_0 <= '0;
            redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_delay_0 <= $unsigned(in_c1_eni2_6_tpl);
            redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_q <= redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_delay_0;
        end
    end

    // redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2(DELAY,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_delay_0 <= '0;
            redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_delay_0 <= $unsigned(in_c1_eni2_5_tpl);
            redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_q <= redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_delay_0;
        end
    end

    // redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2(DELAY,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_delay_0 <= '0;
            redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_delay_0 <= $unsigned(in_c1_eni2_4_tpl);
            redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_q <= redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_delay_0;
        end
    end

    // redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2(DELAY,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_delay_0 <= '0;
            redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_delay_0 <= $unsigned(in_c1_eni2_3_tpl);
            redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_q <= redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_delay_0;
        end
    end

    // redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2(DELAY,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_delay_0 <= '0;
            redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_delay_0 <= $unsigned(in_c1_eni2_2_tpl);
            redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_q <= redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_delay_0;
        end
    end

    // redist3_sync_together31_aunroll_x_in_c1_eni2_1_tpl_2(DELAY,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together31_aunroll_x_in_c1_eni2_1_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together31_aunroll_x_in_c1_eni2_1_tpl_2_q <= $unsigned(redist2_sync_together31_aunroll_x_in_c1_eni2_1_tpl_1_q);
        end
    end

    // redist15_i_tobool_mask_trunc_windowing12_sel_x_b_1(DELAY,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_tobool_mask_trunc_windowing12_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_tobool_mask_trunc_windowing12_sel_x_b_1_q <= $unsigned(i_tobool_mask_trunc_windowing12_sel_x_b);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,8)@3
    assign out_c1_exi3_0_tpl = GND_q;
    assign out_c1_exi3_1_tpl = redist15_i_tobool_mask_trunc_windowing12_sel_x_b_1_q;
    assign out_c1_exi3_2_tpl = redist3_sync_together31_aunroll_x_in_c1_eni2_1_tpl_2_q;
    assign out_c1_exi3_3_tpl = redist4_sync_together31_aunroll_x_in_c1_eni2_2_tpl_2_q;
    assign out_c1_exi3_4_tpl = redist5_sync_together31_aunroll_x_in_c1_eni2_3_tpl_2_q;
    assign out_c1_exi3_5_tpl = redist6_sync_together31_aunroll_x_in_c1_eni2_4_tpl_2_q;
    assign out_c1_exi3_6_tpl = redist7_sync_together31_aunroll_x_in_c1_eni2_5_tpl_2_q;
    assign out_c1_exi3_7_tpl = redist8_sync_together31_aunroll_x_in_c1_eni2_6_tpl_2_q;
    assign out_c1_exi3_8_tpl = redist9_sync_together31_aunroll_x_in_c1_eni2_7_tpl_2_q;
    assign out_c1_exi3_9_tpl = redist10_sync_together31_aunroll_x_in_c1_eni2_8_tpl_2_q;
    assign out_c1_exi3_10_tpl = redist11_sync_together31_aunroll_x_in_c1_eni2_9_tpl_2_q;
    assign out_c1_exi3_11_tpl = redist12_sync_together31_aunroll_x_in_c1_eni2_10_tpl_2_q;
    assign out_c1_exi3_12_tpl = redist13_sync_together31_aunroll_x_in_c1_eni2_11_tpl_2_q;
    assign out_c1_exi3_13_tpl = c_i32_19_q;
    assign out_c1_exi3_14_tpl = c_i32_010_recast_x_q;
    assign out_c1_exi3_15_tpl = i_cmp_windowing6_q;
    assign out_c1_exi3_16_tpl = i_tobool_xor_windowing11_q;
    assign out_o_valid = redist0_valid_fanout_reg0_q_1_q;
    assign out_unnamed_windowing0 = GND_q;

endmodule
