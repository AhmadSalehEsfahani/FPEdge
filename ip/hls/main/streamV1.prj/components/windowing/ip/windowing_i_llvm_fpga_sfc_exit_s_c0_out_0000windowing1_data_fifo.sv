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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing1_data_fifo
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000windowing1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [0:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_data_4_tpl,
    output wire [63:0] out_o_data_5_tpl,
    output wire [0:0] out_o_data_6_tpl,
    output wire [0:0] out_o_data_7_tpl,
    output wire [0:0] out_o_data_8_tpl,
    output wire [0:0] out_o_data_9_tpl,
    output wire [0:0] out_o_data_10_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [0:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_data_4_tpl,
    input wire [63:0] in_i_data_5_tpl,
    input wire [0:0] in_i_data_6_tpl,
    input wire [0:0] in_i_data_7_tpl,
    input wire [0:0] in_i_data_8_tpl,
    input wire [0:0] in_i_data_9_tpl,
    input wire [0:0] in_i_data_10_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc27_in;
    wire [0:0] adapt_scalar_trunc27_q;
    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [0:0] adapt_scalar_trunc31_in;
    wire [0:0] adapt_scalar_trunc31_q;
    wire [0:0] adapt_scalar_trunc33_in;
    wire [0:0] adapt_scalar_trunc33_q;
    wire [0:0] adapt_scalar_trunc35_in;
    wire [0:0] adapt_scalar_trunc35_q;
    wire [0:0] adapt_scalar_trunc39_in;
    wire [0:0] adapt_scalar_trunc39_q;
    wire [0:0] adapt_scalar_trunc41_in;
    wire [0:0] adapt_scalar_trunc41_q;
    wire [0:0] adapt_scalar_trunc43_in;
    wire [0:0] adapt_scalar_trunc43_q;
    wire [0:0] adapt_scalar_trunc45_in;
    wire [0:0] adapt_scalar_trunc45_q;
    wire [0:0] adapt_scalar_trunc47_in;
    wire [0:0] adapt_scalar_trunc47_q;
    wire [23:0] c_i24_013_q;
    wire [6:0] c_i7_010_q;
    wire [191:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension11_q;
    wire [7:0] element_extension14_q;
    wire [7:0] element_extension16_q;
    wire [7:0] element_extension18_q;
    wire [7:0] element_extension20_q;
    wire [7:0] element_extension22_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension5_q;
    wire [7:0] element_extension7_q;
    wire [7:0] element_extension9_q;
    wire [191:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_almost_full_bitsignaltemp;
    wire [191:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect26_b;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [0:0] ip_dsdk_adapt_bitselect30_b;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [0:0] ip_dsdk_adapt_bitselect34_b;
    wire [63:0] ip_dsdk_adapt_bitselect36_b;
    wire [0:0] ip_dsdk_adapt_bitselect38_b;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [0:0] ip_dsdk_adapt_bitselect44_b;
    wire [0:0] ip_dsdk_adapt_bitselect46_b;


    // ip_dsdk_adapt_bitselect46(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect46_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[160:160];

    // adapt_scalar_trunc47(ROUND,13)
    assign adapt_scalar_trunc47_in = ip_dsdk_adapt_bitselect46_b;
    assign adapt_scalar_trunc47_q = adapt_scalar_trunc47_in[0:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[152:152];

    // adapt_scalar_trunc45(ROUND,12)
    assign adapt_scalar_trunc45_in = ip_dsdk_adapt_bitselect44_b;
    assign adapt_scalar_trunc45_q = adapt_scalar_trunc45_in[0:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[144:144];

    // adapt_scalar_trunc43(ROUND,11)
    assign adapt_scalar_trunc43_in = ip_dsdk_adapt_bitselect42_b;
    assign adapt_scalar_trunc43_q = adapt_scalar_trunc43_in[0:0];

    // ip_dsdk_adapt_bitselect40(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[136:136];

    // adapt_scalar_trunc41(ROUND,10)
    assign adapt_scalar_trunc41_in = ip_dsdk_adapt_bitselect40_b;
    assign adapt_scalar_trunc41_q = adapt_scalar_trunc41_in[0:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect38_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[128:128];

    // adapt_scalar_trunc39(ROUND,9)
    assign adapt_scalar_trunc39_in = ip_dsdk_adapt_bitselect38_b;
    assign adapt_scalar_trunc39_q = adapt_scalar_trunc39_in[0:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect36_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[127:64];

    // ip_dsdk_adapt_bitselect34(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[32:32];

    // adapt_scalar_trunc35(ROUND,8)
    assign adapt_scalar_trunc35_in = ip_dsdk_adapt_bitselect34_b;
    assign adapt_scalar_trunc35_q = adapt_scalar_trunc35_in[0:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[24:24];

    // adapt_scalar_trunc33(ROUND,7)
    assign adapt_scalar_trunc33_in = ip_dsdk_adapt_bitselect32_b;
    assign adapt_scalar_trunc33_q = adapt_scalar_trunc33_in[0:0];

    // ip_dsdk_adapt_bitselect30(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[16:16];

    // adapt_scalar_trunc31(ROUND,6)
    assign adapt_scalar_trunc31_in = ip_dsdk_adapt_bitselect30_b;
    assign adapt_scalar_trunc31_q = adapt_scalar_trunc31_in[0:0];

    // ip_dsdk_adapt_bitselect28(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[8:8];

    // adapt_scalar_trunc29(ROUND,5)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // ip_dsdk_adapt_bitselect26(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect26_b = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data[0:0];

    // adapt_scalar_trunc27(ROUND,4)
    assign adapt_scalar_trunc27_in = ip_dsdk_adapt_bitselect26_b;
    assign adapt_scalar_trunc27_q = adapt_scalar_trunc27_in[0:0];

    // c_i7_010(CONSTANT,16)
    assign c_i7_010_q = $unsigned(7'b0000000);

    // element_extension22(BITJOIN,32)
    assign element_extension22_q = {c_i7_010_q, in_i_data_10_tpl};

    // element_extension20(BITJOIN,31)
    assign element_extension20_q = {c_i7_010_q, in_i_data_9_tpl};

    // element_extension18(BITJOIN,30)
    assign element_extension18_q = {c_i7_010_q, in_i_data_8_tpl};

    // element_extension16(BITJOIN,29)
    assign element_extension16_q = {c_i7_010_q, in_i_data_7_tpl};

    // element_extension14(BITJOIN,28)
    assign element_extension14_q = {c_i7_010_q, in_i_data_6_tpl};

    // c_i24_013(CONSTANT,14)
    assign c_i24_013_q = $unsigned(24'b000000000000000000000000);

    // element_extension11(BITJOIN,27)
    assign element_extension11_q = {c_i7_010_q, in_i_data_4_tpl};

    // element_extension9(BITJOIN,36)
    assign element_extension9_q = {c_i7_010_q, in_i_data_3_tpl};

    // element_extension7(BITJOIN,35)
    assign element_extension7_q = {c_i7_010_q, in_i_data_2_tpl};

    // element_extension5(BITJOIN,34)
    assign element_extension5_q = {c_i7_010_q, in_i_data_1_tpl};

    // element_extension3(BITJOIN,33)
    assign element_extension3_q = {c_i7_010_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,26)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i24_013_q, element_extension22_q, element_extension20_q, element_extension18_q, element_extension16_q, element_extension14_q, in_i_data_5_tpl, c_i24_013_q, element_extension11_q, element_extension9_q, element_extension7_q, element_extension5_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0(EXTIFACE,37)
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(192)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc27_q;
    assign out_o_data_1_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_2_tpl = adapt_scalar_trunc31_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc33_q;
    assign out_o_data_4_tpl = adapt_scalar_trunc35_q;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_6_tpl = adapt_scalar_trunc39_q;
    assign out_o_data_7_tpl = adapt_scalar_trunc41_q;
    assign out_o_data_8_tpl = adapt_scalar_trunc43_q;
    assign out_o_data_9_tpl = adapt_scalar_trunc45_q;
    assign out_o_data_10_tpl = adapt_scalar_trunc47_q;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_valid;

    // sync_out(GPOUT,51)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_arrayinit_body_i_windowings_c0_exit92_windowing0_o_stall;

endmodule
