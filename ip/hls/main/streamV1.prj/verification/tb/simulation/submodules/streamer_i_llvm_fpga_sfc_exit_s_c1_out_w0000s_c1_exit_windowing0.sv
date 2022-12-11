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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing0
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000s_c1_exit_windowing0 (
    output wire [0:0] out_data_out_0_tpl,
    output wire [0:0] out_data_out_1_tpl,
    output wire [7:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_3_tpl,
    output wire [31:0] out_data_out_4_tpl,
    output wire [31:0] out_data_out_5_tpl,
    output wire [31:0] out_data_out_6_tpl,
    output wire [7:0] out_data_out_7_tpl,
    output wire [31:0] out_data_out_8_tpl,
    output wire [31:0] out_data_out_9_tpl,
    output wire [31:0] out_data_out_10_tpl,
    output wire [31:0] out_data_out_11_tpl,
    output wire [31:0] out_data_out_12_tpl,
    output wire [31:0] out_data_out_13_tpl,
    output wire [31:0] out_data_out_14_tpl,
    output wire [0:0] out_data_out_15_tpl,
    output wire [0:0] out_data_out_16_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [0:0] in_data_in_1_tpl,
    input wire [7:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_3_tpl,
    input wire [31:0] in_data_in_4_tpl,
    input wire [31:0] in_data_in_5_tpl,
    input wire [31:0] in_data_in_6_tpl,
    input wire [7:0] in_data_in_7_tpl,
    input wire [31:0] in_data_in_8_tpl,
    input wire [31:0] in_data_in_9_tpl,
    input wire [31:0] in_data_in_10_tpl,
    input wire [31:0] in_data_in_11_tpl,
    input wire [31:0] in_data_in_12_tpl,
    input wire [31:0] in_data_in_13_tpl,
    input wire [31:0] in_data_in_14_tpl,
    input wire [0:0] in_data_in_15_tpl,
    input wire [0:0] in_data_in_16_tpl,
    input wire [0:0] in_dec_pipelined_thread,
    input wire [0:0] in_inc_pipelined_thread,
    input wire [0:0] in_input_accepted,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_entry,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [15:0] c_i16_08_q;
    wire [23:0] c_i24_013_q;
    wire [6:0] c_i7_033_q;
    wire [351:0] dsdk_ip_adapt_bitjoin11_q;
    wire [511:0] dsdk_ip_adapt_bitjoin2_q;
    wire [447:0] dsdk_ip_adapt_bitjoin9_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin14_q;
    wire [159:0] dsdk_ip_array_adapt_bitjoin18_q;
    wire [7:0] element_extension32_q;
    wire [7:0] element_extension36_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension6_q;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_in_bitsignaltemp;
    wire [511:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_enable;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_out_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect40_b;
    wire [0:0] ip_dsdk_adapt_bitselect42_b;
    wire [447:0] ip_dsdk_adapt_bitselect44_b;
    wire [351:0] ip_dsdk_adapt_bitselect46_b;
    wire [7:0] ip_dsdk_adapt_bitselect48_b;
    wire [127:0] ip_dsdk_adapt_bitselect50_b;
    wire [31:0] ip_dsdk_adapt_bitselect52_b;
    wire [31:0] ip_dsdk_adapt_bitselect54_b;
    wire [31:0] ip_dsdk_adapt_bitselect56_b;
    wire [31:0] ip_dsdk_adapt_bitselect58_b;
    wire [7:0] ip_dsdk_adapt_bitselect60_b;
    wire [159:0] ip_dsdk_adapt_bitselect62_b;
    wire [31:0] ip_dsdk_adapt_bitselect64_b;
    wire [31:0] ip_dsdk_adapt_bitselect66_b;
    wire [31:0] ip_dsdk_adapt_bitselect68_b;
    wire [31:0] ip_dsdk_adapt_bitselect70_b;
    wire [31:0] ip_dsdk_adapt_bitselect72_b;
    wire [31:0] ip_dsdk_adapt_bitselect74_b;
    wire [31:0] ip_dsdk_adapt_bitselect76_b;
    wire [0:0] ip_dsdk_adapt_bitselect78_b;
    wire [0:0] ip_dsdk_adapt_bitselect80_b;
    wire [0:0] not_keep_going_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_keep_going(LOGICAL,54)
    assign not_keep_going_q = ~ (in_dec_pipelined_thread);

    // c_i24_013(CONSTANT,10)
    assign c_i24_013_q = $unsigned(24'b000000000000000000000000);

    // c_i7_033(CONSTANT,14)
    assign c_i7_033_q = $unsigned(7'b0000000);

    // element_extension36(BITJOIN,24)
    assign element_extension36_q = {c_i7_033_q, in_data_in_16_tpl};

    // element_extension32(BITJOIN,23)
    assign element_extension32_q = {c_i7_033_q, in_data_in_15_tpl};

    // dsdk_ip_array_adapt_bitjoin18(BITJOIN,22)
    assign dsdk_ip_array_adapt_bitjoin18_q = {in_data_in_12_tpl, in_data_in_11_tpl, in_data_in_10_tpl, in_data_in_9_tpl, in_data_in_8_tpl};

    // dsdk_ip_array_adapt_bitjoin14(BITJOIN,21)
    assign dsdk_ip_array_adapt_bitjoin14_q = {in_data_in_6_tpl, in_data_in_5_tpl, in_data_in_4_tpl, in_data_in_3_tpl};

    // dsdk_ip_adapt_bitjoin11(BITJOIN,18)
    assign dsdk_ip_adapt_bitjoin11_q = {dsdk_ip_array_adapt_bitjoin18_q, c_i24_013_q, in_data_in_7_tpl, dsdk_ip_array_adapt_bitjoin14_q, c_i24_013_q, in_data_in_2_tpl};

    // dsdk_ip_adapt_bitjoin9(BITJOIN,20)
    assign dsdk_ip_adapt_bitjoin9_q = {c_i24_013_q, element_extension32_q, in_data_in_14_tpl, in_data_in_13_tpl, dsdk_ip_adapt_bitjoin11_q};

    // c_i16_08(CONSTANT,9)
    assign c_i16_08_q = $unsigned(16'b0000000000000000);

    // element_extension6(BITJOIN,26)
    assign element_extension6_q = {c_i7_033_q, in_data_in_1_tpl};

    // element_extension4(BITJOIN,25)
    assign element_extension4_q = {c_i7_033_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,19)
    assign dsdk_ip_adapt_bitjoin2_q = {c_i24_013_q, element_extension36_q, dsdk_ip_adapt_bitjoin9_q, c_i16_08_q, element_extension6_q, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1(EXTIFACE,27)
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_dec_pipelined_thread = not_keep_going_q;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_inc_pipelined_thread = in_inc_pipelined_thread;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_enable[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_out[0] = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(2),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(512),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect80(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect80_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_out[480:480];

    // ip_dsdk_adapt_bitselect44(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect44_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_out[479:32];

    // ip_dsdk_adapt_bitselect78(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect78_b = ip_dsdk_adapt_bitselect44_b[416:416];

    // ip_dsdk_adapt_bitselect76(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect76_b = ip_dsdk_adapt_bitselect44_b[415:384];

    // ip_dsdk_adapt_bitselect74(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect74_b = ip_dsdk_adapt_bitselect44_b[383:352];

    // ip_dsdk_adapt_bitselect46(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect46_b = ip_dsdk_adapt_bitselect44_b[351:0];

    // ip_dsdk_adapt_bitselect62(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect62_b = ip_dsdk_adapt_bitselect46_b[351:192];

    // ip_dsdk_adapt_bitselect72(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect72_b = ip_dsdk_adapt_bitselect62_b[159:128];

    // ip_dsdk_adapt_bitselect70(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect70_b = ip_dsdk_adapt_bitselect62_b[127:96];

    // ip_dsdk_adapt_bitselect68(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect68_b = ip_dsdk_adapt_bitselect62_b[95:64];

    // ip_dsdk_adapt_bitselect66(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect66_b = ip_dsdk_adapt_bitselect62_b[63:32];

    // ip_dsdk_adapt_bitselect64(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect64_b = ip_dsdk_adapt_bitselect62_b[31:0];

    // ip_dsdk_adapt_bitselect60(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect60_b = ip_dsdk_adapt_bitselect46_b[167:160];

    // ip_dsdk_adapt_bitselect50(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect50_b = ip_dsdk_adapt_bitselect46_b[159:32];

    // ip_dsdk_adapt_bitselect58(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect58_b = ip_dsdk_adapt_bitselect50_b[127:96];

    // ip_dsdk_adapt_bitselect56(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect56_b = ip_dsdk_adapt_bitselect50_b[95:64];

    // ip_dsdk_adapt_bitselect54(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect54_b = ip_dsdk_adapt_bitselect50_b[63:32];

    // ip_dsdk_adapt_bitselect52(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect52_b = ip_dsdk_adapt_bitselect50_b[31:0];

    // ip_dsdk_adapt_bitselect48(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect48_b = ip_dsdk_adapt_bitselect46_b[7:0];

    // ip_dsdk_adapt_bitselect42(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect42_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_out[8:8];

    // ip_dsdk_adapt_bitselect40(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect40_b = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@3
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect66_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect68_b;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect70_b;
    assign out_data_out_12_tpl = ip_dsdk_adapt_bitselect72_b;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect74_b;
    assign out_data_out_14_tpl = ip_dsdk_adapt_bitselect76_b;
    assign out_data_out_15_tpl = ip_dsdk_adapt_bitselect78_b;
    assign out_data_out_16_tpl = ip_dsdk_adapt_bitselect80_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_valid_out;

    // sync_out(GPOUT,56)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_windowings_c1_exit_windowing1_stall_entry;

endmodule
