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

// SystemVerilog created from i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_sfc_s_c0_in_0tuple_qeaa_xz_e0000_enter129_windowing4 (
    output wire [0:0] out_c0_exit136_0_tpl,
    output wire [7:0] out_c0_exit136_1_tpl,
    output wire [7:0] out_c0_exit136_2_tpl,
    output wire [7:0] out_c0_exit136_3_tpl,
    output wire [15:0] out_c0_exit136_4_tpl,
    output wire [31:0] out_c0_exit136_5_tpl,
    output wire [31:0] out_c0_exit136_6_tpl,
    output wire [31:0] out_c0_exit136_7_tpl,
    output wire [31:0] out_c0_exit136_8_tpl,
    output wire [7:0] out_c0_exit136_9_tpl,
    output wire [7:0] out_c0_exit136_10_tpl,
    output wire [15:0] out_c0_exit136_11_tpl,
    output wire [31:0] out_c0_exit136_12_tpl,
    output wire [31:0] out_c0_exit136_13_tpl,
    output wire [31:0] out_c0_exit136_14_tpl,
    output wire [31:0] out_c0_exit136_15_tpl,
    output wire [31:0] out_c0_exit136_16_tpl,
    output wire [31:0] out_c0_exit136_17_tpl,
    output wire [63:0] out_c0_exit136_18_tpl,
    output wire [63:0] out_c0_exit136_19_tpl,
    output wire [7:0] out_c0_exit136_20_tpl,
    output wire [31:0] out_c0_exit136_21_tpl,
    output wire [31:0] out_c0_exit136_22_tpl,
    output wire [31:0] out_c0_exit136_23_tpl,
    output wire [31:0] out_c0_exit136_24_tpl,
    output wire [7:0] out_c0_exit136_25_tpl,
    output wire [31:0] out_c0_exit136_26_tpl,
    output wire [31:0] out_c0_exit136_27_tpl,
    output wire [31:0] out_c0_exit136_28_tpl,
    output wire [31:0] out_c0_exit136_29_tpl,
    output wire [31:0] out_c0_exit136_30_tpl,
    output wire [31:0] out_c0_exit136_31_tpl,
    output wire [31:0] out_c0_exit136_32_tpl,
    output wire [0:0] out_c0_exit136_33_tpl,
    output wire [0:0] out_c0_exit136_34_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_c0_eni2128_0_tpl,
    input wire [7:0] in_c0_eni2128_1_tpl,
    input wire [31:0] in_c0_eni2128_2_tpl,
    input wire [31:0] in_c0_eni2128_3_tpl,
    input wire [31:0] in_c0_eni2128_4_tpl,
    input wire [31:0] in_c0_eni2128_5_tpl,
    input wire [7:0] in_c0_eni2128_6_tpl,
    input wire [31:0] in_c0_eni2128_7_tpl,
    input wire [31:0] in_c0_eni2128_8_tpl,
    input wire [31:0] in_c0_eni2128_9_tpl,
    input wire [31:0] in_c0_eni2128_10_tpl,
    input wire [31:0] in_c0_eni2128_11_tpl,
    input wire [0:0] in_c0_eni2128_12_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_0_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_1_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_2_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_3_tpl;
    wire [15:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_5_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_8_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_9_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_10_tpl;
    wire [15:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_11_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_12_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_13_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_14_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_15_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_16_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_17_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_18_tpl;
    wire [63:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_19_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_20_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_21_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_22_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_23_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_24_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_25_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_26_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_27_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_28_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_29_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_30_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_31_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_32_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_33_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_34_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_enable;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_valid_mask;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_0_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_1_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_2_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_3_tpl;
    wire [15:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_4_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_5_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_6_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_7_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_8_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_9_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_10_tpl;
    wire [15:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_11_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_12_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_13_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_14_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_15_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_16_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_17_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_18_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_19_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_20_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_21_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_22_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_23_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_24_tpl;
    wire [7:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_25_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_26_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_27_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_28_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_29_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_30_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_31_tpl;
    wire [31:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_32_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_33_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_34_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // not_stall_out(LOGICAL,9)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_valid_mask);

    // input_accepted_and(LOGICAL,8)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x(BLACKBOX,4)@0
    // out out_c0_exi4135_0_tpl@2
    // out out_c0_exi4135_1_tpl@2
    // out out_c0_exi4135_2_tpl@2
    // out out_c0_exi4135_3_tpl@2
    // out out_c0_exi4135_4_tpl@2
    // out out_c0_exi4135_5_tpl@2
    // out out_c0_exi4135_6_tpl@2
    // out out_c0_exi4135_7_tpl@2
    // out out_c0_exi4135_8_tpl@2
    // out out_c0_exi4135_9_tpl@2
    // out out_c0_exi4135_10_tpl@2
    // out out_c0_exi4135_11_tpl@2
    // out out_c0_exi4135_12_tpl@2
    // out out_c0_exi4135_13_tpl@2
    // out out_c0_exi4135_14_tpl@2
    // out out_c0_exi4135_15_tpl@2
    // out out_c0_exi4135_16_tpl@2
    // out out_c0_exi4135_17_tpl@2
    // out out_c0_exi4135_18_tpl@2
    // out out_c0_exi4135_19_tpl@2
    // out out_c0_exi4135_20_tpl@2
    // out out_c0_exi4135_21_tpl@2
    // out out_c0_exi4135_22_tpl@2
    // out out_c0_exi4135_23_tpl@2
    // out out_c0_exi4135_24_tpl@2
    // out out_c0_exi4135_25_tpl@2
    // out out_c0_exi4135_26_tpl@2
    // out out_c0_exi4135_27_tpl@2
    // out out_c0_exi4135_28_tpl@2
    // out out_c0_exi4135_29_tpl@2
    // out out_c0_exi4135_30_tpl@2
    // out out_c0_exi4135_31_tpl@2
    // out out_c0_exi4135_32_tpl@2
    // out out_c0_exi4135_33_tpl@2
    // out out_c0_exi4135_34_tpl@2
    // out out_o_valid@2
    // out out_unnamed_windowing0@2
    windowing_i_sfc_logic_s_c0_in_0tuple_qea0000_enter129_windowing0 thei_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x (
        .in_c0_eni2128_0_tpl(in_c0_eni2128_0_tpl),
        .in_c0_eni2128_1_tpl(in_c0_eni2128_1_tpl),
        .in_c0_eni2128_2_tpl(in_c0_eni2128_2_tpl),
        .in_c0_eni2128_3_tpl(in_c0_eni2128_3_tpl),
        .in_c0_eni2128_4_tpl(in_c0_eni2128_4_tpl),
        .in_c0_eni2128_5_tpl(in_c0_eni2128_5_tpl),
        .in_c0_eni2128_6_tpl(in_c0_eni2128_6_tpl),
        .in_c0_eni2128_7_tpl(in_c0_eni2128_7_tpl),
        .in_c0_eni2128_8_tpl(in_c0_eni2128_8_tpl),
        .in_c0_eni2128_9_tpl(in_c0_eni2128_9_tpl),
        .in_c0_eni2128_10_tpl(in_c0_eni2128_10_tpl),
        .in_c0_eni2128_11_tpl(in_c0_eni2128_11_tpl),
        .in_c0_eni2128_12_tpl(in_c0_eni2128_12_tpl),
        .in_enable(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_enable),
        .in_i_valid(input_accepted_and_q),
        .out_c0_exi4135_0_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_0_tpl),
        .out_c0_exi4135_1_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_1_tpl),
        .out_c0_exi4135_2_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_2_tpl),
        .out_c0_exi4135_3_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_3_tpl),
        .out_c0_exi4135_4_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_4_tpl),
        .out_c0_exi4135_5_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_5_tpl),
        .out_c0_exi4135_6_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_6_tpl),
        .out_c0_exi4135_7_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_7_tpl),
        .out_c0_exi4135_8_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_8_tpl),
        .out_c0_exi4135_9_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_9_tpl),
        .out_c0_exi4135_10_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_10_tpl),
        .out_c0_exi4135_11_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_11_tpl),
        .out_c0_exi4135_12_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_12_tpl),
        .out_c0_exi4135_13_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_13_tpl),
        .out_c0_exi4135_14_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_14_tpl),
        .out_c0_exi4135_15_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_15_tpl),
        .out_c0_exi4135_16_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_16_tpl),
        .out_c0_exi4135_17_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_17_tpl),
        .out_c0_exi4135_18_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_18_tpl),
        .out_c0_exi4135_19_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_19_tpl),
        .out_c0_exi4135_20_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_20_tpl),
        .out_c0_exi4135_21_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_21_tpl),
        .out_c0_exi4135_22_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_22_tpl),
        .out_c0_exi4135_23_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_23_tpl),
        .out_c0_exi4135_24_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_24_tpl),
        .out_c0_exi4135_25_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_25_tpl),
        .out_c0_exi4135_26_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_26_tpl),
        .out_c0_exi4135_27_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_27_tpl),
        .out_c0_exi4135_28_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_28_tpl),
        .out_c0_exi4135_29_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_29_tpl),
        .out_c0_exi4135_30_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_30_tpl),
        .out_c0_exi4135_31_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_31_tpl),
        .out_c0_exi4135_32_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_32_tpl),
        .out_c0_exi4135_33_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_33_tpl),
        .out_c0_exi4135_34_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_34_tpl),
        .out_o_valid(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_o_valid),
        .out_unnamed_windowing0(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x(BLACKBOX,3)@2
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    windowing_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit136_windowing0 thei_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_11_tpl),
        .in_data_in_12_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_12_tpl),
        .in_data_in_13_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_13_tpl),
        .in_data_in_14_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_14_tpl),
        .in_data_in_15_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_15_tpl),
        .in_data_in_16_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_16_tpl),
        .in_data_in_17_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_17_tpl),
        .in_data_in_18_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_18_tpl),
        .in_data_in_19_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_19_tpl),
        .in_data_in_20_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_20_tpl),
        .in_data_in_21_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_21_tpl),
        .in_data_in_22_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_22_tpl),
        .in_data_in_23_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_23_tpl),
        .in_data_in_24_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_24_tpl),
        .in_data_in_25_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_25_tpl),
        .in_data_in_26_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_26_tpl),
        .in_data_in_27_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_27_tpl),
        .in_data_in_28_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_28_tpl),
        .in_data_in_29_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_29_tpl),
        .in_data_in_30_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_30_tpl),
        .in_data_in_31_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_31_tpl),
        .in_data_in_32_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_32_tpl),
        .in_data_in_33_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_33_tpl),
        .in_data_in_34_tpl(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_c0_exi4135_34_tpl),
        .in_dec_pipelined_thread(VCC_q),
        .in_inc_pipelined_thread(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_22_tpl),
        .out_data_out_23_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_23_tpl),
        .out_data_out_24_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_24_tpl),
        .out_data_out_25_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_25_tpl),
        .out_data_out_26_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_26_tpl),
        .out_data_out_27_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_27_tpl),
        .out_data_out_28_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_28_tpl),
        .out_data_out_29_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_29_tpl),
        .out_data_out_30_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_30_tpl),
        .out_data_out_31_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_31_tpl),
        .out_data_out_32_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_32_tpl),
        .out_data_out_33_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_33_tpl),
        .out_data_out_34_tpl(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_34_tpl),
        .out_enable(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_enable),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_stall_entry),
        .out_valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_valid_mask),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@2
    assign out_c0_exit136_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit136_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit136_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit136_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit136_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit136_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit136_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit136_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_7_tpl;
    assign out_c0_exit136_8_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_8_tpl;
    assign out_c0_exit136_9_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_9_tpl;
    assign out_c0_exit136_10_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_10_tpl;
    assign out_c0_exit136_11_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_11_tpl;
    assign out_c0_exit136_12_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_12_tpl;
    assign out_c0_exit136_13_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_13_tpl;
    assign out_c0_exit136_14_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_14_tpl;
    assign out_c0_exit136_15_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_15_tpl;
    assign out_c0_exit136_16_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_16_tpl;
    assign out_c0_exit136_17_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_17_tpl;
    assign out_c0_exit136_18_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_18_tpl;
    assign out_c0_exit136_19_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_19_tpl;
    assign out_c0_exit136_20_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_20_tpl;
    assign out_c0_exit136_21_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_21_tpl;
    assign out_c0_exit136_22_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_22_tpl;
    assign out_c0_exit136_23_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_23_tpl;
    assign out_c0_exit136_24_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_24_tpl;
    assign out_c0_exit136_25_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_25_tpl;
    assign out_c0_exit136_26_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_26_tpl;
    assign out_c0_exit136_27_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_27_tpl;
    assign out_c0_exit136_28_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_28_tpl;
    assign out_c0_exit136_29_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_29_tpl;
    assign out_c0_exit136_30_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_30_tpl;
    assign out_c0_exit136_31_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_31_tpl;
    assign out_c0_exit136_32_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_32_tpl;
    assign out_c0_exit136_33_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_33_tpl;
    assign out_c0_exit136_34_tpl = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_data_out_34_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_valid_out;

    // sync_out(GPOUT,11)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_aunroll_x_out_stall_entry;

endmodule
