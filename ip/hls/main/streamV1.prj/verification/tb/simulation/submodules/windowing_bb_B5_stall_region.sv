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

// SystemVerilog created from bb_windowing_B5_stall_region
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B5_stall_region (
    input wire [511:0] in_memdep_19_windowing_avm_readdata,
    input wire [0:0] in_memdep_19_windowing_avm_writeack,
    input wire [0:0] in_memdep_19_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_19_windowing_avm_readdatavalid,
    output wire [31:0] out_memdep_19_windowing_avm_address,
    output wire [0:0] out_memdep_19_windowing_avm_enable,
    output wire [0:0] out_memdep_19_windowing_avm_read,
    output wire [0:0] out_memdep_19_windowing_avm_write,
    output wire [511:0] out_memdep_19_windowing_avm_writedata,
    output wire [63:0] out_memdep_19_windowing_avm_byteenable,
    output wire [0:0] out_memdep_19_windowing_avm_burstcount,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_call_aggregation_i_fifoready,
    output wire [447:0] out_iowr_bl_call_aggregation_o_fifodata,
    output wire [0:0] out_iowr_bl_call_aggregation_o_fifovalid,
    input wire [351:0] in_iord_bl_return_aggregation_i_fifodata,
    input wire [0:0] in_iord_bl_return_aggregation_i_fifovalid,
    output wire [0:0] out_iord_bl_return_aggregation_o_fifoready,
    output wire [0:0] out_iord_bl_return_aggregation_o_fifoalmost_full,
    input wire [511:0] in_memdep_310_windowing_avm_readdata,
    input wire [0:0] in_memdep_310_windowing_avm_writeack,
    input wire [0:0] in_memdep_310_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_310_windowing_avm_readdatavalid,
    output wire [31:0] out_memdep_310_windowing_avm_address,
    output wire [0:0] out_memdep_310_windowing_avm_enable,
    output wire [0:0] out_memdep_310_windowing_avm_read,
    output wire [0:0] out_memdep_310_windowing_avm_write,
    output wire [511:0] out_memdep_310_windowing_avm_writedata,
    output wire [63:0] out_memdep_310_windowing_avm_byteenable,
    output wire [0:0] out_memdep_310_windowing_avm_burstcount,
    input wire [511:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write,
    output wire [511:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata,
    output wire [63:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount,
    input wire [0:0] in_iowr_bl_stream_out_tuple_i_fifoready,
    output wire [351:0] out_iowr_bl_stream_out_tuple_o_fifodata,
    output wire [0:0] out_iowr_bl_stream_out_tuple_o_fifovalid,
    input wire [0:0] in_iowr_bl_return_windowing_i_fifoready,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifovalid,
    input wire [351:0] in_iord_bl_stream_in_tuple_i_fifodata,
    input wire [0:0] in_iord_bl_stream_in_tuple_i_fifovalid,
    output wire [0:0] out_iord_bl_stream_in_tuple_o_fifoready,
    output wire [0:0] out_iord_bl_stream_in_tuple_o_fifoalmost_full,
    output wire [0:0] out_feedback_out_10,
    output wire [0:0] out_feedback_out_11,
    output wire [0:0] out_feedback_out_12,
    output wire [0:0] out_feedback_out_9,
    input wire [0:0] in_feedback_stall_in_10,
    input wire [0:0] in_feedback_stall_in_11,
    input wire [0:0] in_feedback_stall_in_12,
    input wire [0:0] in_feedback_stall_in_9,
    output wire [0:0] out_feedback_valid_out_10,
    output wire [0:0] out_feedback_valid_out_11,
    output wire [0:0] out_feedback_valid_out_12,
    output wire [0:0] out_feedback_valid_out_9,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe61238,
    input wire [0:0] in_c0_exe71249,
    input wire [0:0] in_c0_exe812510,
    input wire [0:0] in_c0_exe912611,
    input wire [0:0] in_memdep_1412,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_3_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_4_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_5_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_6_tpl;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_7_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_10_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_11_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_12_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_13_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_14_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_valid;
    wire [7:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_10_tpl;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_iord_bl_return_aggregation_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_iord_bl_return_aggregation_o_fifoready;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_valid;
    wire [7:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoalmost_full;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoready;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_valid;
    wire [447:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifodata;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifovalid;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_valid;
    wire [351:0] i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifodata;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifovalid;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_valid;
    wire [15:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_q;
    wire [15:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [31:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_writeack;
    wire [0:0] i_memcoalesce_load_windowing_fpgaunique_1211_toi1_intcast_windowing42_sel_x_b;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_1_tpl;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_2_tpl;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_3_tpl;
    wire [15:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_4_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_5_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_6_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_7_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_8_tpl;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_9_tpl;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_10_tpl;
    wire [15:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_11_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_12_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_13_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_14_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_15_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_16_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_17_tpl;
    wire [63:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_18_tpl;
    wire [63:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_19_tpl;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_20_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_21_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_22_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_23_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_24_tpl;
    wire [7:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_25_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_26_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_27_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_28_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_29_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_30_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_31_tpl;
    wire [31:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_32_tpl;
    wire [0:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_33_tpl;
    wire [0:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_34_tpl;
    wire [0:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_o_valid;
    wire [0:0] i_toi1_intcast_windowing24_sel_x_b;
    wire [15:0] c_i16_069_q;
    wire [31:0] c_i32_063_q;
    wire [63:0] c_i64_070_q;
    wire [63:0] c_i64_462970041693686988867_q;
    wire [7:0] c_i8_061_q;
    wire [7:0] c_i8_29_q;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_iowr_bl_return_windowing_o_fifovalid;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_o_stall;
    wire [0:0] i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_o_valid;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_feedback_valid_out_12;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_valid_out;
    wire [0:0] i_memdep_310_or_windowing28_q;
    wire [0:0] i_memdep_phi23_or29_windowing11_q;
    wire [0:0] i_toi1_intcast_or_windowing56_q;
    wire [8:0] join_for_coalesced_delay_0_q;
    wire [7:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] redist0_stall_entry_o5_16_fifo_valid_in;
    wire redist0_stall_entry_o5_16_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o5_16_fifo_stall_in;
    wire redist0_stall_entry_o5_16_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o5_16_fifo_data_in;
    wire [0:0] redist0_stall_entry_o5_16_fifo_valid_out;
    wire redist0_stall_entry_o5_16_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o5_16_fifo_stall_out;
    wire redist0_stall_entry_o5_16_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_stall_entry_o5_16_fifo_data_out;
    wire [0:0] redist1_stall_entry_o6_9_fifo_valid_in;
    wire redist1_stall_entry_o6_9_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_stall_in;
    wire redist1_stall_entry_o6_9_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_data_in;
    wire [0:0] redist1_stall_entry_o6_9_fifo_valid_out;
    wire redist1_stall_entry_o6_9_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_stall_out;
    wire redist1_stall_entry_o6_9_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_stall_entry_o6_9_fifo_data_out;
    reg [0:0] redist2_stall_entry_o7_2_0_q;
    reg [0:0] redist2_stall_entry_o7_2_1_q;
    wire [0:0] redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_in;
    wire redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_in;
    wire redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_data_in;
    wire [0:0] redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_out;
    wire redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_out;
    wire redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_data_out;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_q;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_q;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_q;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_q;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_q;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_q;
    reg [0:0] redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_q;
    reg [8:0] coalesced_delay_0_0_q;
    reg [8:0] coalesced_delay_0_1_q;
    reg [8:0] coalesced_delay_0_2_q;
    reg [8:0] coalesced_delay_0_3_q;
    reg [8:0] coalesced_delay_0_4_q;
    reg [8:0] coalesced_delay_0_5_q;
    reg [8:0] coalesced_delay_0_6_q;
    wire [303:0] bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_b;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_c;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_d;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_e;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_f;
    wire [7:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_g;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_h;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_i;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_j;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_k;
    wire [31:0] bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_l;
    wire [303:0] bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_l;
    wire [303:0] bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_g;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_h;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_i;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_j;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_l;
    wire [0:0] bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_b;
    wire [0:0] bubble_join_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_b;
    wire [889:0] bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_b;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_c;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_d;
    wire [15:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_i;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_j;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_k;
    wire [15:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_r;
    wire [63:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_s;
    wire [63:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_t;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_u;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_v;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_w;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_x;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_y;
    wire [7:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_z;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_aa;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_bb;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_cc;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_dd;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ee;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ff;
    wire [31:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_gg;
    wire [0:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_hh;
    wire [0:0] bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ii;
    wire [4:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_join_redist0_stall_entry_o5_16_fifo_q;
    wire [0:0] bubble_select_redist0_stall_entry_o5_16_fifo_b;
    wire [0:0] bubble_join_redist1_stall_entry_o6_9_fifo_q;
    wire [0:0] bubble_select_redist1_stall_entry_o6_9_fifo_b;
    wire [0:0] bubble_join_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_q;
    wire [0:0] bubble_select_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V2;
    wire [0:0] SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid;
    wire [0:0] SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_and0;
    wire [0:0] SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall;
    wire [0:0] SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_and0;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_V0;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V2;
    wire [0:0] SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_out_redist0_stall_entry_o5_16_fifo_wireValid;
    wire [0:0] SE_out_redist0_stall_entry_o5_16_fifo_and0;
    wire [0:0] SE_out_redist0_stall_entry_o5_16_fifo_backStall;
    wire [0:0] SE_out_redist0_stall_entry_o5_16_fifo_V0;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_wireValid;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_backStall;
    wire [0:0] SE_out_redist1_stall_entry_o6_9_fifo_V0;
    reg [0:0] SE_redist2_stall_entry_o7_2_0_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_2_0_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_2_0_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_2_0_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_2_0_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_2_0_V0;
    reg [0:0] SE_redist2_stall_entry_o7_2_1_R_v_0;
    wire [0:0] SE_redist2_stall_entry_o7_2_1_v_s_0;
    wire [0:0] SE_redist2_stall_entry_o7_2_1_s_tv_0;
    wire [0:0] SE_redist2_stall_entry_o7_2_1_backEN;
    wire [0:0] SE_redist2_stall_entry_o7_2_1_backStall;
    wire [0:0] SE_redist2_stall_entry_o7_2_1_V0;
    wire [0:0] SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_and0;
    wire [0:0] SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_backStall;
    wire [0:0] SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_V0;
    reg [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_v_s_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_s_tv_0;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backEN;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backStall;
    wire [0:0] SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_1;
    wire [0:0] SE_coalesced_delay_0_6_v_s_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_6_backEN;
    wire [0:0] SE_coalesced_delay_0_6_or0;
    wire [0:0] SE_coalesced_delay_0_6_backStall;
    wire [0:0] SE_coalesced_delay_0_6_V0;
    wire [0:0] SE_coalesced_delay_0_6_V1;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [8:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [8:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [8:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [8:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_3_r_valid;
    reg [8:0] SR_SE_coalesced_delay_0_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_3_V;
    wire [8:0] SR_SE_coalesced_delay_0_3_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [8:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [8:0] SR_SE_coalesced_delay_0_4_D0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [8:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [8:0] SR_SE_coalesced_delay_0_5_D0;
    wire [0:0] SR_SE_coalesced_delay_0_6_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_6_r_valid;
    reg [8:0] SR_SE_coalesced_delay_0_6_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_6_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_6_V;
    wire [8:0] SR_SE_coalesced_delay_0_6_D0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_i_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_data0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backStall;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_V;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_D0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_i_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_data0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backStall;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_V;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_D0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_i_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_data0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backStall;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_V;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_D0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_i_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_data0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backStall;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_V;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_D0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_i_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_data0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backStall;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_V;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_D0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_i_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid;
    reg [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_data0;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backStall;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_V;
    wire [0:0] SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_D0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_0_i_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_2_0_r_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_2_0_r_data0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_0_backStall;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_0_V;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_0_D0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_1_i_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_2_1_r_valid;
    reg [0:0] SR_SE_redist2_stall_entry_o7_2_1_r_data0;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_1_backStall;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_1_V;
    wire [0:0] SR_SE_redist2_stall_entry_o7_2_1_D0;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_i_valid;
    reg [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_and0;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_and1;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_and2;
    reg [7:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data0;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data1;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data2;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data3;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data4;
    reg [7:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data5;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data6;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data7;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data8;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data9;
    reg [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data10;
    reg [63:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data11;
    reg [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data12;
    reg [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data13;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_backStall;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_V;
    wire [7:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D0;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D1;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D2;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D3;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D4;
    wire [7:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D5;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D6;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D7;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D8;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D9;
    wire [31:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D10;
    wire [63:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D11;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D12;
    wire [0:0] SR_SE_out_redist1_stall_entry_o6_9_fifo_D13;


    // join_for_coalesced_delay_0(BITJOIN,108)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ii, bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_b};

    // coalesced_delay_0_0(REG,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // coalesced_delay_0_2(REG,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // coalesced_delay_0_3(REG,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_coalesced_delay_0_3_D0);
        end
    end

    // coalesced_delay_0_4(REG,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // coalesced_delay_0_5(REG,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // coalesced_delay_0_6(REG,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(9'b000000000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(SR_SE_coalesced_delay_0_6_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,109)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[7:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[8:8]);

    // bubble_join_redist1_stall_entry_o6_9_fifo(BITJOIN,163)
    assign bubble_join_redist1_stall_entry_o6_9_fifo_q = redist1_stall_entry_o6_9_fifo_data_out;

    // bubble_select_redist1_stall_entry_o6_9_fifo(BITSELECT,164)
    assign bubble_select_redist1_stall_entry_o6_9_fifo_b = $unsigned(bubble_join_redist1_stall_entry_o6_9_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x(BITJOIN,146)
    assign bubble_join_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_q = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x(BITSELECT,147)
    assign bubble_select_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_q[0:0]);

    // i_memdep_phi23_or29_windowing11(LOGICAL,63)@9
    assign i_memdep_phi23_or29_windowing11_q = bubble_select_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_b | bubble_select_redist1_stall_entry_o6_9_fifo_b;

    // c_i8_29(CONSTANT,39)
    assign c_i8_29_q = $unsigned(8'b00000010);

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,23)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_29_q, sel_for_coalesced_delay_0_b};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x(CHOOSEBITS,22)@9
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_a[0:0]};

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6(STALLENABLE,219)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_s_tv_0 = SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backEN & SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_V;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_v_s_0;
            end

        end
    end

    // bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(BITJOIN,140)
    assign bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_q = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(BITSELECT,141)
    assign bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_q[0:0]);

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_q <= $unsigned(bubble_select_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_b);
        end
    end

    // SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(STALLENABLE,175)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_V0 = SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backStall | ~ (SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_wireValid = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_valid;

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0(STALLENABLE,213)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_s_tv_0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backEN & SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1(STALLREG,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid <= 1'b0;
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backStall & (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid | SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_i_valid);

            if (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_data0 <= $unsigned(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_i_valid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backStall = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid | ~ (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_i_valid);

    // Valid
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_V = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid : SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_i_valid;

    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_D0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_r_data0 : redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_0_q;

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1(REG,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_q <= $unsigned(SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_D0);
        end
    end

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1(STALLENABLE,214)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_s_tv_0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backEN & SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_V;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2(STALLREG,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid <= 1'b0;
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backStall & (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid | SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_i_valid);

            if (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_data0 <= $unsigned(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_i_valid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backStall = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid | ~ (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_i_valid);

    // Valid
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_V = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid : SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_i_valid;

    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_D0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_r_data0 : redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_1_q;

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2(REG,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_q <= $unsigned(SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_D0);
        end
    end

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2(STALLENABLE,215)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_s_tv_0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backEN & SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_V;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3(STALLREG,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid <= 1'b0;
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backStall & (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid | SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_i_valid);

            if (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_data0 <= $unsigned(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_i_valid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backStall = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid | ~ (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_i_valid);

    // Valid
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_V = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid : SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_i_valid;

    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_D0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_r_data0 : redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_2_q;

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3(REG,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_q <= $unsigned(SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_D0);
        end
    end

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3(STALLENABLE,216)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_s_tv_0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backEN & SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_V;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4(STALLREG,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid <= 1'b0;
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backStall & (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid | SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_i_valid);

            if (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_data0 <= $unsigned(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_i_valid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backStall = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid | ~ (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_i_valid);

    // Valid
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_V = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid : SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_i_valid;

    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_D0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_r_data0 : redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_3_q;

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4(REG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_q <= $unsigned(SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_D0);
        end
    end

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4(STALLENABLE,217)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_s_tv_0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backEN & SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_V;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5(STALLREG,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid <= 1'b0;
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backStall & (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid | SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_i_valid);

            if (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_data0 <= $unsigned(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_i_valid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backStall = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid | ~ (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_i_valid);

    // Valid
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_V = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid : SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_i_valid;

    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_D0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_r_data0 : redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_4_q;

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5(REG,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_q <= $unsigned(SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_D0);
        end
    end

    // SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5(STALLENABLE,218)
    // Valid signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_V0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_s_tv_0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backStall & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backEN = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_v_s_0 = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backEN & SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_V;
    // Backward Stall generation
    assign SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backStall = ~ (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_backEN == 1'b0)
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0 & SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_s_tv_0;
            end
            else
            begin
                SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_R_v_0 <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6(STALLREG,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid <= 1'b0;
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid <= SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backStall & (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid | SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_i_valid);

            if (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_data0 <= $unsigned(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_i_valid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backStall = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid | ~ (SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_i_valid);

    // Valid
    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_V = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid : SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_i_valid;

    assign SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_D0 = SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_valid == 1'b1 ? SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_r_data0 : redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_5_q;

    // redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6(REG,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_backEN == 1'b1)
        begin
            redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_q <= $unsigned(SR_SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_D0);
        end
    end

    // i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x(BLACKBOX,18)@9
    // in in_i_stall@20000000
    // out out_iord_bl_return_aggregation_o_fifoalmost_full@20000000
    // out out_iord_bl_return_aggregation_o_fifoready@20000000
    // out out_o_stall@20000000
    windowing_i_iord_bl_return_aggregation_unnamed_4_windowing0 thei_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x (
        .in_c0_exe4140(sel_for_coalesced_delay_0_c),
        .in_i_dependence(redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_q),
        .in_i_stall(SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall),
        .in_i_valid(SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V0),
        .in_iord_bl_return_aggregation_i_fifodata(in_iord_bl_return_aggregation_i_fifodata),
        .in_iord_bl_return_aggregation_i_fifovalid(in_iord_bl_return_aggregation_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_10_tpl),
        .out_iord_bl_return_aggregation_o_fifoalmost_full(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_iord_bl_return_aggregation_o_fifoalmost_full),
        .out_iord_bl_return_aggregation_o_fifoready(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_iord_bl_return_aggregation_o_fifoready),
        .out_o_stall(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x(BITJOIN,134)
    assign bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q = {i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_10_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_9_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_8_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_7_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_6_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_5_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_4_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_3_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_2_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_1_tpl, i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x(BITSELECT,135)
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[175:144]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_q[303:272]);

    // i_toi1_intcast_windowing24_sel_x(BITSELECT,29)@9
    assign i_toi1_intcast_windowing24_sel_x_b = bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_b[0:0];

    // SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing57(STALLENABLE,189)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_wireValid = i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_o_valid;

    // bubble_join_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo(BITJOIN,166)
    assign bubble_join_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_q = redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_data_out;

    // bubble_select_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo(BITSELECT,167)
    assign bubble_select_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_b = $unsigned(bubble_join_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_q[0:0]);

    // bubble_join_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x(BITJOIN,143)
    assign bubble_join_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_q = i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x(BITSELECT,144)
    assign bubble_select_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_q[0:0]);

    // i_toi1_intcast_or_windowing56(LOGICAL,64)@24
    assign i_toi1_intcast_or_windowing56_q = bubble_select_i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_b | bubble_select_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_b;

    // i_iowr_bl_return_windowing_unnamed_windowing5_windowing57(BLACKBOX,56)@24
    // in in_i_stall@20000000
    // out out_iowr_bl_return_windowing_o_fifodata@20000000
    // out out_iowr_bl_return_windowing_o_fifovalid@20000000
    // out out_o_stall@20000000
    windowing_i_iowr_bl_return_unnamed_windowing5_windowing0 thei_iowr_bl_return_windowing_unnamed_windowing5_windowing57 (
        .in_i_data(GND_q),
        .in_i_dependence(i_toi1_intcast_or_windowing56_q),
        .in_i_stall(SE_out_i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_backStall),
        .in_i_valid(SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_V0),
        .in_iowr_bl_return_windowing_i_fifoready(in_iowr_bl_return_windowing_i_fifoready),
        .out_iowr_bl_return_windowing_o_fifodata(i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_iowr_bl_return_windowing_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_o_stall),
        .out_o_valid(i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44(STALLENABLE,197)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_wireValid = i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_valid_out;

    // i_memcoalesce_load_windowing_fpgaunique_1211_toi1_intcast_windowing42_sel_x(BITSELECT,27)@24
    assign i_memcoalesce_load_windowing_fpgaunique_1211_toi1_intcast_windowing42_sel_x_b = bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_b[0:0];

    // i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44(BLACKBOX,60)@24
    // in in_stall_in@20000000
    // out out_data_out@25
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@25
    windowing_i_llvm_fpga_push_i1_memdep_phi23_push12_0 thei_llvm_fpga_push_i1_memdep_phi23_push12_windowing44 (
        .in_data_in(i_memcoalesce_load_windowing_fpgaunique_1211_toi1_intcast_windowing42_sel_x_b),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V2),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_feedback_valid_out_12),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27(STALLENABLE,195)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_wireValid = i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x(BITJOIN,149)
    assign bubble_join_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_q = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x(BITSELECT,150)
    assign bubble_select_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27(BLACKBOX,59)@16
    // in in_stall_in@20000000
    // out out_data_out@17
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@17
    windowing_i_llvm_fpga_push_i1_memdep_phi18_push11_0 thei_llvm_fpga_push_i1_memdep_phi18_push11_windowing27 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_b),
        .in_feedback_stall_in_11(in_feedback_stall_in_11),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_feedback_valid_out_11),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_070(CONSTANT,35)
    assign c_i64_070_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_063(CONSTANT,34)
    assign c_i32_063_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i16_069(CONSTANT,31)
    assign c_i16_069_q = $unsigned(16'b0000000000000000);

    // c_i8_061(CONSTANT,38)
    assign c_i8_061_q = $unsigned(8'b00000000);

    // i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x(BLACKBOX,26)@9
    // in in_i_stall@20000000
    // out out_memdep_310_windowing_avm_address@20000000
    // out out_memdep_310_windowing_avm_burstcount@20000000
    // out out_memdep_310_windowing_avm_byteenable@20000000
    // out out_memdep_310_windowing_avm_enable@20000000
    // out out_memdep_310_windowing_avm_read@20000000
    // out out_memdep_310_windowing_avm_write@20000000
    // out out_memdep_310_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@16
    // out out_o_writeack@16
    windowing_i_llvm_fpga_mem_memdep_310_0 thei_llvm_fpga_mem_memdep_310_windowing26_aunroll_x (
        .in_i_writedata_0_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D0),
        .in_i_writedata_1_tpl(c_i8_061_q),
        .in_i_writedata_2_tpl(c_i16_069_q),
        .in_i_writedata_3_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D1),
        .in_i_writedata_4_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D2),
        .in_i_writedata_5_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D3),
        .in_i_writedata_6_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D4),
        .in_i_writedata_7_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D5),
        .in_i_writedata_8_tpl(c_i8_061_q),
        .in_i_writedata_9_tpl(c_i16_069_q),
        .in_i_writedata_10_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D6),
        .in_i_writedata_11_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D7),
        .in_i_writedata_12_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D8),
        .in_i_writedata_13_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D9),
        .in_i_writedata_14_tpl(SR_SE_out_redist1_stall_entry_o6_9_fifo_D10),
        .in_i_writedata_15_tpl(c_i32_063_q),
        .in_i_writedata_16_tpl(c_i64_070_q),
        .in_i_writedata_17_tpl(c_i64_070_q),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988867_q),
        .in_i_byteenable(SR_SE_out_redist1_stall_entry_o6_9_fifo_D11),
        .in_i_dependence(SR_SE_out_redist1_stall_entry_o6_9_fifo_D12),
        .in_i_predicate(SR_SE_out_redist1_stall_entry_o6_9_fifo_D13),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_backStall),
        .in_i_valid(SE_out_redist1_stall_entry_o6_9_fifo_V0),
        .in_memdep_310_windowing_avm_readdata(in_memdep_310_windowing_avm_readdata),
        .in_memdep_310_windowing_avm_readdatavalid(in_memdep_310_windowing_avm_readdatavalid),
        .in_memdep_310_windowing_avm_waitrequest(in_memdep_310_windowing_avm_waitrequest),
        .in_memdep_310_windowing_avm_writeack(in_memdep_310_windowing_avm_writeack),
        .out_memdep_310_windowing_avm_address(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_address),
        .out_memdep_310_windowing_avm_burstcount(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_burstcount),
        .out_memdep_310_windowing_avm_byteenable(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_byteenable),
        .out_memdep_310_windowing_avm_enable(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_enable),
        .out_memdep_310_windowing_avm_read(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_read),
        .out_memdep_310_windowing_avm_write(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_write),
        .out_memdep_310_windowing_avm_writedata(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x(STALLENABLE,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed0 = (~ (SE_out_redist0_stall_entry_o5_16_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_backStall & SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_or0 = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_backStall = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_V0 = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_V1 = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_wireValid = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_valid;

    // bubble_join_stall_entry(BITJOIN,155)
    assign bubble_join_stall_entry_q = {in_memdep_1412, in_c0_exe912611, in_c0_exe812510, in_c0_exe71249, in_c0_exe61238};

    // bubble_select_stall_entry(BITSELECT,156)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1(STALLENABLE,191)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_wireValid = i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1(BLACKBOX,57)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    windowing_i_llvm_fpga_push_i1_memdep_phi15_push9_0 thei_llvm_fpga_push_i1_memdep_phi15_push9_windowing1 (
        .in_data_in(bubble_select_stall_entry_f),
        .in_feedback_stall_in_9(in_feedback_stall_in_9),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_feedback_valid_out_9),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_stall_entry_o7_2_0(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o7_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_2_0_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_2_0_q <= $unsigned(SR_SE_redist2_stall_entry_o7_2_0_D0);
        end
    end

    // SR_SE_redist2_stall_entry_o7_2_1(STALLREG,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_stall_entry_o7_2_1_r_valid <= 1'b0;
            SR_SE_redist2_stall_entry_o7_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_stall_entry_o7_2_1_r_valid <= SE_redist2_stall_entry_o7_2_1_backStall & (SR_SE_redist2_stall_entry_o7_2_1_r_valid | SR_SE_redist2_stall_entry_o7_2_1_i_valid);

            if (SR_SE_redist2_stall_entry_o7_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_stall_entry_o7_2_1_r_data0 <= $unsigned(redist2_stall_entry_o7_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_stall_entry_o7_2_1_i_valid = SE_redist2_stall_entry_o7_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist2_stall_entry_o7_2_1_backStall = SR_SE_redist2_stall_entry_o7_2_1_r_valid | ~ (SR_SE_redist2_stall_entry_o7_2_1_i_valid);

    // Valid
    assign SR_SE_redist2_stall_entry_o7_2_1_V = SR_SE_redist2_stall_entry_o7_2_1_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_2_1_r_valid : SR_SE_redist2_stall_entry_o7_2_1_i_valid;

    assign SR_SE_redist2_stall_entry_o7_2_1_D0 = SR_SE_redist2_stall_entry_o7_2_1_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_2_1_r_data0 : redist2_stall_entry_o7_2_0_q;

    // SE_redist2_stall_entry_o7_2_0(STALLENABLE,209)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_2_0_V0 = SE_redist2_stall_entry_o7_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_2_0_s_tv_0 = SR_SE_redist2_stall_entry_o7_2_1_backStall & SE_redist2_stall_entry_o7_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_2_0_backEN = ~ (SE_redist2_stall_entry_o7_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_2_0_v_s_0 = SE_redist2_stall_entry_o7_2_0_backEN & SR_SE_redist2_stall_entry_o7_2_0_V;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_2_0_backStall = ~ (SE_redist2_stall_entry_o7_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o7_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_2_0_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_2_0_R_v_0 <= SE_redist2_stall_entry_o7_2_0_R_v_0 & SE_redist2_stall_entry_o7_2_0_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_2_0_R_v_0 <= SE_redist2_stall_entry_o7_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist2_stall_entry_o7_2_0(STALLREG,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_stall_entry_o7_2_0_r_valid <= 1'b0;
            SR_SE_redist2_stall_entry_o7_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_stall_entry_o7_2_0_r_valid <= SE_redist2_stall_entry_o7_2_0_backStall & (SR_SE_redist2_stall_entry_o7_2_0_r_valid | SR_SE_redist2_stall_entry_o7_2_0_i_valid);

            if (SR_SE_redist2_stall_entry_o7_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_stall_entry_o7_2_0_r_data0 <= $unsigned(bubble_select_stall_entry_e);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_stall_entry_o7_2_0_i_valid = SE_stall_entry_V2;
    // Stall signal propagation
    assign SR_SE_redist2_stall_entry_o7_2_0_backStall = SR_SE_redist2_stall_entry_o7_2_0_r_valid | ~ (SR_SE_redist2_stall_entry_o7_2_0_i_valid);

    // Valid
    assign SR_SE_redist2_stall_entry_o7_2_0_V = SR_SE_redist2_stall_entry_o7_2_0_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_2_0_r_valid : SR_SE_redist2_stall_entry_o7_2_0_i_valid;

    assign SR_SE_redist2_stall_entry_o7_2_0_D0 = SR_SE_redist2_stall_entry_o7_2_0_r_valid == 1'b1 ? SR_SE_redist2_stall_entry_o7_2_0_r_data0 : bubble_select_stall_entry_e;

    // SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x(STALLENABLE,173)
    // Valid signal propagation
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_V0 = SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_backStall = i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_and0 = i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_valid;
    assign SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_wireValid = SE_stall_entry_V1 & SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_and0;

    // i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x(BLACKBOX,19)@0
    // in in_i_stall@20000000
    // out out_iord_bl_stream_in_tuple_o_fifoalmost_full@20000000
    // out out_iord_bl_stream_in_tuple_o_fifoready@20000000
    // out out_o_stall@20000000
    windowing_i_iord_bl_stream_in_tuple_unnamed_2_windowing0 thei_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_iord_bl_stream_in_tuple_i_fifodata(in_iord_bl_stream_in_tuple_i_fifodata),
        .in_iord_bl_stream_in_tuple_i_fifovalid(in_iord_bl_stream_in_tuple_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_10_tpl),
        .out_iord_bl_stream_in_tuple_o_fifoalmost_full(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoalmost_full),
        .out_iord_bl_stream_in_tuple_o_fifoready(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoready),
        .out_o_stall(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_stall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (SR_SE_redist2_stall_entry_o7_2_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (redist0_stall_entry_o5_16_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (redist1_stall_entry_o6_9_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed5 & SE_stall_entry_or4);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // redist0_stall_entry_o5_16_fifo(STALLFIFO,110)
    assign redist0_stall_entry_o5_16_fifo_valid_in = SE_stall_entry_V3;
    assign redist0_stall_entry_o5_16_fifo_stall_in = SE_out_redist0_stall_entry_o5_16_fifo_backStall;
    assign redist0_stall_entry_o5_16_fifo_data_in = bubble_select_stall_entry_c;
    assign redist0_stall_entry_o5_16_fifo_valid_in_bitsignaltemp = redist0_stall_entry_o5_16_fifo_valid_in[0];
    assign redist0_stall_entry_o5_16_fifo_stall_in_bitsignaltemp = redist0_stall_entry_o5_16_fifo_stall_in[0];
    assign redist0_stall_entry_o5_16_fifo_valid_out[0] = redist0_stall_entry_o5_16_fifo_valid_out_bitsignaltemp;
    assign redist0_stall_entry_o5_16_fifo_stall_out[0] = redist0_stall_entry_o5_16_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(17),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_stall_entry_o5_16_fifo (
        .valid_in(redist0_stall_entry_o5_16_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_stall_entry_o5_16_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_c),
        .valid_out(redist0_stall_entry_o5_16_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_stall_entry_o5_16_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_stall_entry_o5_16_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_stall_entry_o5_16_fifo(STALLENABLE,206)
    // Valid signal propagation
    assign SE_out_redist0_stall_entry_o5_16_fifo_V0 = SE_out_redist0_stall_entry_o5_16_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist0_stall_entry_o5_16_fifo_backStall = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_stall | ~ (SE_out_redist0_stall_entry_o5_16_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist0_stall_entry_o5_16_fifo_and0 = redist0_stall_entry_o5_16_fifo_valid_out;
    assign SE_out_redist0_stall_entry_o5_16_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_V0 & SE_out_redist0_stall_entry_o5_16_fifo_and0;

    // bubble_join_redist0_stall_entry_o5_16_fifo(BITJOIN,160)
    assign bubble_join_redist0_stall_entry_o5_16_fifo_q = redist0_stall_entry_o5_16_fifo_data_out;

    // bubble_select_redist0_stall_entry_o5_16_fifo(BITSELECT,161)
    assign bubble_select_redist0_stall_entry_o5_16_fifo_b = $unsigned(bubble_join_redist0_stall_entry_o5_16_fifo_q[0:0]);

    // i_memdep_310_or_windowing28(LOGICAL,62)@16
    assign i_memdep_310_or_windowing28_q = bubble_select_redist0_stall_entry_o5_16_fifo_b | bubble_select_i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_b;

    // i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x(BLACKBOX,2)@16
    // in in_i_stall@20000000
    // out out_o_readdata_0_0_tpl@24
    // out out_o_readdata_0_3_tpl@24
    // out out_o_readdata_0_4_tpl@24
    // out out_o_readdata_0_5_tpl@24
    // out out_o_readdata_0_6_tpl@24
    // out out_o_readdata_0_7_tpl@24
    // out out_o_readdata_0_10_tpl@24
    // out out_o_readdata_0_11_tpl@24
    // out out_o_readdata_0_12_tpl@24
    // out out_o_readdata_0_13_tpl@24
    // out out_o_readdata_0_14_tpl@24
    // out out_o_readdata_1_tpl@24
    // out out_o_readdata_2_tpl@24
    // out out_o_readdata_8_tpl@24
    // out out_o_readdata_9_tpl@24
    // out out_o_readdata_15_tpl@24
    // out out_o_readdata_16_tpl@24
    // out out_o_readdata_17_tpl@24
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address@20000000
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount@20000000
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable@20000000
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable@20000000
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read@20000000
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write@20000000
    // out out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@24
    windowing_i_llvm_fpga_mem_memcoalesce_lo0000ique_1211_windowing0 thei_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x (
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988867_q),
        .in_i_dependence(i_memdep_310_or_windowing28_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_backStall),
        .in_i_valid(SE_out_redist0_stall_entry_o5_16_fifo_V0),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack),
        .out_o_readdata_0_0_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_0_tpl),
        .out_o_readdata_0_3_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_3_tpl),
        .out_o_readdata_0_4_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_4_tpl),
        .out_o_readdata_0_5_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_5_tpl),
        .out_o_readdata_0_6_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_6_tpl),
        .out_o_readdata_0_7_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_7_tpl),
        .out_o_readdata_0_10_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_10_tpl),
        .out_o_readdata_0_11_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_11_tpl),
        .out_o_readdata_0_12_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_12_tpl),
        .out_o_readdata_0_13_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_13_tpl),
        .out_o_readdata_0_14_tpl(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_14_tpl),
        .out_o_readdata_1_tpl(),
        .out_o_readdata_2_tpl(),
        .out_o_readdata_8_tpl(),
        .out_o_readdata_9_tpl(),
        .out_o_readdata_15_tpl(),
        .out_o_readdata_16_tpl(),
        .out_o_readdata_17_tpl(),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x(STALLENABLE,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg2 <= SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed0 = (~ (in_stall_in) & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed1 = (~ (i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_stall) & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed2 = (~ (i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_stall_out) & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_backStall & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed1;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_toReg2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_or0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_or1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_or0;
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_consumed2 & SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_or1);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_backStall = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V0 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V1 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg1);
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V2 = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_wireValid = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x(BITJOIN,130)
    assign bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q = {i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_14_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_13_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_12_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_11_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_10_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_7_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_6_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_5_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_4_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_3_tpl, i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_o_readdata_0_0_tpl};

    // bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x(BITSELECT,131)
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[7:0]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_c = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[39:8]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_d = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[71:40]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_e = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[103:72]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_f = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[135:104]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_g = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[143:136]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_h = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[175:144]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_i = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[207:176]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_j = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[239:208]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_k = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[271:240]);
    assign bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_l = $unsigned(bubble_join_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_q[303:272]);

    // i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x(BLACKBOX,21)@24
    // in in_i_stall@20000000
    // out out_iowr_bl_stream_out_tuple_o_fifodata@20000000
    // out out_iowr_bl_stream_out_tuple_o_fifovalid@20000000
    // out out_o_stall@20000000
    windowing_i_iowr_bl_stream_out_tuple_or_6_0 thei_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_f),
        .in_i_data_5_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_g),
        .in_i_data_6_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_h),
        .in_i_data_7_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_i),
        .in_i_data_8_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_j),
        .in_i_data_9_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_k),
        .in_i_data_10_tpl(bubble_select_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_l),
        .in_i_stall(SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V1),
        .in_iowr_bl_stream_out_tuple_i_fifoready(in_iowr_bl_stream_out_tuple_i_fifoready),
        .out_iowr_bl_stream_out_tuple_o_fifodata(i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifodata),
        .out_iowr_bl_stream_out_tuple_o_fifovalid(i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifovalid),
        .out_o_ack(i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo(STALLENABLE,212)
    // Valid signal propagation
    assign SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_V0 = SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_backStall = i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_o_stall | ~ (SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_and0 = redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_out;
    assign SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_wireValid = i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_o_valid & SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_and0;

    // redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo(STALLFIFO,114)
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_in = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V1;
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_in = SE_out_redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_backStall;
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_data_in = i_toi1_intcast_windowing24_sel_x_b;
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_in_bitsignaltemp = redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_in[0];
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_in_bitsignaltemp = redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_in[0];
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_out[0] = redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_out_bitsignaltemp;
    assign redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_out[0] = redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(16),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo (
        .valid_in(redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_in_bitsignaltemp),
        .data_in(i_toi1_intcast_windowing24_sel_x_b),
        .valid_out(redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x(STALLENABLE,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg0 <= SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg1 <= SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed0 = (~ (SR_SE_out_redist1_stall_entry_o6_9_fifo_backStall) & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid) | SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed1 = (~ (redist3_i_toi1_intcast_windowing24_sel_x_b_15_fifo_stall_out) & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid) | SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_StallValid = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_toReg0 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_StallValid & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_toReg1 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_StallValid & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_or0 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_consumed1 & SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_or0);
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V0 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V1 = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid = i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_valid;

    // redist1_stall_entry_o6_9_fifo(STALLFIFO,111)
    assign redist1_stall_entry_o6_9_fifo_valid_in = SE_stall_entry_V4;
    assign redist1_stall_entry_o6_9_fifo_stall_in = SR_SE_out_redist1_stall_entry_o6_9_fifo_backStall;
    assign redist1_stall_entry_o6_9_fifo_data_in = bubble_select_stall_entry_d;
    assign redist1_stall_entry_o6_9_fifo_valid_in_bitsignaltemp = redist1_stall_entry_o6_9_fifo_valid_in[0];
    assign redist1_stall_entry_o6_9_fifo_stall_in_bitsignaltemp = redist1_stall_entry_o6_9_fifo_stall_in[0];
    assign redist1_stall_entry_o6_9_fifo_valid_out[0] = redist1_stall_entry_o6_9_fifo_valid_out_bitsignaltemp;
    assign redist1_stall_entry_o6_9_fifo_stall_out[0] = redist1_stall_entry_o6_9_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(10),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_stall_entry_o6_9_fifo (
        .valid_in(redist1_stall_entry_o6_9_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_stall_entry_o6_9_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_d),
        .valid_out(redist1_stall_entry_o6_9_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_stall_entry_o6_9_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_stall_entry_o6_9_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_stall_entry_o6_9_fifo(STALLENABLE,208)
    // Valid signal propagation
    assign SE_out_redist1_stall_entry_o6_9_fifo_V0 = SE_out_redist1_stall_entry_o6_9_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_stall_entry_o6_9_fifo_backStall = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_o_stall | ~ (SE_out_redist1_stall_entry_o6_9_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_stall_entry_o6_9_fifo_wireValid = SR_SE_out_redist1_stall_entry_o6_9_fifo_V;

    // SR_SE_out_redist1_stall_entry_o6_9_fifo(STALLREG,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid <= 1'b0;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data0 <= 8'bxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data3 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data4 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data5 <= 8'bxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data6 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data7 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data8 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data9 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data10 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data11 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data12 <= 1'bx;
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data13 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid <= SE_out_redist1_stall_entry_o6_9_fifo_backStall & (SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid | SR_SE_out_redist1_stall_entry_o6_9_fifo_i_valid);

            if (SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data0 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_b);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data1 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_c);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data2 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_d);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data3 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_e);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data4 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_f);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data5 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_g);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data6 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_h);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data7 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_i);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data8 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_j);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data9 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_k);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data10 <= $unsigned(bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_l);
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data11 <= i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_q;
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data12 <= i_memdep_phi23_or29_windowing11_q;
                SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data13 <= $unsigned(sel_for_coalesced_delay_0_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_and0 = redist1_stall_entry_o6_9_fifo_valid_out;
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_and1 = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V0 & SR_SE_out_redist1_stall_entry_o6_9_fifo_and0;
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_and2 = SE_coalesced_delay_0_6_V1 & SR_SE_out_redist1_stall_entry_o6_9_fifo_and1;
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_i_valid = SE_out_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V0 & SR_SE_out_redist1_stall_entry_o6_9_fifo_and2;
    // Stall signal propagation
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_backStall = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid | ~ (SR_SE_out_redist1_stall_entry_o6_9_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_V = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid : SR_SE_out_redist1_stall_entry_o6_9_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D0 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data0 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_b;
    // Data1
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D1 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data1 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_c;
    // Data2
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D2 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data2 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_d;
    // Data3
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D3 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data3 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_e;
    // Data4
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D4 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data4 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_f;
    // Data5
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D5 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data5 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_g;
    // Data6
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D6 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data6 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_h;
    // Data7
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D7 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data7 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_i;
    // Data8
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D8 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data8 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_j;
    // Data9
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D9 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data9 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_k;
    // Data10
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D10 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data10 : bubble_select_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_l;
    // Data11
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D11 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data11 : i_llvm_fpga_bit_shuffle_i64_s_s_in_0tuple_qeaa_xz_exit_windowing_fpgaunique_0s_v64i32_reduction_windowing_16_shuffle_windowing0_NO_NAME_x_q;
    // Data12
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D12 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data12 : i_memdep_phi23_or29_windowing11_q;
    // Data13
    assign SR_SE_out_redist1_stall_entry_o6_9_fifo_D13 = SR_SE_out_redist1_stall_entry_o6_9_fifo_r_valid == 1'b1 ? SR_SE_out_redist1_stall_entry_o6_9_fifo_r_data13 : sel_for_coalesced_delay_0_c;

    // SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x(STALLENABLE,170)
    // Valid signal propagation
    assign SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_V0 = SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall = i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_o_stall | ~ (SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_and0 = SE_coalesced_delay_0_6_V0;
    assign SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_wireValid = SE_redist6_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack_7_6_V0 & SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_and0;

    // SE_coalesced_delay_0_6(STALLENABLE,226)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    assign SE_coalesced_delay_0_6_V1 = SE_coalesced_delay_0_6_R_v_1;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_in_i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_backStall & SE_coalesced_delay_0_6_R_v_0;
    assign SE_coalesced_delay_0_6_s_tv_1 = SR_SE_out_redist1_stall_entry_o6_9_fifo_backStall & SE_coalesced_delay_0_6_R_v_1;
    // Backward Enable generation
    assign SE_coalesced_delay_0_6_or0 = SE_coalesced_delay_0_6_s_tv_0;
    assign SE_coalesced_delay_0_6_backEN = ~ (SE_coalesced_delay_0_6_s_tv_1 | SE_coalesced_delay_0_6_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_6_v_s_0 = SE_coalesced_delay_0_6_backEN & SR_SE_coalesced_delay_0_6_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_6_backStall = ~ (SE_coalesced_delay_0_6_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_6_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_6_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_R_v_0 & SE_coalesced_delay_0_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_v_s_0;
            end

            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_1 <= SE_coalesced_delay_0_6_R_v_1 & SE_coalesced_delay_0_6_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_1 <= SE_coalesced_delay_0_6_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_6(STALLREG,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_6_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_6_r_data0 <= 9'bxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_6_r_valid <= SE_coalesced_delay_0_6_backStall & (SR_SE_coalesced_delay_0_6_r_valid | SR_SE_coalesced_delay_0_6_i_valid);

            if (SR_SE_coalesced_delay_0_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_6_r_data0 <= $unsigned(coalesced_delay_0_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_6_i_valid = SE_coalesced_delay_0_5_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_6_backStall = SR_SE_coalesced_delay_0_6_r_valid | ~ (SR_SE_coalesced_delay_0_6_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_6_V = SR_SE_coalesced_delay_0_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_6_r_valid : SR_SE_coalesced_delay_0_6_i_valid;

    assign SR_SE_coalesced_delay_0_6_D0 = SR_SE_coalesced_delay_0_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_6_r_data0 : coalesced_delay_0_5_q;

    // SE_coalesced_delay_0_5(STALLENABLE,225)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SR_SE_coalesced_delay_0_6_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 9'bxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,224)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 9'bxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_3(STALLENABLE,223)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SR_SE_coalesced_delay_0_3_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_3(STALLREG,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_3_r_data0 <= 9'bxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_3_r_valid <= SE_coalesced_delay_0_3_backStall & (SR_SE_coalesced_delay_0_3_r_valid | SR_SE_coalesced_delay_0_3_i_valid);

            if (SR_SE_coalesced_delay_0_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_3_r_data0 <= $unsigned(coalesced_delay_0_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_3_i_valid = SE_coalesced_delay_0_2_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_3_backStall = SR_SE_coalesced_delay_0_3_r_valid | ~ (SR_SE_coalesced_delay_0_3_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_3_V = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_valid : SR_SE_coalesced_delay_0_3_i_valid;

    assign SR_SE_coalesced_delay_0_3_D0 = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_data0 : coalesced_delay_0_2_q;

    // SE_coalesced_delay_0_2(STALLENABLE,222)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SR_SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 9'bxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // SE_coalesced_delay_0_1(STALLENABLE,221)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_1(STALLREG,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 9'bxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,220)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V2;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x(BLACKBOX,20)@2
    // in in_i_stall@20000000
    // out out_iowr_bl_call_aggregation_o_fifodata@20000000
    // out out_iowr_bl_call_aggregation_o_fifovalid@20000000
    // out out_o_stall@20000000
    windowing_i_iowr_bl_call_aggregation_unnamed_3_windowing0 thei_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_u),
        .in_i_data_1_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_v),
        .in_i_data_2_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_w),
        .in_i_data_3_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_x),
        .in_i_data_4_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_y),
        .in_i_data_5_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_z),
        .in_i_data_6_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_aa),
        .in_i_data_7_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_bb),
        .in_i_data_8_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_cc),
        .in_i_data_9_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_dd),
        .in_i_data_10_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ee),
        .in_i_data_11_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ff),
        .in_i_data_12_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_gg),
        .in_i_data_13_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_hh),
        .in_c0_exe4140(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ii),
        .in_i_stall(SE_out_i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V1),
        .in_iowr_bl_call_aggregation_i_fifoready(in_iowr_bl_call_aggregation_i_fifoready),
        .out_iowr_bl_call_aggregation_o_fifodata(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifodata),
        .out_iowr_bl_call_aggregation_o_fifovalid(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x(BITJOIN,137)
    assign bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q = {i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_10_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_9_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_8_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_7_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_6_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_5_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_4_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_3_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_2_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_1_tpl, i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x(BITSELECT,138)
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[175:144]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_q[303:272]);

    // i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x(BLACKBOX,28)@0
    // in in_i_stall@20000000
    // out out_c0_exit136_0_tpl@2
    // out out_c0_exit136_1_tpl@2
    // out out_c0_exit136_2_tpl@2
    // out out_c0_exit136_3_tpl@2
    // out out_c0_exit136_4_tpl@2
    // out out_c0_exit136_5_tpl@2
    // out out_c0_exit136_6_tpl@2
    // out out_c0_exit136_7_tpl@2
    // out out_c0_exit136_8_tpl@2
    // out out_c0_exit136_9_tpl@2
    // out out_c0_exit136_10_tpl@2
    // out out_c0_exit136_11_tpl@2
    // out out_c0_exit136_12_tpl@2
    // out out_c0_exit136_13_tpl@2
    // out out_c0_exit136_14_tpl@2
    // out out_c0_exit136_15_tpl@2
    // out out_c0_exit136_16_tpl@2
    // out out_c0_exit136_17_tpl@2
    // out out_c0_exit136_18_tpl@2
    // out out_c0_exit136_19_tpl@2
    // out out_c0_exit136_20_tpl@2
    // out out_c0_exit136_21_tpl@2
    // out out_c0_exit136_22_tpl@2
    // out out_c0_exit136_23_tpl@2
    // out out_c0_exit136_24_tpl@2
    // out out_c0_exit136_25_tpl@2
    // out out_c0_exit136_26_tpl@2
    // out out_c0_exit136_27_tpl@2
    // out out_c0_exit136_28_tpl@2
    // out out_c0_exit136_29_tpl@2
    // out out_c0_exit136_30_tpl@2
    // out out_c0_exit136_31_tpl@2
    // out out_c0_exit136_32_tpl@2
    // out out_c0_exit136_33_tpl@2
    // out out_c0_exit136_34_tpl@2
    // out out_o_stall@20000000
    // out out_o_valid@2
    windowing_i_sfc_s_c0_in_0tuple_qeaa_xz_e0000_enter129_windowing4 thei_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x (
        .in_c0_eni2128_0_tpl(GND_q),
        .in_c0_eni2128_1_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_b),
        .in_c0_eni2128_2_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_c),
        .in_c0_eni2128_3_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_d),
        .in_c0_eni2128_4_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_e),
        .in_c0_eni2128_5_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_f),
        .in_c0_eni2128_6_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_g),
        .in_c0_eni2128_7_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_h),
        .in_c0_eni2128_8_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_i),
        .in_c0_eni2128_9_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_j),
        .in_c0_eni2128_10_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_k),
        .in_c0_eni2128_11_tpl(bubble_select_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_l),
        .in_c0_eni2128_12_tpl(bubble_select_stall_entry_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_V0),
        .out_c0_exit136_0_tpl(),
        .out_c0_exit136_1_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_1_tpl),
        .out_c0_exit136_2_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_2_tpl),
        .out_c0_exit136_3_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_3_tpl),
        .out_c0_exit136_4_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_4_tpl),
        .out_c0_exit136_5_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_5_tpl),
        .out_c0_exit136_6_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_6_tpl),
        .out_c0_exit136_7_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_7_tpl),
        .out_c0_exit136_8_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_8_tpl),
        .out_c0_exit136_9_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_9_tpl),
        .out_c0_exit136_10_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_10_tpl),
        .out_c0_exit136_11_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_11_tpl),
        .out_c0_exit136_12_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_12_tpl),
        .out_c0_exit136_13_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_13_tpl),
        .out_c0_exit136_14_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_14_tpl),
        .out_c0_exit136_15_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_15_tpl),
        .out_c0_exit136_16_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_16_tpl),
        .out_c0_exit136_17_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_17_tpl),
        .out_c0_exit136_18_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_18_tpl),
        .out_c0_exit136_19_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_19_tpl),
        .out_c0_exit136_20_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_20_tpl),
        .out_c0_exit136_21_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_21_tpl),
        .out_c0_exit136_22_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_22_tpl),
        .out_c0_exit136_23_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_23_tpl),
        .out_c0_exit136_24_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_24_tpl),
        .out_c0_exit136_25_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_25_tpl),
        .out_c0_exit136_26_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_26_tpl),
        .out_c0_exit136_27_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_27_tpl),
        .out_c0_exit136_28_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_28_tpl),
        .out_c0_exit136_29_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_29_tpl),
        .out_c0_exit136_30_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_30_tpl),
        .out_c0_exit136_31_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_31_tpl),
        .out_c0_exit136_32_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_32_tpl),
        .out_c0_exit136_33_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_33_tpl),
        .out_c0_exit136_34_tpl(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_34_tpl),
        .out_o_stall(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x(STALLENABLE,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall) & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed1 = (~ (i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed2 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_wireValid = i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_o_valid;

    // SE_redist2_stall_entry_o7_2_1(STALLENABLE,210)
    // Valid signal propagation
    assign SE_redist2_stall_entry_o7_2_1_V0 = SE_redist2_stall_entry_o7_2_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_stall_entry_o7_2_1_s_tv_0 = SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall & SE_redist2_stall_entry_o7_2_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_stall_entry_o7_2_1_backEN = ~ (SE_redist2_stall_entry_o7_2_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_stall_entry_o7_2_1_v_s_0 = SE_redist2_stall_entry_o7_2_1_backEN & SR_SE_redist2_stall_entry_o7_2_1_V;
    // Backward Stall generation
    assign SE_redist2_stall_entry_o7_2_1_backStall = ~ (SE_redist2_stall_entry_o7_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_stall_entry_o7_2_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_stall_entry_o7_2_1_backEN == 1'b0)
            begin
                SE_redist2_stall_entry_o7_2_1_R_v_0 <= SE_redist2_stall_entry_o7_2_1_R_v_0 & SE_redist2_stall_entry_o7_2_1_s_tv_0;
            end
            else
            begin
                SE_redist2_stall_entry_o7_2_1_R_v_0 <= SE_redist2_stall_entry_o7_2_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x(STALLENABLE,180)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V0 = SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_and0 = SE_redist2_stall_entry_o7_2_1_V0;
    assign SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid = SE_out_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_V0 & SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10(STALLENABLE,193)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_wireValid = i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10(BLACKBOX,58)@9
    // in in_stall_in@20000000
    // out out_data_out@10
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@10
    windowing_i_llvm_fpga_push_i1_memdep_phi16_push10_0 thei_llvm_fpga_push_i1_memdep_phi16_push10_windowing10 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_b),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x(STALLENABLE,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed0 = (~ (SR_SE_out_redist1_stall_entry_o6_9_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_stall_out) & SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid) | SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_StallValid = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall & SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_toReg0 = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_toReg1 = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_StallValid & SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_or0 = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_consumed1 & SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V0 = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V1 = SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_wireValid = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_valid;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist2_stall_entry_o7_2_1(REG,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_stall_entry_o7_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_stall_entry_o7_2_1_backEN == 1'b1)
        begin
            redist2_stall_entry_o7_2_1_q <= $unsigned(SR_SE_redist2_stall_entry_o7_2_1_D0);
        end
    end

    // c_i64_462970041693686988867(CONSTANT,36)
    assign c_i64_462970041693686988867_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x(BITJOIN,152)
    assign bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q = {i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_34_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_33_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_32_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_31_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_30_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_29_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_28_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_27_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_26_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_25_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_24_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_23_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_22_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_21_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_20_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_19_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_18_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_17_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_16_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_15_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_14_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_13_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_12_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_11_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_10_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_9_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_8_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_7_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_6_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_5_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_4_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_3_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_2_tpl, i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_out_c0_exit136_1_tpl};

    // bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x(BITSELECT,153)
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[7:0]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[15:8]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[23:16]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[39:24]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[71:40]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[103:72]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[135:104]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[167:136]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[175:168]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[183:176]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[199:184]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[231:200]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[263:232]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[295:264]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[327:296]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[359:328]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[391:360]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[455:392]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[519:456]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_u = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[527:520]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_v = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[559:528]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_w = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[591:560]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_x = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[623:592]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_y = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[655:624]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_z = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[663:656]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_aa = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[695:664]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_bb = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[727:696]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_cc = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[759:728]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_dd = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[791:760]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ee = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[823:792]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ff = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[855:824]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_gg = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[887:856]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_hh = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[888:888]);
    assign bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_ii = $unsigned(bubble_join_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q[889:889]);

    // i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x(BLACKBOX,25)@2
    // in in_i_stall@20000000
    // out out_memdep_19_windowing_avm_address@20000000
    // out out_memdep_19_windowing_avm_burstcount@20000000
    // out out_memdep_19_windowing_avm_byteenable@20000000
    // out out_memdep_19_windowing_avm_enable@20000000
    // out out_memdep_19_windowing_avm_read@20000000
    // out out_memdep_19_windowing_avm_write@20000000
    // out out_memdep_19_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_o_writeack@9
    windowing_i_llvm_fpga_mem_memdep_19_0 thei_llvm_fpga_mem_memdep_19_windowing7_aunroll_x (
        .in_i_writedata_0_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_c),
        .in_i_writedata_1_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_d),
        .in_i_writedata_2_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_e),
        .in_i_writedata_3_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_f),
        .in_i_writedata_4_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_g),
        .in_i_writedata_5_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_h),
        .in_i_writedata_6_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_i),
        .in_i_writedata_7_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_j),
        .in_i_writedata_8_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_k),
        .in_i_writedata_9_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_l),
        .in_i_writedata_10_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_m),
        .in_i_writedata_11_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_n),
        .in_i_writedata_12_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_o),
        .in_i_writedata_13_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_p),
        .in_i_writedata_14_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_q),
        .in_i_writedata_15_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_r),
        .in_i_writedata_16_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_s),
        .in_i_writedata_17_tpl(bubble_select_i_sfc_s_c0_in_0tuple_qeaa_xz_exit_windowings_c0_enter129_windowing4_aunroll_x_t),
        .in_flush(in_flush),
        .in_i_address(c_i64_462970041693686988867_q),
        .in_i_dependence(redist2_stall_entry_o7_2_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_V0),
        .in_memdep_19_windowing_avm_readdata(in_memdep_19_windowing_avm_readdata),
        .in_memdep_19_windowing_avm_readdatavalid(in_memdep_19_windowing_avm_readdatavalid),
        .in_memdep_19_windowing_avm_waitrequest(in_memdep_19_windowing_avm_waitrequest),
        .in_memdep_19_windowing_avm_writeack(in_memdep_19_windowing_avm_writeack),
        .out_memdep_19_windowing_avm_address(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_address),
        .out_memdep_19_windowing_avm_burstcount(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_burstcount),
        .out_memdep_19_windowing_avm_byteenable(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_byteenable),
        .out_memdep_19_windowing_avm_enable(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_enable),
        .out_memdep_19_windowing_avm_read(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_read),
        .out_memdep_19_windowing_avm_write(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_write),
        .out_memdep_19_windowing_avm_writedata(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_memdep_19_windowing_avm_address = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_address;
    assign out_memdep_19_windowing_avm_enable = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_enable;
    assign out_memdep_19_windowing_avm_read = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_read;
    assign out_memdep_19_windowing_avm_write = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_write;
    assign out_memdep_19_windowing_avm_writedata = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_writedata;
    assign out_memdep_19_windowing_avm_byteenable = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_byteenable;
    assign out_memdep_19_windowing_avm_burstcount = i_llvm_fpga_mem_memdep_19_windowing7_aunroll_x_out_memdep_19_windowing_avm_burstcount;

    // dupName_0_sync_out_x(GPOUT,5)@24
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,7)
    assign out_iowr_bl_call_aggregation_o_fifodata = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifodata;
    assign out_iowr_bl_call_aggregation_o_fifovalid = i_iowr_bl_call_aggregation_unnamed_windowing3_windowing8_aunroll_x_out_iowr_bl_call_aggregation_o_fifovalid;

    // dupName_2_ext_sig_sync_out_x(GPOUT,9)
    assign out_iord_bl_return_aggregation_o_fifoready = i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_iord_bl_return_aggregation_o_fifoready;
    assign out_iord_bl_return_aggregation_o_fifoalmost_full = i_iord_bl_return_aggregation_unnamed_windowing4_windowing12_aunroll_x_out_iord_bl_return_aggregation_o_fifoalmost_full;

    // dupName_3_ext_sig_sync_out_x(GPOUT,11)
    assign out_memdep_310_windowing_avm_address = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_address;
    assign out_memdep_310_windowing_avm_enable = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_enable;
    assign out_memdep_310_windowing_avm_read = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_read;
    assign out_memdep_310_windowing_avm_write = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_write;
    assign out_memdep_310_windowing_avm_writedata = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_writedata;
    assign out_memdep_310_windowing_avm_byteenable = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_byteenable;
    assign out_memdep_310_windowing_avm_burstcount = i_llvm_fpga_mem_memdep_310_windowing26_aunroll_x_out_memdep_310_windowing_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,13)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_windowing_fpgaunique_1211_windowing29_aunroll_vunroll_x_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,15)
    assign out_iowr_bl_stream_out_tuple_o_fifodata = i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifodata;
    assign out_iowr_bl_stream_out_tuple_o_fifovalid = i_iowr_bl_stream_out_tuple_or_6_windowing55_aunroll_x_out_iowr_bl_stream_out_tuple_o_fifovalid;

    // dupName_6_ext_sig_sync_out_x(GPOUT,17)
    assign out_iowr_bl_return_windowing_o_fifodata = i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_iowr_bl_return_windowing_o_fifodata;
    assign out_iowr_bl_return_windowing_o_fifovalid = i_iowr_bl_return_windowing_unnamed_windowing5_windowing57_out_iowr_bl_return_windowing_o_fifovalid;

    // ext_sig_sync_out(GPOUT,43)
    assign out_iord_bl_stream_in_tuple_o_fifoready = i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoready;
    assign out_iord_bl_stream_in_tuple_o_fifoalmost_full = i_iord_bl_stream_in_tuple_unnamed_windowing2_windowing0_aunroll_x_out_iord_bl_stream_in_tuple_o_fifoalmost_full;

    // feedback_out_10_sync(GPOUT,44)
    assign out_feedback_out_10 = i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_feedback_out_10;

    // feedback_out_11_sync(GPOUT,45)
    assign out_feedback_out_11 = i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_feedback_out_11;

    // feedback_out_12_sync(GPOUT,46)
    assign out_feedback_out_12 = i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_feedback_out_12;

    // feedback_out_9_sync(GPOUT,47)
    assign out_feedback_out_9 = i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_feedback_out_9;

    // feedback_valid_out_10_sync(GPOUT,52)
    assign out_feedback_valid_out_10 = i_llvm_fpga_push_i1_memdep_phi16_push10_windowing10_out_feedback_valid_out_10;

    // feedback_valid_out_11_sync(GPOUT,53)
    assign out_feedback_valid_out_11 = i_llvm_fpga_push_i1_memdep_phi18_push11_windowing27_out_feedback_valid_out_11;

    // feedback_valid_out_12_sync(GPOUT,54)
    assign out_feedback_valid_out_12 = i_llvm_fpga_push_i1_memdep_phi23_push12_windowing44_out_feedback_valid_out_12;

    // feedback_valid_out_9_sync(GPOUT,55)
    assign out_feedback_valid_out_9 = i_llvm_fpga_push_i1_memdep_phi15_push9_windowing1_out_feedback_valid_out_9;

    // sync_out(GPOUT,96)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
