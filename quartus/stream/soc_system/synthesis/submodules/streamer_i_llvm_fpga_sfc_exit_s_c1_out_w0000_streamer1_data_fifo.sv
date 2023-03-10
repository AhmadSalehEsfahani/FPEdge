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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer1_data_fifo
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000_streamer1_data_fifo (
    output wire [0:0] out_o_almost_full,
    output wire [0:0] out_o_data_0_tpl,
    output wire [7:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [31:0] out_o_data_5_tpl,
    output wire [7:0] out_o_data_6_tpl,
    output wire [7:0] out_o_data_7_tpl,
    output wire [7:0] out_o_data_8_tpl,
    output wire [7:0] out_o_data_9_tpl,
    output wire [7:0] out_o_data_10_tpl,
    output wire [31:0] out_o_data_11_tpl,
    output wire [31:0] out_o_data_12_tpl,
    output wire [31:0] out_o_data_13_tpl,
    output wire [31:0] out_o_data_14_tpl,
    output wire [31:0] out_o_data_15_tpl,
    output wire [0:0] out_o_valid,
    input wire [0:0] in_i_data_0_tpl,
    input wire [7:0] in_i_data_1_tpl,
    input wire [31:0] in_i_data_2_tpl,
    input wire [31:0] in_i_data_3_tpl,
    input wire [31:0] in_i_data_4_tpl,
    input wire [31:0] in_i_data_5_tpl,
    input wire [7:0] in_i_data_6_tpl,
    input wire [7:0] in_i_data_7_tpl,
    input wire [7:0] in_i_data_8_tpl,
    input wire [7:0] in_i_data_9_tpl,
    input wire [7:0] in_i_data_10_tpl,
    input wire [31:0] in_i_data_11_tpl,
    input wire [31:0] in_i_data_12_tpl,
    input wire [31:0] in_i_data_13_tpl,
    input wire [31:0] in_i_data_14_tpl,
    input wire [31:0] in_i_data_15_tpl,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc40_in;
    wire [0:0] adapt_scalar_trunc40_q;
    wire [23:0] c_i24_023_q;
    wire [6:0] c_i7_04_q;
    wire [415:0] dsdk_ip_adapt_bitjoin1_q;
    wire [383:0] dsdk_ip_adapt_bitjoin6_q;
    wire [39:0] dsdk_ip_array_adapt_bitjoin20_q;
    wire [159:0] dsdk_ip_array_adapt_bitjoin24_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin9_q;
    wire [7:0] element_extension3_q;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_almost_full;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_almost_full_bitsignaltemp;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect39_b;
    wire [383:0] ip_dsdk_adapt_bitselect41_b;
    wire [7:0] ip_dsdk_adapt_bitselect43_b;
    wire [127:0] ip_dsdk_adapt_bitselect45_b;
    wire [31:0] ip_dsdk_adapt_bitselect47_b;
    wire [31:0] ip_dsdk_adapt_bitselect49_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [31:0] ip_dsdk_adapt_bitselect53_b;
    wire [39:0] ip_dsdk_adapt_bitselect55_b;
    wire [7:0] ip_dsdk_adapt_bitselect57_b;
    wire [7:0] ip_dsdk_adapt_bitselect59_b;
    wire [7:0] ip_dsdk_adapt_bitselect61_b;
    wire [7:0] ip_dsdk_adapt_bitselect63_b;
    wire [7:0] ip_dsdk_adapt_bitselect65_b;
    wire [159:0] ip_dsdk_adapt_bitselect67_b;
    wire [31:0] ip_dsdk_adapt_bitselect69_b;
    wire [31:0] ip_dsdk_adapt_bitselect71_b;
    wire [31:0] ip_dsdk_adapt_bitselect73_b;
    wire [31:0] ip_dsdk_adapt_bitselect75_b;
    wire [31:0] ip_dsdk_adapt_bitselect77_b;


    // ip_dsdk_adapt_bitselect41(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect41_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_data[415:32];

    // ip_dsdk_adapt_bitselect67(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect67_b = ip_dsdk_adapt_bitselect41_b[383:224];

    // ip_dsdk_adapt_bitselect77(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect77_b = ip_dsdk_adapt_bitselect67_b[159:128];

    // ip_dsdk_adapt_bitselect75(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect75_b = ip_dsdk_adapt_bitselect67_b[127:96];

    // ip_dsdk_adapt_bitselect73(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect73_b = ip_dsdk_adapt_bitselect67_b[95:64];

    // ip_dsdk_adapt_bitselect71(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect71_b = ip_dsdk_adapt_bitselect67_b[63:32];

    // ip_dsdk_adapt_bitselect69(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect69_b = ip_dsdk_adapt_bitselect67_b[31:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect55_b = ip_dsdk_adapt_bitselect41_b[199:160];

    // ip_dsdk_adapt_bitselect65(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect65_b = ip_dsdk_adapt_bitselect55_b[39:32];

    // ip_dsdk_adapt_bitselect63(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect63_b = ip_dsdk_adapt_bitselect55_b[31:24];

    // ip_dsdk_adapt_bitselect61(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect61_b = ip_dsdk_adapt_bitselect55_b[23:16];

    // ip_dsdk_adapt_bitselect59(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect59_b = ip_dsdk_adapt_bitselect55_b[15:8];

    // ip_dsdk_adapt_bitselect57(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect57_b = ip_dsdk_adapt_bitselect55_b[7:0];

    // ip_dsdk_adapt_bitselect45(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect45_b = ip_dsdk_adapt_bitselect41_b[159:32];

    // ip_dsdk_adapt_bitselect53(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect53_b = ip_dsdk_adapt_bitselect45_b[127:96];

    // ip_dsdk_adapt_bitselect51(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect51_b = ip_dsdk_adapt_bitselect45_b[95:64];

    // ip_dsdk_adapt_bitselect49(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect49_b = ip_dsdk_adapt_bitselect45_b[63:32];

    // ip_dsdk_adapt_bitselect47(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect47_b = ip_dsdk_adapt_bitselect45_b[31:0];

    // ip_dsdk_adapt_bitselect43(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect43_b = ip_dsdk_adapt_bitselect41_b[7:0];

    // ip_dsdk_adapt_bitselect39(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_data[0:0];

    // adapt_scalar_trunc40(ROUND,4)
    assign adapt_scalar_trunc40_in = ip_dsdk_adapt_bitselect39_b;
    assign adapt_scalar_trunc40_q = adapt_scalar_trunc40_in[0:0];

    // dsdk_ip_array_adapt_bitjoin24(BITJOIN,34)
    assign dsdk_ip_array_adapt_bitjoin24_q = {in_i_data_15_tpl, in_i_data_14_tpl, in_i_data_13_tpl, in_i_data_12_tpl, in_i_data_11_tpl};

    // dsdk_ip_array_adapt_bitjoin20(BITJOIN,33)
    assign dsdk_ip_array_adapt_bitjoin20_q = {in_i_data_10_tpl, in_i_data_9_tpl, in_i_data_8_tpl, in_i_data_7_tpl, in_i_data_6_tpl};

    // dsdk_ip_array_adapt_bitjoin9(BITJOIN,35)
    assign dsdk_ip_array_adapt_bitjoin9_q = {in_i_data_5_tpl, in_i_data_4_tpl, in_i_data_3_tpl, in_i_data_2_tpl};

    // dsdk_ip_adapt_bitjoin6(BITJOIN,32)
    assign dsdk_ip_adapt_bitjoin6_q = {dsdk_ip_array_adapt_bitjoin24_q, c_i24_023_q, dsdk_ip_array_adapt_bitjoin20_q, dsdk_ip_array_adapt_bitjoin9_q, c_i24_023_q, in_i_data_1_tpl};

    // c_i24_023(CONSTANT,27)
    assign c_i24_023_q = $unsigned(24'b000000000000000000000000);

    // c_i7_04(CONSTANT,30)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension3(BITJOIN,36)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,31)
    assign dsdk_ip_adapt_bitjoin1_q = {dsdk_ip_adapt_bitjoin6_q, c_i24_023_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0(EXTIFACE,37)
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_almost_full[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_almost_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_valid_bitsignaltemp;
    hld_fifo #(
        .DEPTH(32),
        .STYLE("ms"),
        .ASYNC_RESET(1),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .SYNCHRONIZE_RESET(0),
        .WIDTH(416)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_i_valid_bitsignaltemp),
        .o_almost_full(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_almost_full_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_data),
        .o_stall(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@20000000
    assign out_o_almost_full = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_almost_full;
    assign out_o_data_0_tpl = adapt_scalar_trunc40_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect43_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect47_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect49_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_o_data_5_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect61_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect63_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect65_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect69_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect71_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect73_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect75_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_valid;

    // sync_out(GPOUT,74)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_streamers_c1_exit_streamer0_o_stall;

endmodule
