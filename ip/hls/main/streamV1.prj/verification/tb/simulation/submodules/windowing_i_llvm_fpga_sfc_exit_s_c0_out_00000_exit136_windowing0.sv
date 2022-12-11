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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing0
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit136_windowing0 (
    output wire [0:0] out_data_out_0_tpl,
    output wire [7:0] out_data_out_1_tpl,
    output wire [7:0] out_data_out_2_tpl,
    output wire [7:0] out_data_out_3_tpl,
    output wire [15:0] out_data_out_4_tpl,
    output wire [31:0] out_data_out_5_tpl,
    output wire [31:0] out_data_out_6_tpl,
    output wire [31:0] out_data_out_7_tpl,
    output wire [31:0] out_data_out_8_tpl,
    output wire [7:0] out_data_out_9_tpl,
    output wire [7:0] out_data_out_10_tpl,
    output wire [15:0] out_data_out_11_tpl,
    output wire [31:0] out_data_out_12_tpl,
    output wire [31:0] out_data_out_13_tpl,
    output wire [31:0] out_data_out_14_tpl,
    output wire [31:0] out_data_out_15_tpl,
    output wire [31:0] out_data_out_16_tpl,
    output wire [31:0] out_data_out_17_tpl,
    output wire [63:0] out_data_out_18_tpl,
    output wire [63:0] out_data_out_19_tpl,
    output wire [7:0] out_data_out_20_tpl,
    output wire [31:0] out_data_out_21_tpl,
    output wire [31:0] out_data_out_22_tpl,
    output wire [31:0] out_data_out_23_tpl,
    output wire [31:0] out_data_out_24_tpl,
    output wire [7:0] out_data_out_25_tpl,
    output wire [31:0] out_data_out_26_tpl,
    output wire [31:0] out_data_out_27_tpl,
    output wire [31:0] out_data_out_28_tpl,
    output wire [31:0] out_data_out_29_tpl,
    output wire [31:0] out_data_out_30_tpl,
    output wire [31:0] out_data_out_31_tpl,
    output wire [31:0] out_data_out_32_tpl,
    output wire [0:0] out_data_out_33_tpl,
    output wire [0:0] out_data_out_34_tpl,
    output wire [0:0] out_enable,
    output wire [0:0] out_valid_mask,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_data_in_0_tpl,
    input wire [7:0] in_data_in_1_tpl,
    input wire [7:0] in_data_in_2_tpl,
    input wire [7:0] in_data_in_3_tpl,
    input wire [15:0] in_data_in_4_tpl,
    input wire [31:0] in_data_in_5_tpl,
    input wire [31:0] in_data_in_6_tpl,
    input wire [31:0] in_data_in_7_tpl,
    input wire [31:0] in_data_in_8_tpl,
    input wire [7:0] in_data_in_9_tpl,
    input wire [7:0] in_data_in_10_tpl,
    input wire [15:0] in_data_in_11_tpl,
    input wire [31:0] in_data_in_12_tpl,
    input wire [31:0] in_data_in_13_tpl,
    input wire [31:0] in_data_in_14_tpl,
    input wire [31:0] in_data_in_15_tpl,
    input wire [31:0] in_data_in_16_tpl,
    input wire [31:0] in_data_in_17_tpl,
    input wire [63:0] in_data_in_18_tpl,
    input wire [63:0] in_data_in_19_tpl,
    input wire [7:0] in_data_in_20_tpl,
    input wire [31:0] in_data_in_21_tpl,
    input wire [31:0] in_data_in_22_tpl,
    input wire [31:0] in_data_in_23_tpl,
    input wire [31:0] in_data_in_24_tpl,
    input wire [7:0] in_data_in_25_tpl,
    input wire [31:0] in_data_in_26_tpl,
    input wire [31:0] in_data_in_27_tpl,
    input wire [31:0] in_data_in_28_tpl,
    input wire [31:0] in_data_in_29_tpl,
    input wire [31:0] in_data_in_30_tpl,
    input wire [31:0] in_data_in_31_tpl,
    input wire [31:0] in_data_in_32_tpl,
    input wire [0:0] in_data_in_33_tpl,
    input wire [0:0] in_data_in_34_tpl,
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
    wire [15:0] c_i16_019_q;
    wire [23:0] c_i24_024_q;
    wire [6:0] c_i7_044_q;
    wire [1023:0] dsdk_ip_adapt_bitjoin2_q;
    wire [447:0] dsdk_ip_adapt_bitjoin20_q;
    wire [351:0] dsdk_ip_adapt_bitjoin22_q;
    wire [511:0] dsdk_ip_adapt_bitjoin6_q;
    wire [127:0] dsdk_ip_array_adapt_bitjoin25_q;
    wire [159:0] dsdk_ip_array_adapt_bitjoin29_q;
    wire [7:0] element_extension4_q;
    wire [7:0] element_extension43_q;
    wire [7:0] element_extension47_q;
    wire [1023:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_in;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_input_accepted;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_input_accepted_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_in;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_in_bitsignaltemp;
    wire [1023:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_enable;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_entry;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_entry_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_mask;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_mask_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_out;
    wire i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_out_bitsignaltemp;
    wire [31:0] ip_dsdk_adapt_bitselect101_b;
    wire [31:0] ip_dsdk_adapt_bitselect103_b;
    wire [31:0] ip_dsdk_adapt_bitselect105_b;
    wire [31:0] ip_dsdk_adapt_bitselect107_b;
    wire [7:0] ip_dsdk_adapt_bitselect109_b;
    wire [159:0] ip_dsdk_adapt_bitselect111_b;
    wire [31:0] ip_dsdk_adapt_bitselect113_b;
    wire [31:0] ip_dsdk_adapt_bitselect115_b;
    wire [31:0] ip_dsdk_adapt_bitselect117_b;
    wire [31:0] ip_dsdk_adapt_bitselect119_b;
    wire [31:0] ip_dsdk_adapt_bitselect121_b;
    wire [31:0] ip_dsdk_adapt_bitselect123_b;
    wire [31:0] ip_dsdk_adapt_bitselect125_b;
    wire [0:0] ip_dsdk_adapt_bitselect127_b;
    wire [0:0] ip_dsdk_adapt_bitselect129_b;
    wire [0:0] ip_dsdk_adapt_bitselect51_b;
    wire [7:0] ip_dsdk_adapt_bitselect53_b;
    wire [511:0] ip_dsdk_adapt_bitselect55_b;
    wire [7:0] ip_dsdk_adapt_bitselect57_b;
    wire [7:0] ip_dsdk_adapt_bitselect59_b;
    wire [15:0] ip_dsdk_adapt_bitselect61_b;
    wire [31:0] ip_dsdk_adapt_bitselect63_b;
    wire [31:0] ip_dsdk_adapt_bitselect65_b;
    wire [31:0] ip_dsdk_adapt_bitselect67_b;
    wire [31:0] ip_dsdk_adapt_bitselect69_b;
    wire [7:0] ip_dsdk_adapt_bitselect71_b;
    wire [7:0] ip_dsdk_adapt_bitselect73_b;
    wire [15:0] ip_dsdk_adapt_bitselect75_b;
    wire [31:0] ip_dsdk_adapt_bitselect77_b;
    wire [31:0] ip_dsdk_adapt_bitselect79_b;
    wire [31:0] ip_dsdk_adapt_bitselect81_b;
    wire [31:0] ip_dsdk_adapt_bitselect83_b;
    wire [31:0] ip_dsdk_adapt_bitselect85_b;
    wire [31:0] ip_dsdk_adapt_bitselect87_b;
    wire [63:0] ip_dsdk_adapt_bitselect89_b;
    wire [63:0] ip_dsdk_adapt_bitselect91_b;
    wire [447:0] ip_dsdk_adapt_bitselect93_b;
    wire [351:0] ip_dsdk_adapt_bitselect95_b;
    wire [7:0] ip_dsdk_adapt_bitselect97_b;
    wire [127:0] ip_dsdk_adapt_bitselect99_b;
    wire [0:0] not_keep_going_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_keep_going(LOGICAL,82)
    assign not_keep_going_q = ~ (in_dec_pipelined_thread);

    // c_i24_024(CONSTANT,15)
    assign c_i24_024_q = $unsigned(24'b000000000000000000000000);

    // c_i7_044(CONSTANT,19)
    assign c_i7_044_q = $unsigned(7'b0000000);

    // element_extension47(BITJOIN,30)
    assign element_extension47_q = {c_i7_044_q, in_data_in_34_tpl};

    // element_extension43(BITJOIN,29)
    assign element_extension43_q = {c_i7_044_q, in_data_in_33_tpl};

    // dsdk_ip_array_adapt_bitjoin29(BITJOIN,27)
    assign dsdk_ip_array_adapt_bitjoin29_q = {in_data_in_30_tpl, in_data_in_29_tpl, in_data_in_28_tpl, in_data_in_27_tpl, in_data_in_26_tpl};

    // dsdk_ip_array_adapt_bitjoin25(BITJOIN,26)
    assign dsdk_ip_array_adapt_bitjoin25_q = {in_data_in_24_tpl, in_data_in_23_tpl, in_data_in_22_tpl, in_data_in_21_tpl};

    // dsdk_ip_adapt_bitjoin22(BITJOIN,24)
    assign dsdk_ip_adapt_bitjoin22_q = {dsdk_ip_array_adapt_bitjoin29_q, c_i24_024_q, in_data_in_25_tpl, dsdk_ip_array_adapt_bitjoin25_q, c_i24_024_q, in_data_in_20_tpl};

    // dsdk_ip_adapt_bitjoin20(BITJOIN,23)
    assign dsdk_ip_adapt_bitjoin20_q = {c_i24_024_q, element_extension43_q, in_data_in_32_tpl, in_data_in_31_tpl, dsdk_ip_adapt_bitjoin22_q};

    // c_i16_019(CONSTANT,14)
    assign c_i16_019_q = $unsigned(16'b0000000000000000);

    // dsdk_ip_adapt_bitjoin6(BITJOIN,25)
    assign dsdk_ip_adapt_bitjoin6_q = {in_data_in_19_tpl, in_data_in_18_tpl, in_data_in_17_tpl, in_data_in_16_tpl, in_data_in_15_tpl, in_data_in_14_tpl, in_data_in_13_tpl, in_data_in_12_tpl, in_data_in_11_tpl, in_data_in_10_tpl, in_data_in_9_tpl, in_data_in_8_tpl, in_data_in_7_tpl, in_data_in_6_tpl, in_data_in_5_tpl, in_data_in_4_tpl, in_data_in_3_tpl, in_data_in_2_tpl};

    // element_extension4(BITJOIN,28)
    assign element_extension4_q = {c_i7_044_q, in_data_in_0_tpl};

    // dsdk_ip_adapt_bitjoin2(BITJOIN,22)
    assign dsdk_ip_adapt_bitjoin2_q = {c_i24_024_q, element_extension47_q, dsdk_ip_adapt_bitjoin20_q, c_i16_019_q, dsdk_ip_adapt_bitjoin6_q, in_data_in_1_tpl, element_extension4_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1(EXTIFACE,31)
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_in = dsdk_ip_adapt_bitjoin2_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_dec_pipelined_thread = not_keep_going_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_inc_pipelined_thread = in_inc_pipelined_thread;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_input_accepted = in_input_accepted;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_in = in_stall_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_in = in_valid_in;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_input_accepted_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_input_accepted[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_in_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_in[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_enable[0] = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_enable_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_entry[0] = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_entry_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_mask[0] = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_mask_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_out[0] = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_out_bitsignaltemp;
    acl_enable_sink #(
        .PIPELINE_DEPTH(2),
        .SCHEDULEII(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(1024),
        .IP_PIPELINE_LATENCY_PLUS1(1),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1 (
        .data_in(dsdk_ip_adapt_bitjoin2_q),
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_dec_pipelined_thread_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_inc_pipelined_thread_bitsignaltemp),
        .input_accepted(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_input_accepted_bitsignaltemp),
        .stall_in(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out),
        .enable(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_enable_bitsignaltemp),
        .stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_entry_bitsignaltemp),
        .valid_mask(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_mask_bitsignaltemp),
        .valid_out(i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect129(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect129_b = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out[992:992];

    // ip_dsdk_adapt_bitselect93(BITSELECT,68)
    assign ip_dsdk_adapt_bitselect93_b = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out[991:544];

    // ip_dsdk_adapt_bitselect127(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect127_b = ip_dsdk_adapt_bitselect93_b[416:416];

    // ip_dsdk_adapt_bitselect125(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect125_b = ip_dsdk_adapt_bitselect93_b[415:384];

    // ip_dsdk_adapt_bitselect123(BITSELECT,43)
    assign ip_dsdk_adapt_bitselect123_b = ip_dsdk_adapt_bitselect93_b[383:352];

    // ip_dsdk_adapt_bitselect95(BITSELECT,69)
    assign ip_dsdk_adapt_bitselect95_b = ip_dsdk_adapt_bitselect93_b[351:0];

    // ip_dsdk_adapt_bitselect111(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect111_b = ip_dsdk_adapt_bitselect95_b[351:192];

    // ip_dsdk_adapt_bitselect121(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect121_b = ip_dsdk_adapt_bitselect111_b[159:128];

    // ip_dsdk_adapt_bitselect119(BITSELECT,41)
    assign ip_dsdk_adapt_bitselect119_b = ip_dsdk_adapt_bitselect111_b[127:96];

    // ip_dsdk_adapt_bitselect117(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect117_b = ip_dsdk_adapt_bitselect111_b[95:64];

    // ip_dsdk_adapt_bitselect115(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect115_b = ip_dsdk_adapt_bitselect111_b[63:32];

    // ip_dsdk_adapt_bitselect113(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect113_b = ip_dsdk_adapt_bitselect111_b[31:0];

    // ip_dsdk_adapt_bitselect109(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect109_b = ip_dsdk_adapt_bitselect95_b[167:160];

    // ip_dsdk_adapt_bitselect99(BITSELECT,71)
    assign ip_dsdk_adapt_bitselect99_b = ip_dsdk_adapt_bitselect95_b[159:32];

    // ip_dsdk_adapt_bitselect107(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect107_b = ip_dsdk_adapt_bitselect99_b[127:96];

    // ip_dsdk_adapt_bitselect105(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect105_b = ip_dsdk_adapt_bitselect99_b[95:64];

    // ip_dsdk_adapt_bitselect103(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect103_b = ip_dsdk_adapt_bitselect99_b[63:32];

    // ip_dsdk_adapt_bitselect101(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect101_b = ip_dsdk_adapt_bitselect99_b[31:0];

    // ip_dsdk_adapt_bitselect97(BITSELECT,70)
    assign ip_dsdk_adapt_bitselect97_b = ip_dsdk_adapt_bitselect95_b[7:0];

    // ip_dsdk_adapt_bitselect55(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out[527:16];

    // ip_dsdk_adapt_bitselect91(BITSELECT,67)
    assign ip_dsdk_adapt_bitselect91_b = ip_dsdk_adapt_bitselect55_b[511:448];

    // ip_dsdk_adapt_bitselect89(BITSELECT,66)
    assign ip_dsdk_adapt_bitselect89_b = ip_dsdk_adapt_bitselect55_b[447:384];

    // ip_dsdk_adapt_bitselect87(BITSELECT,65)
    assign ip_dsdk_adapt_bitselect87_b = ip_dsdk_adapt_bitselect55_b[383:352];

    // ip_dsdk_adapt_bitselect85(BITSELECT,64)
    assign ip_dsdk_adapt_bitselect85_b = ip_dsdk_adapt_bitselect55_b[351:320];

    // ip_dsdk_adapt_bitselect83(BITSELECT,63)
    assign ip_dsdk_adapt_bitselect83_b = ip_dsdk_adapt_bitselect55_b[319:288];

    // ip_dsdk_adapt_bitselect81(BITSELECT,62)
    assign ip_dsdk_adapt_bitselect81_b = ip_dsdk_adapt_bitselect55_b[287:256];

    // ip_dsdk_adapt_bitselect79(BITSELECT,61)
    assign ip_dsdk_adapt_bitselect79_b = ip_dsdk_adapt_bitselect55_b[255:224];

    // ip_dsdk_adapt_bitselect77(BITSELECT,60)
    assign ip_dsdk_adapt_bitselect77_b = ip_dsdk_adapt_bitselect55_b[223:192];

    // ip_dsdk_adapt_bitselect75(BITSELECT,59)
    assign ip_dsdk_adapt_bitselect75_b = ip_dsdk_adapt_bitselect55_b[191:176];

    // ip_dsdk_adapt_bitselect73(BITSELECT,58)
    assign ip_dsdk_adapt_bitselect73_b = ip_dsdk_adapt_bitselect55_b[175:168];

    // ip_dsdk_adapt_bitselect71(BITSELECT,57)
    assign ip_dsdk_adapt_bitselect71_b = ip_dsdk_adapt_bitselect55_b[167:160];

    // ip_dsdk_adapt_bitselect69(BITSELECT,56)
    assign ip_dsdk_adapt_bitselect69_b = ip_dsdk_adapt_bitselect55_b[159:128];

    // ip_dsdk_adapt_bitselect67(BITSELECT,55)
    assign ip_dsdk_adapt_bitselect67_b = ip_dsdk_adapt_bitselect55_b[127:96];

    // ip_dsdk_adapt_bitselect65(BITSELECT,54)
    assign ip_dsdk_adapt_bitselect65_b = ip_dsdk_adapt_bitselect55_b[95:64];

    // ip_dsdk_adapt_bitselect63(BITSELECT,53)
    assign ip_dsdk_adapt_bitselect63_b = ip_dsdk_adapt_bitselect55_b[63:32];

    // ip_dsdk_adapt_bitselect61(BITSELECT,52)
    assign ip_dsdk_adapt_bitselect61_b = ip_dsdk_adapt_bitselect55_b[31:16];

    // ip_dsdk_adapt_bitselect59(BITSELECT,51)
    assign ip_dsdk_adapt_bitselect59_b = ip_dsdk_adapt_bitselect55_b[15:8];

    // ip_dsdk_adapt_bitselect57(BITSELECT,50)
    assign ip_dsdk_adapt_bitselect57_b = ip_dsdk_adapt_bitselect55_b[7:0];

    // ip_dsdk_adapt_bitselect53(BITSELECT,48)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out[15:8];

    // ip_dsdk_adapt_bitselect51(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_data_out[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@2
    assign out_data_out_0_tpl = ip_dsdk_adapt_bitselect51_b;
    assign out_data_out_1_tpl = ip_dsdk_adapt_bitselect53_b;
    assign out_data_out_2_tpl = ip_dsdk_adapt_bitselect57_b;
    assign out_data_out_3_tpl = ip_dsdk_adapt_bitselect59_b;
    assign out_data_out_4_tpl = ip_dsdk_adapt_bitselect61_b;
    assign out_data_out_5_tpl = ip_dsdk_adapt_bitselect63_b;
    assign out_data_out_6_tpl = ip_dsdk_adapt_bitselect65_b;
    assign out_data_out_7_tpl = ip_dsdk_adapt_bitselect67_b;
    assign out_data_out_8_tpl = ip_dsdk_adapt_bitselect69_b;
    assign out_data_out_9_tpl = ip_dsdk_adapt_bitselect71_b;
    assign out_data_out_10_tpl = ip_dsdk_adapt_bitselect73_b;
    assign out_data_out_11_tpl = ip_dsdk_adapt_bitselect75_b;
    assign out_data_out_12_tpl = ip_dsdk_adapt_bitselect77_b;
    assign out_data_out_13_tpl = ip_dsdk_adapt_bitselect79_b;
    assign out_data_out_14_tpl = ip_dsdk_adapt_bitselect81_b;
    assign out_data_out_15_tpl = ip_dsdk_adapt_bitselect83_b;
    assign out_data_out_16_tpl = ip_dsdk_adapt_bitselect85_b;
    assign out_data_out_17_tpl = ip_dsdk_adapt_bitselect87_b;
    assign out_data_out_18_tpl = ip_dsdk_adapt_bitselect89_b;
    assign out_data_out_19_tpl = ip_dsdk_adapt_bitselect91_b;
    assign out_data_out_20_tpl = ip_dsdk_adapt_bitselect97_b;
    assign out_data_out_21_tpl = ip_dsdk_adapt_bitselect101_b;
    assign out_data_out_22_tpl = ip_dsdk_adapt_bitselect103_b;
    assign out_data_out_23_tpl = ip_dsdk_adapt_bitselect105_b;
    assign out_data_out_24_tpl = ip_dsdk_adapt_bitselect107_b;
    assign out_data_out_25_tpl = ip_dsdk_adapt_bitselect109_b;
    assign out_data_out_26_tpl = ip_dsdk_adapt_bitselect113_b;
    assign out_data_out_27_tpl = ip_dsdk_adapt_bitselect115_b;
    assign out_data_out_28_tpl = ip_dsdk_adapt_bitselect117_b;
    assign out_data_out_29_tpl = ip_dsdk_adapt_bitselect119_b;
    assign out_data_out_30_tpl = ip_dsdk_adapt_bitselect121_b;
    assign out_data_out_31_tpl = ip_dsdk_adapt_bitselect123_b;
    assign out_data_out_32_tpl = ip_dsdk_adapt_bitselect125_b;
    assign out_data_out_33_tpl = ip_dsdk_adapt_bitselect127_b;
    assign out_data_out_34_tpl = ip_dsdk_adapt_bitselect129_b;
    assign out_enable = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_enable;
    assign out_valid_mask = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_mask;
    assign out_valid_out = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_valid_out;

    // sync_out(GPOUT,84)@20000000
    assign out_stall_entry = i_llvm_fpga_sfc_exit_s_c0_out_0tuple_qeaa_xz_exit_windowings_c0_exit136_windowing1_stall_entry;

endmodule
