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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection0
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 21:02:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000_c1_exit_projection0 (
    output wire [0:0] out_data_out_0_tpl,
    output wire [7:0] out_data_out_1_tpl,
    output wire [31:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [31:0] out_data_out_4_tpl,
    output wire [31:0] out_data_out_5_tpl,
    output wire [7:0] out_data_out_6_tpl,
    output wire [7:0] out_data_out_7_tpl,
    output wire [7:0] out_data_out_8_tpl,
    output wire [7:0] out_data_out_9_tpl,
    output wire [7:0] out_data_out_10_tpl,
    output wire [31:0] out_data_out_11_tpl,
    output wire [31:0] out_data_out_12_tpl,
    output wire [31:0] out_data_out_13_tpl,
    output wire [31:0] out_data_out_14_tpl,
    output wire [31:0] out_data_out_15_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [7:0] in_data_in_1_tpl,
    input wire [31:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [31:0] in_data_in_4_tpl,
    input wire [31:0] in_data_in_5_tpl,
    input wire [7:0] in_data_in_6_tpl,
    input wire [7:0] in_data_in_7_tpl,
    input wire [7:0] in_data_in_8_tpl,
    input wire [7:0] in_data_in_9_tpl,
    input wire [7:0] in_data_in_10_tpl,
    input wire [31:0] in_data_in_11_tpl,
    input wire [31:0] in_data_in_12_tpl,
    input wire [31:0] in_data_in_13_tpl,
    input wire [31:0] in_data_in_14_tpl,
    input wire [31:0] in_data_in_15_tpl,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [23:0] c_i24_016_q;
    wire [6:0] c_i7_05_q;
    wire [415:0] dsdk_ip_adapt_bitjoin2_q;
    wire [383:0] dsdk_ip_adapt_bitjoin7_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin10_q;
    wire [39:0] dsdk_ip_array_adapt_bitjoin13_q;
    wire [159:0] dsdk_ip_array_adapt_bitjoin17_q;
    wire [7:0] element_extension4_q;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_in_bitsignaltemp;
    wire [415:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_enable;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect32_b;
    wire [383:0] ip_dsdk_adapt_bitselect34_b;
    wire [7:0] ip_dsdk_adapt_bitselect36_b;
    wire [127:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect40_b;
    wire [31:0] ip_dsdk_adapt_bitselect42_b;
    wire [31:0] ip_dsdk_adapt_bitselect44_b;
    wire [31:0] ip_dsdk_adapt_bitselect46_b;
    wire [39:0] ip_dsdk_adapt_bitselect48_b;
    wire [7:0] ip_dsdk_adapt_bitselect50_b;
    wire [7:0] ip_dsdk_adapt_bitselect52_b;
    wire [7:0] ip_dsdk_adapt_bitselect54_b;
    wire [7:0] ip_dsdk_adapt_bitselect56_b;
    wire [7:0] ip_dsdk_adapt_bitselect58_b;
    wire [159:0] ip_dsdk_adapt_bitselect60_b;
    wire [31:0] ip_dsdk_adapt_bitselect62_b;
    wire [31:0] ip_dsdk_adapt_bitselect64_b;
    wire [31:0] ip_dsdk_adapt_bitselect66_b;
    wire [31:0] ip_dsdk_adapt_bitselect68_b;
    wire [31:0] ip_dsdk_adapt_bitselect70_b;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // dsdk_ip_array_adapt_bitjoin17(BITJOIN,19)
    assign dsdk_ip_array_adapt_bitjoin17_q = {in_data_in_15_tpl, in_data_in_14_tpl, in_data_in_13_tpl, in_data_in_12_tpl, in_data_in_11_tpl};

    // dsdk_ip_array_adapt_bitjoin13(BITJOIN,18)
    assign dsdk_ip_array_adapt_bitjoin13_q = {in_data_in_10_tpl, in_data_in_9_tpl, in_data_in_8_tpl, in_data_in_7_tpl, in_data_in_6_tpl};

    // dsdk_ip_array_adapt_bitjoin10(BITJOIN,17)
    assign dsdk_ip_array_adapt_bitjoin10_q = {in_data_in_5_tpl, in_data_in_4_tpl, in_data_in_3_tpl, in_data_in_2_tpl};

    // dsdk_ip_adapt_bitjoin7(BITJOIN,16)
    assign dsdk_ip_adapt_bitjoin7_q = {dsdk_ip_array_adapt_bitjoin17_q, c_i24_016_q, dsdk_ip_array_adapt_bitjoin13_q, dsdk_ip_array_adapt_bitjoin10_q, c_i24_016_q, in_data_in_1_tpl};

    // c_i24_016(CONSTANT,11)
    assign c_i24_016_q = $unsigned(24'b000000000000000000000000);

    // c_i7_05(CONSTANT,14)
    assign c_i7_05_q = $unsigned(7'b0000000);

    // element_extension4(BITJOIN,20)
    assign element_extension4_q = {c_i7_05_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,15)
    assign dsdk_ip_adapt_bitjoin2_q = {dsdk_ip_adapt_bitjoin7_q, c_i24_016_q, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1(EXTIFACE,21)
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_dec_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_inc_pipelined_thread = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_enable[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_out[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(6),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(416),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect34(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect34_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_data_out[415:32];

    // ip_dsdk_adapt_bitselect60(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect60_b = ip_dsdk_adapt_bitselect34_b[383:224];

    // ip_dsdk_adapt_bitselect70(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect70_b = ip_dsdk_adapt_bitselect60_b[159:128];

    // ip_dsdk_adapt_bitselect68(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect68_b = ip_dsdk_adapt_bitselect60_b[127:96];

    // ip_dsdk_adapt_bitselect66(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect66_b = ip_dsdk_adapt_bitselect60_b[95:64];

    // ip_dsdk_adapt_bitselect64(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect64_b = ip_dsdk_adapt_bitselect60_b[63:32];

    // ip_dsdk_adapt_bitselect62(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect62_b = ip_dsdk_adapt_bitselect60_b[31:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect48_b = ip_dsdk_adapt_bitselect34_b[199:160];

    // ip_dsdk_adapt_bitselect58(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect58_b = ip_dsdk_adapt_bitselect48_b[39:32];

    // ip_dsdk_adapt_bitselect56(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect56_b = ip_dsdk_adapt_bitselect48_b[31:24];

    // ip_dsdk_adapt_bitselect54(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect54_b = ip_dsdk_adapt_bitselect48_b[23:16];

    // ip_dsdk_adapt_bitselect52(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect52_b = ip_dsdk_adapt_bitselect48_b[15:8];

    // ip_dsdk_adapt_bitselect50(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect50_b = ip_dsdk_adapt_bitselect48_b[7:0];

    // ip_dsdk_adapt_bitselect38(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect38_b = ip_dsdk_adapt_bitselect34_b[159:32];

    // ip_dsdk_adapt_bitselect46(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect46_b = ip_dsdk_adapt_bitselect38_b[127:96];

    // ip_dsdk_adapt_bitselect44(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect44_b = ip_dsdk_adapt_bitselect38_b[95:64];

    // ip_dsdk_adapt_bitselect42(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect42_b = ip_dsdk_adapt_bitselect38_b[63:32];

    // ip_dsdk_adapt_bitselect40(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect40_b = ip_dsdk_adapt_bitselect38_b[31:0];

    // ip_dsdk_adapt_bitselect36(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect36_b = ip_dsdk_adapt_bitselect34_b[7:0];

    // ip_dsdk_adapt_bitselect32(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect32_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@7
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_data_out_12_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect66_b;
    assign out_data_out_14_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_data_out_15_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_valid_out;

    // sync_out(GPOUT,48)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_projections_c1_exit_projection1_stall_entry;

endmodule
