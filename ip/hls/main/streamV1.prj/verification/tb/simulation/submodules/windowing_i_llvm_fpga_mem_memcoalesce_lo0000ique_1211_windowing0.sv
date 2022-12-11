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

// SystemVerilog created from i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing0
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_llvm_fpga_mem_memcoalesce_lo0000ique_1211_windowing0 (
    output wire [7:0] out_o_readdata_0_0_tpl,
    output wire [7:0] out_o_readdata_1_tpl,
    output wire [15:0] out_o_readdata_2_tpl,
    output wire [31:0] out_o_readdata_0_3_tpl,
    output wire [31:0] out_o_readdata_0_4_tpl,
    output wire [31:0] out_o_readdata_0_5_tpl,
    output wire [31:0] out_o_readdata_0_6_tpl,
    output wire [7:0] out_o_readdata_0_7_tpl,
    output wire [7:0] out_o_readdata_8_tpl,
    output wire [15:0] out_o_readdata_9_tpl,
    output wire [31:0] out_o_readdata_0_10_tpl,
    output wire [31:0] out_o_readdata_0_11_tpl,
    output wire [31:0] out_o_readdata_0_12_tpl,
    output wire [31:0] out_o_readdata_0_13_tpl,
    output wire [31:0] out_o_readdata_0_14_tpl,
    output wire [31:0] out_o_readdata_15_tpl,
    output wire [63:0] out_o_readdata_16_tpl,
    output wire [63:0] out_o_readdata_17_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write,
    output wire [511:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata,
    input wire [0:0] in_flush,
    input wire [511:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack,
    output wire [31:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_0_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_3_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_4_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_5_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_6_tpl;
    wire [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_7_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_10_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_11_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_12_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_13_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_14_tpl;
    wire [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_1_tpl;
    wire [15:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_2_tpl;
    wire [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_8_tpl;
    wire [15:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_9_tpl;
    wire [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_15_tpl;
    wire [63:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_16_tpl;
    wire [63:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_17_tpl;
    wire [0:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_stall_out;
    wire [0:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_valid_out;
    wire [31:0] addr_trunc_in;
    wire [31:0] addr_trunc_q;
    wire [31:0] c_i32_03_q;
    wire [2:0] c_i3_062_q;
    wire [511:0] c_i512_057_q;
    wire [63:0] c_i64_058_q;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_bitwiseor;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_byteenable;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_valid_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_size;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_burstcount;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_burstcount_bitsignaltemp;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_write_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_input_fifo_depth;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_profile_bw_incr;
    wire [15:0] ip_dsdk_adapt_bitselect10_b;
    wire [31:0] ip_dsdk_adapt_bitselect12_b;
    wire [31:0] ip_dsdk_adapt_bitselect15_b;
    wire [31:0] ip_dsdk_adapt_bitselect18_b;
    wire [31:0] ip_dsdk_adapt_bitselect21_b;
    wire [7:0] ip_dsdk_adapt_bitselect24_b;
    wire [7:0] ip_dsdk_adapt_bitselect27_b;
    wire [15:0] ip_dsdk_adapt_bitselect29_b;
    wire [31:0] ip_dsdk_adapt_bitselect31_b;
    wire [31:0] ip_dsdk_adapt_bitselect35_b;
    wire [31:0] ip_dsdk_adapt_bitselect39_b;
    wire [31:0] ip_dsdk_adapt_bitselect43_b;
    wire [31:0] ip_dsdk_adapt_bitselect47_b;
    wire [7:0] ip_dsdk_adapt_bitselect5_b;
    wire [31:0] ip_dsdk_adapt_bitselect51_b;
    wire [63:0] ip_dsdk_adapt_bitselect53_b;
    wire [63:0] ip_dsdk_adapt_bitselect55_b;
    wire [7:0] ip_dsdk_adapt_bitselect8_b;


    // c_i512_057(CONSTANT,17)
    assign c_i512_057_q = $unsigned(512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_058(CONSTANT,19)
    assign c_i64_058_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_03(CONSTANT,13)
    assign c_i32_03_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_062(CONSTANT,16)
    assign c_i3_062_q = $unsigned(3'b000);

    // addr_trunc(ROUND,10)
    assign addr_trunc_in = in_i_address[31:0];
    assign addr_trunc_q = addr_trunc_in[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1(EXTIFACE,20)
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdata = in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdatavalid = in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_waitrequest = in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writeack = in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_address = addr_trunc_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_atomic_op = c_i3_062_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_bitwiseor = c_i32_03_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_byteenable = c_i64_058_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_cmpdata = c_i512_057_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_predicate = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_stall = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_stall_out;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_writedata = c_i512_057_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_base_addr = c_i32_03_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_size = c_i32_03_q;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_burstcount[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(7),
        .ADDRSPACE(64),
        .ALIGNMENT_BYTES(64),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(32),
        .BURSTCOUNT_WIDTH(1),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(0),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(7),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(0),
        .MWIDTH_BYTES(64),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(1),
        .STALLFREE(0),
        .STYLE("PIPELINED"),
        .SYNCHRONIZE_RESET(0),
        .USECACHING(0),
        .USEINPUTFIFO(1),
        .USEOUTPUTFIFO(1),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(0),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(64),
        .WRITEDATAWIDTH_BYTES(64)
    ) thei_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1 (
        .avm_readdata(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_flush_bitsignaltemp),
        .i_address(addr_trunc_q),
        .i_atomic_op(c_i3_062_q),
        .i_bitwiseor(c_i32_03_q),
        .i_byteenable(c_i64_058_q),
        .i_cmpdata(c_i512_057_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_i_valid_bitsignaltemp),
        .i_writedata(c_i512_057_q),
        .stream_base_addr(c_i32_03_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_stream_reset_bitsignaltemp),
        .stream_size(c_i32_03_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // ip_dsdk_adapt_bitselect55(BITSELECT,47)
    assign ip_dsdk_adapt_bitselect55_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[511:448];

    // ip_dsdk_adapt_bitselect53(BITSELECT,46)
    assign ip_dsdk_adapt_bitselect53_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[447:384];

    // ip_dsdk_adapt_bitselect51(BITSELECT,45)
    assign ip_dsdk_adapt_bitselect51_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[383:352];

    // ip_dsdk_adapt_bitselect29(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect29_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[191:176];

    // ip_dsdk_adapt_bitselect27(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect27_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[175:168];

    // ip_dsdk_adapt_bitselect10(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect10_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[31:16];

    // ip_dsdk_adapt_bitselect8(BITSELECT,49)
    assign ip_dsdk_adapt_bitselect8_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[15:8];

    // ip_dsdk_adapt_bitselect47(BITSELECT,42)
    assign ip_dsdk_adapt_bitselect47_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[351:320];

    // ip_dsdk_adapt_bitselect43(BITSELECT,40)
    assign ip_dsdk_adapt_bitselect43_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[319:288];

    // ip_dsdk_adapt_bitselect39(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect39_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[287:256];

    // ip_dsdk_adapt_bitselect35(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect35_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[255:224];

    // ip_dsdk_adapt_bitselect31(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect31_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[223:192];

    // ip_dsdk_adapt_bitselect24(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect24_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[167:160];

    // ip_dsdk_adapt_bitselect21(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect21_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[159:128];

    // ip_dsdk_adapt_bitselect18(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[127:96];

    // ip_dsdk_adapt_bitselect15(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect15_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[95:64];

    // ip_dsdk_adapt_bitselect12(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect12_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[63:32];

    // ip_dsdk_adapt_bitselect5(BITSELECT,44)
    assign ip_dsdk_adapt_bitselect5_b = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_readdata[7:0];

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x(BLACKBOX,3)@19999999
    // in in_stall_in@20000000
    // out out_data_out_0_0_tpl@20000000
    // out out_data_out_0_3_tpl@20000000
    // out out_data_out_0_4_tpl@20000000
    // out out_data_out_0_5_tpl@20000000
    // out out_data_out_0_6_tpl@20000000
    // out out_data_out_0_7_tpl@20000000
    // out out_data_out_0_10_tpl@20000000
    // out out_data_out_0_11_tpl@20000000
    // out out_data_out_0_12_tpl@20000000
    // out out_data_out_0_13_tpl@20000000
    // out out_data_out_0_14_tpl@20000000
    // out out_data_out_1_tpl@20000000
    // out out_data_out_2_tpl@20000000
    // out out_data_out_8_tpl@20000000
    // out out_data_out_9_tpl@20000000
    // out out_data_out_15_tpl@20000000
    // out out_data_out_16_tpl@20000000
    // out out_data_out_17_tpl@20000000
    // out out_stall_out@20000000
    // out out_valid_out@20000000
    windowing_readdata_reg_memcoalesce_load_0000ique_1211_windowing0 thereaddata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x (
        .in_data_in_0_0_tpl(ip_dsdk_adapt_bitselect5_b),
        .in_data_in_0_3_tpl(ip_dsdk_adapt_bitselect12_b),
        .in_data_in_0_4_tpl(ip_dsdk_adapt_bitselect15_b),
        .in_data_in_0_5_tpl(ip_dsdk_adapt_bitselect18_b),
        .in_data_in_0_6_tpl(ip_dsdk_adapt_bitselect21_b),
        .in_data_in_0_7_tpl(ip_dsdk_adapt_bitselect24_b),
        .in_data_in_0_10_tpl(ip_dsdk_adapt_bitselect31_b),
        .in_data_in_0_11_tpl(ip_dsdk_adapt_bitselect35_b),
        .in_data_in_0_12_tpl(ip_dsdk_adapt_bitselect39_b),
        .in_data_in_0_13_tpl(ip_dsdk_adapt_bitselect43_b),
        .in_data_in_0_14_tpl(ip_dsdk_adapt_bitselect47_b),
        .in_data_in_1_tpl(ip_dsdk_adapt_bitselect8_b),
        .in_data_in_2_tpl(ip_dsdk_adapt_bitselect10_b),
        .in_data_in_8_tpl(ip_dsdk_adapt_bitselect27_b),
        .in_data_in_9_tpl(ip_dsdk_adapt_bitselect29_b),
        .in_data_in_15_tpl(ip_dsdk_adapt_bitselect51_b),
        .in_data_in_16_tpl(ip_dsdk_adapt_bitselect53_b),
        .in_data_in_17_tpl(ip_dsdk_adapt_bitselect55_b),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_valid),
        .out_data_out_0_0_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_0_tpl),
        .out_data_out_0_3_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_3_tpl),
        .out_data_out_0_4_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_4_tpl),
        .out_data_out_0_5_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_5_tpl),
        .out_data_out_0_6_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_6_tpl),
        .out_data_out_0_7_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_7_tpl),
        .out_data_out_0_10_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_10_tpl),
        .out_data_out_0_11_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_11_tpl),
        .out_data_out_0_12_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_12_tpl),
        .out_data_out_0_13_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_13_tpl),
        .out_data_out_0_14_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_14_tpl),
        .out_data_out_1_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_2_tpl),
        .out_data_out_8_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_9_tpl),
        .out_data_out_15_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_17_tpl),
        .out_stall_out(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_stall_out),
        .out_valid_out(readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_aunroll_vunroll_x(GPOUT,2)@24
    assign out_o_readdata_0_0_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_0_tpl;
    assign out_o_readdata_1_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_1_tpl;
    assign out_o_readdata_2_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_2_tpl;
    assign out_o_readdata_0_3_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_3_tpl;
    assign out_o_readdata_0_4_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_4_tpl;
    assign out_o_readdata_0_5_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_5_tpl;
    assign out_o_readdata_0_6_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_6_tpl;
    assign out_o_readdata_0_7_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_7_tpl;
    assign out_o_readdata_8_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_8_tpl;
    assign out_o_readdata_9_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_9_tpl;
    assign out_o_readdata_0_10_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_10_tpl;
    assign out_o_readdata_0_11_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_11_tpl;
    assign out_o_readdata_0_12_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_12_tpl;
    assign out_o_readdata_0_13_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_13_tpl;
    assign out_o_readdata_0_14_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_0_14_tpl;
    assign out_o_readdata_15_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_15_tpl;
    assign out_o_readdata_16_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_16_tpl;
    assign out_o_readdata_17_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_data_out_17_tpl;
    assign out_o_valid = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_aunroll_vunroll_x_out_valid_out;

    // dupName_0_regfree_osync_x(GPOUT,4)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,5)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,6)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,7)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,8)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,9)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_writedata;

    // regfree_osync(GPOUT,67)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_avm_address;

    // sync_out(GPOUT,69)@20000000
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing1_o_stall;

endmodule
