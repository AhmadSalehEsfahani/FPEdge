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

// SystemVerilog created from i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4 (
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [7:0] out_c1_exit_1_tpl,
    output wire [31:0] out_c1_exit_2_tpl,
    output wire [31:0] out_c1_exit_3_tpl,
    output wire [31:0] out_c1_exit_4_tpl,
    output wire [31:0] out_c1_exit_5_tpl,
    output wire [7:0] out_c1_exit_6_tpl,
    output wire [7:0] out_c1_exit_7_tpl,
    output wire [7:0] out_c1_exit_8_tpl,
    output wire [7:0] out_c1_exit_9_tpl,
    output wire [7:0] out_c1_exit_10_tpl,
    output wire [31:0] out_c1_exit_11_tpl,
    output wire [31:0] out_c1_exit_12_tpl,
    output wire [31:0] out_c1_exit_13_tpl,
    output wire [31:0] out_c1_exit_14_tpl,
    output wire [31:0] out_c1_exit_15_tpl,
    output wire [0:0] out_o_valid,
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
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_0_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_5_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_6_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_7_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_8_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_9_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_0_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_1_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_2_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_3_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_4_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_5_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_6_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_7_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_8_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_9_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_10_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_11_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_12_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_13_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_14_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_15_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,8)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,7)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x(BLACKBOX,4)@1
    // out out_c1_exi1_0_tpl@5
    // out out_c1_exi1_1_tpl@5
    // out out_c1_exi1_2_tpl@5
    // out out_c1_exi1_3_tpl@5
    // out out_c1_exi1_4_tpl@5
    // out out_c1_exi1_5_tpl@5
    // out out_c1_exi1_6_tpl@5
    // out out_c1_exi1_7_tpl@5
    // out out_c1_exi1_8_tpl@5
    // out out_c1_exi1_9_tpl@5
    // out out_c1_exi1_10_tpl@5
    // out out_c1_exi1_11_tpl@5
    // out out_c1_exi1_12_tpl@5
    // out out_c1_exi1_13_tpl@5
    // out out_c1_exi1_14_tpl@5
    // out out_c1_exi1_15_tpl@5
    // out out_o_valid@5
    // out out_unnamed_projection1@5
    streamer_i_sfc_logic_s_c1_in_wt_entry_pr0000c1_enter_projection0 thei_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x (
        .in_c1_eni1_0_tpl(in_c1_eni1_0_tpl),
        .in_c1_eni1_1_tpl(in_c1_eni1_1_tpl),
        .in_c1_eni1_2_tpl(in_c1_eni1_2_tpl),
        .in_c1_eni1_3_tpl(in_c1_eni1_3_tpl),
        .in_c1_eni1_4_tpl(in_c1_eni1_4_tpl),
        .in_c1_eni1_5_tpl(in_c1_eni1_5_tpl),
        .in_c1_eni1_6_tpl(in_c1_eni1_6_tpl),
        .in_c1_eni1_7_tpl(in_c1_eni1_7_tpl),
        .in_c1_eni1_8_tpl(in_c1_eni1_8_tpl),
        .in_c1_eni1_9_tpl(in_c1_eni1_9_tpl),
        .in_c1_eni1_10_tpl(in_c1_eni1_10_tpl),
        .in_c1_eni1_11_tpl(in_c1_eni1_11_tpl),
        .in_c1_eni1_12_tpl(in_c1_eni1_12_tpl),
        .in_c1_eni1_13_tpl(in_c1_eni1_13_tpl),
        .in_c1_eni1_14_tpl(in_c1_eni1_14_tpl),
        .in_c1_eni1_15_tpl(in_c1_eni1_15_tpl),
        .in_i_valid(input_accepted_and_q),
        .out_c1_exi1_0_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_0_tpl),
        .out_c1_exi1_1_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_1_tpl),
        .out_c1_exi1_2_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_2_tpl),
        .out_c1_exi1_3_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_3_tpl),
        .out_c1_exi1_4_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_4_tpl),
        .out_c1_exi1_5_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_5_tpl),
        .out_c1_exi1_6_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_6_tpl),
        .out_c1_exi1_7_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_7_tpl),
        .out_c1_exi1_8_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_8_tpl),
        .out_c1_exi1_9_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_9_tpl),
        .out_c1_exi1_10_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_10_tpl),
        .out_c1_exi1_11_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_11_tpl),
        .out_c1_exi1_12_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_12_tpl),
        .out_c1_exi1_13_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_13_tpl),
        .out_c1_exi1_14_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_14_tpl),
        .out_c1_exi1_15_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_15_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_o_valid),
        .out_unnamed_projection1(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x(BLACKBOX,3)@5
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@8
    // out out_data_out_1_tpl@8
    // out out_data_out_2_tpl@8
    // out out_data_out_3_tpl@8
    // out out_data_out_4_tpl@8
    // out out_data_out_5_tpl@8
    // out out_data_out_6_tpl@8
    // out out_data_out_7_tpl@8
    // out out_data_out_8_tpl@8
    // out out_data_out_9_tpl@8
    // out out_data_out_10_tpl@8
    // out out_data_out_11_tpl@8
    // out out_data_out_12_tpl@8
    // out out_data_out_13_tpl@8
    // out out_data_out_14_tpl@8
    // out out_data_out_15_tpl@8
    // out out_stall_entry@20000000
    // out out_valid_out@8
    streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000_c1_exit_projection0 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_c1_exi1_15_tpl),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_15_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@8
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_10_tpl;
    assign out_c1_exit_11_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_11_tpl;
    assign out_c1_exit_12_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_12_tpl;
    assign out_c1_exit_13_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_13_tpl;
    assign out_c1_exit_14_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_14_tpl;
    assign out_c1_exit_15_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_data_out_15_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_valid_out;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_aunroll_x_out_stall_entry;

endmodule
