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

// SystemVerilog created from i_sfc_s_c1_in_wt_entry_aggregations_c1_enter_aggregation5
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_sfc_s_c1_in_wt_entry_aggrega00001_enter_aggregation5 (
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [7:0] out_c1_exit_1_tpl,
    output wire [31:0] out_c1_exit_2_tpl,
    output wire [31:0] out_c1_exit_3_tpl,
    output wire [31:0] out_c1_exit_4_tpl,
    output wire [31:0] out_c1_exit_5_tpl,
    output wire [7:0] out_c1_exit_6_tpl,
    output wire [31:0] out_c1_exit_7_tpl,
    output wire [31:0] out_c1_exit_8_tpl,
    output wire [31:0] out_c1_exit_9_tpl,
    output wire [31:0] out_c1_exit_10_tpl,
    output wire [31:0] out_c1_exit_11_tpl,
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
    input wire [31:0] in_c1_eni2_12_tpl,
    input wire [31:0] in_c1_eni2_13_tpl,
    input wire [0:0] in_c1_eni2_14_tpl,
    input wire [0:0] in_c1_eni2_15_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_0_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_1_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_2_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_3_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_4_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_5_tpl;
    wire [7:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_6_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_7_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_8_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_9_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_10_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_11_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_0_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_1_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_2_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_3_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_4_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_5_tpl;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_6_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_7_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_8_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_9_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_10_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_11_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_o_valid;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,8)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,7)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x(BLACKBOX,4)@25
    // out out_c1_exi1_0_tpl@75
    // out out_c1_exi1_1_tpl@75
    // out out_c1_exi1_2_tpl@75
    // out out_c1_exi1_3_tpl@75
    // out out_c1_exi1_4_tpl@75
    // out out_c1_exi1_5_tpl@75
    // out out_c1_exi1_6_tpl@75
    // out out_c1_exi1_7_tpl@75
    // out out_c1_exi1_8_tpl@75
    // out out_c1_exi1_9_tpl@75
    // out out_c1_exi1_10_tpl@75
    // out out_c1_exi1_11_tpl@75
    // out out_o_valid@75
    // out out_unnamed_aggregation0@75
    windowing_i_sfc_logic_s_c1_in_wt_entry_a00001_enter_aggregation0 thei_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x (
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
        .in_c1_eni2_13_tpl(in_c1_eni2_13_tpl),
        .in_c1_eni2_14_tpl(in_c1_eni2_14_tpl),
        .in_c1_eni2_15_tpl(in_c1_eni2_15_tpl),
        .in_i_valid(input_accepted_and_q),
        .out_c1_exi1_0_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_0_tpl),
        .out_c1_exi1_1_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_1_tpl),
        .out_c1_exi1_2_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_2_tpl),
        .out_c1_exi1_3_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_3_tpl),
        .out_c1_exi1_4_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_4_tpl),
        .out_c1_exi1_5_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_5_tpl),
        .out_c1_exi1_6_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_6_tpl),
        .out_c1_exi1_7_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_7_tpl),
        .out_c1_exi1_8_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_8_tpl),
        .out_c1_exi1_9_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_9_tpl),
        .out_c1_exi1_10_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_10_tpl),
        .out_c1_exi1_11_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_11_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_o_valid),
        .out_unnamed_aggregation0(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x(BLACKBOX,3)@75
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@78
    // out out_data_out_1_tpl@78
    // out out_data_out_2_tpl@78
    // out out_data_out_3_tpl@78
    // out out_data_out_4_tpl@78
    // out out_data_out_5_tpl@78
    // out out_data_out_6_tpl@78
    // out out_data_out_7_tpl@78
    // out out_data_out_8_tpl@78
    // out out_data_out_9_tpl@78
    // out out_data_out_10_tpl@78
    // out out_data_out_11_tpl@78
    // out out_stall_entry@20000000
    // out out_valid_out@78
    windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000c1_exit_aggregation0 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x (
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_7_tpl),
        .in_data_in_8_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_8_tpl),
        .in_data_in_9_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_9_tpl),
        .in_data_in_10_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_10_tpl),
        .in_data_in_11_tpl(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_c1_exi1_11_tpl),
        .in_dec_pipelined_thread(in_c0_exe1),
        .in_inc_pipelined_thread(in_c0_exe2),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_aggregations_c1_enter_aggregation0_aunroll_x_out_o_valid),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_11_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@78
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_1_tpl;
    assign out_c1_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_2_tpl;
    assign out_c1_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_3_tpl;
    assign out_c1_exit_4_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_4_tpl;
    assign out_c1_exit_5_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_5_tpl;
    assign out_c1_exit_6_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_6_tpl;
    assign out_c1_exit_7_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_7_tpl;
    assign out_c1_exit_8_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_8_tpl;
    assign out_c1_exit_9_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_9_tpl;
    assign out_c1_exit_10_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_10_tpl;
    assign out_c1_exit_11_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_data_out_11_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_valid_out;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_aunroll_x_out_stall_entry;

endmodule
