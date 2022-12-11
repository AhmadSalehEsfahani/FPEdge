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

// SystemVerilog created from i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6 (
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [0:0] out_c1_exit_1_tpl,
    output wire [7:0] out_c1_exit_2_tpl,
    output wire [31:0] out_c1_exit_3_tpl,
    output wire [31:0] out_c1_exit_4_tpl,
    output wire [31:0] out_c1_exit_5_tpl,
    output wire [31:0] out_c1_exit_6_tpl,
    output wire [7:0] out_c1_exit_7_tpl,
    output wire [31:0] out_c1_exit_8_tpl,
    output wire [31:0] out_c1_exit_9_tpl,
    output wire [31:0] out_c1_exit_10_tpl,
    output wire [31:0] out_c1_exit_11_tpl,
    output wire [31:0] out_c1_exit_12_tpl,
    output wire [31:0] out_c1_exit_13_tpl,
    output wire [31:0] out_c1_exit_14_tpl,
    output wire [0:0] out_c1_exit_15_tpl,
    output wire [0:0] out_c1_exit_16_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c0_exe1,
    input wire [0:0] in_c0_exe2,
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
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_1_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_6_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_14_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_15_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_16_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_0_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_1_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_2_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_3_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_4_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_5_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_6_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_7_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_8_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_9_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_10_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_11_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_12_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_13_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_14_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_15_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_16_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,7)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,6)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x(BLACKBOX,4)@1
    // out out_c1_exi3_0_tpl@3
    // out out_c1_exi3_1_tpl@3
    // out out_c1_exi3_2_tpl@3
    // out out_c1_exi3_3_tpl@3
    // out out_c1_exi3_4_tpl@3
    // out out_c1_exi3_5_tpl@3
    // out out_c1_exi3_6_tpl@3
    // out out_c1_exi3_7_tpl@3
    // out out_c1_exi3_8_tpl@3
    // out out_c1_exi3_9_tpl@3
    // out out_c1_exi3_10_tpl@3
    // out out_c1_exi3_11_tpl@3
    // out out_c1_exi3_12_tpl@3
    // out out_c1_exi3_13_tpl@3
    // out out_c1_exi3_14_tpl@3
    // out out_c1_exi3_15_tpl@3
    // out out_c1_exi3_16_tpl@3
    // out out_o_valid@3
    // out out_unnamed_windowing0@3
    streamer_i_sfc_logic_s_c1_in_wt_entry_wi0000_c1_enter_windowing0 thei_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x (
        .in_c1_eni2_0_tpl(in_c1_eni2_0_tpl),
        .in_c1_eni2_1_tpl(in_c1_eni2_1_tpl),
        .in_c1_eni2_2_tpl(in_c1_eni2_2_tpl),
        .in_c1_eni2_3_tpl(in_c1_eni2_3_tpl),
        .in_c1_eni2_4_tpl(in_c1_eni2_4_tpl),
        .in_c1_eni2_5_tpl(in_c1_eni2_5_tpl),
        .in_c1_eni2_6_tpl(in_c1_eni2_6_tpl),
        .in_c1_eni2_7_tpl(in_c1_eni2_7_tpl),
        .in_c1_eni2_8_tpl(in_c1_eni2_8_tpl),
        .in_c1_eni2_9_tpl(in_c1_eni2_9_tpl),
        .in_c1_eni2_10_tpl(in_c1_eni2_10_tpl),
        .in_c1_eni2_11_tpl(in_c1_eni2_11_tpl),
        .in_c1_eni2_12_tpl(in_c1_eni2_12_tpl),
        .in_enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .out_c1_exi3_0_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_0_tpl),
        .out_c1_exi3_1_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_1_tpl),
        .out_c1_exi3_2_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_2_tpl),
        .out_c1_exi3_3_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_3_tpl),
        .out_c1_exi3_4_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_4_tpl),
        .out_c1_exi3_5_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_5_tpl),
        .out_c1_exi3_6_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_6_tpl),
        .out_c1_exi3_7_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_7_tpl),
        .out_c1_exi3_8_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_8_tpl),
        .out_c1_exi3_9_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_9_tpl),
        .out_c1_exi3_10_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_10_tpl),
        .out_c1_exi3_11_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_11_tpl),
        .out_c1_exi3_12_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_12_tpl),
        .out_c1_exi3_13_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_13_tpl),
        .out_c1_exi3_14_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_14_tpl),
        .out_c1_exi3_15_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_15_tpl),
        .out_c1_exi3_16_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_16_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_o_valid),
        .out_unnamed_windowing0(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x(BLACKBOX,3)@3
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000s_c1_exit_windowing0 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_c1_exi3_16_tpl),
        .in_dec_pipelined_thread(in_c0_exe1),
        .in_inc_pipelined_thread(in_c0_exe2),
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_16_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@3
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_10_tpl;
    assign out_c1_exit_11_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_11_tpl;
    assign out_c1_exit_12_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_12_tpl;
    assign out_c1_exit_13_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_13_tpl;
    assign out_c1_exit_14_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_14_tpl;
    assign out_c1_exit_15_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_15_tpl;
    assign out_c1_exit_16_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_data_out_16_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_valid_out;

    // sync_out(GPOUT,9)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_aunroll_x_out_stall_entry;

endmodule
