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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation1_data_fifo
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 18 05:37:17 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000gregation1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [7:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [7:0] out_o_data_6_tpl,
    output wire [31:0] out_o_data_7_tpl,
    output wire [31:0] out_o_data_8_tpl,
    output wire [31:0] out_o_data_9_tpl,
    output wire [31:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [7:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [7:0] in_i_data_6_tpl,
    input wire [31:0] in_i_data_7_tpl,
    input wire [31:0] in_i_data_8_tpl,
    input wire [31:0] in_i_data_9_tpl,
    input wire [31:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc29_in;
    wire [0:0] adapt_scalar_trunc29_q;
    wire [23:0] c_i24_012_q;
    wire [6:0] c_i7_04_q;
    wire [383:0] dsdk_ip_adapt_bitjoin1_q;
    wire [351:0] dsdk_ip_adapt_bitjoin6_q;
    wire [159:0] dsdk_ip_array_adapt_bitjoin13_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin9_q;
    wire [7:0] element_extension3_q;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_almost_full_bitsignaltemp;
    wire [383:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect28_b;
    wire [351:0] ip_dsdk_adapt_bitselect30_b;
    wire [7:0] ip_dsdk_adapt_bitselect32_b;
    wire [127:0] ip_dsdk_adapt_bitselect34_b;
    wire [31:0] ip_dsdk_adapt_bitselect36_b;
    wire [31:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [7:0] ip_dsdk_adapt_bitselect44_b;
    wire [159:0] ip_dsdk_adapt_bitselect46_b;
    wire [31:0] ip_dsdk_adapt_bitselect48_b;
    wire [31:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [31:0] ip_dsdk_adapt_bitselect54_b;
    wire [31:0] ip_dsdk_adapt_bitselect56_b;


    // ip_dsdk_adapt_bitselect30(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect30_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_data[383:32];

    // ip_dsdk_adapt_bitselect46(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect46_b = ip_dsdk_adapt_bitselect30_b[351:192];

    // ip_dsdk_adapt_bitselect56(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect56_b = ip_dsdk_adapt_bitselect46_b[159:128];

    // ip_dsdk_adapt_bitselect54(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect54_b = ip_dsdk_adapt_bitselect46_b[127:96];

    // ip_dsdk_adapt_bitselect52(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect52_b = ip_dsdk_adapt_bitselect46_b[95:64];

    // ip_dsdk_adapt_bitselect50(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect50_b = ip_dsdk_adapt_bitselect46_b[63:32];

    // ip_dsdk_adapt_bitselect48(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect48_b = ip_dsdk_adapt_bitselect46_b[31:0];

    // ip_dsdk_adapt_bitselect44(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect44_b = ip_dsdk_adapt_bitselect30_b[167:160];

    // ip_dsdk_adapt_bitselect34(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect34_b = ip_dsdk_adapt_bitselect30_b[159:32];

    // ip_dsdk_adapt_bitselect42(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect42_b = ip_dsdk_adapt_bitselect34_b[127:96];

    // ip_dsdk_adapt_bitselect40(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect40_b = ip_dsdk_adapt_bitselect34_b[95:64];

    // ip_dsdk_adapt_bitselect38(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect38_b = ip_dsdk_adapt_bitselect34_b[63:32];

    // ip_dsdk_adapt_bitselect36(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect36_b = ip_dsdk_adapt_bitselect34_b[31:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect32_b = ip_dsdk_adapt_bitselect30_b[7:0];

    // ip_dsdk_adapt_bitselect28(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect28_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_data[0:0];

    // adapt_scalar_trunc29(ROUND,4)
    assign adapt_scalar_trunc29_in = ip_dsdk_adapt_bitselect28_b;
    assign adapt_scalar_trunc29_q = adapt_scalar_trunc29_in[0:0];

    // dsdk_ip_array_adapt_bitjoin13(BITJOIN,24)
    assign dsdk_ip_array_adapt_bitjoin13_q = {in_i_data_11_tpl, in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl};

    // dsdk_ip_array_adapt_bitjoin9(BITJOIN,25)
    assign dsdk_ip_array_adapt_bitjoin9_q = {in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl};

    // dsdk_ip_adapt_bitjoin6(BITJOIN,23)
    assign dsdk_ip_adapt_bitjoin6_q = {dsdk_ip_array_adapt_bitjoin13_q, c_i24_012_q, in_i_data_6_tpl, dsdk_ip_array_adapt_bitjoin9_q, c_i24_012_q, in_i_data_1_tpl};

    // c_i24_012(CONSTANT,18)
    assign c_i24_012_q = $unsigned(24'b000000000000000000000000);

    // c_i7_04(CONSTANT,21)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension3(BITJOIN,26)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,22)
    assign dsdk_ip_adapt_bitjoin1_q = {dsdk_ip_adapt_bitjoin6_q, c_i24_012_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0(EXTIFACE,27)
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(512),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(384)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc29_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_valid;

    // sync_out(GPOUT,55)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_aggregations_c1_exit_aggregation0_o_stall;

endmodule
