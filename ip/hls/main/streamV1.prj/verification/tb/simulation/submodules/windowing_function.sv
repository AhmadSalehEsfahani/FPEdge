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

// SystemVerilog created from windowing_function
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_stream_in_tuple,
    input wire [63:0] in_arg_stream_out_tuple,
    input wire [0:0] in_iord_bl_call_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_call_windowing_i_fifovalid,
    input wire [351:0] in_iord_bl_return_aggregation_i_fifodata,
    input wire [0:0] in_iord_bl_return_aggregation_i_fifovalid,
    input wire [351:0] in_iord_bl_stream_in_tuple_i_fifodata,
    input wire [0:0] in_iord_bl_stream_in_tuple_i_fifovalid,
    input wire [0:0] in_iowr_bl_call_aggregation_i_fifoready,
    input wire [0:0] in_iowr_bl_return_windowing_i_fifoready,
    input wire [0:0] in_iowr_bl_stream_out_tuple_i_fifoready,
    input wire [511:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack,
    input wire [511:0] in_memdep_12_windowing_avm_readdata,
    input wire [0:0] in_memdep_12_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_12_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_12_windowing_avm_writeack,
    input wire [511:0] in_memdep_13_windowing_avm_readdata,
    input wire [0:0] in_memdep_13_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_13_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_13_windowing_avm_writeack,
    input wire [511:0] in_memdep_14_windowing_avm_readdata,
    input wire [0:0] in_memdep_14_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_14_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_14_windowing_avm_writeack,
    input wire [511:0] in_memdep_19_windowing_avm_readdata,
    input wire [0:0] in_memdep_19_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_19_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_19_windowing_avm_writeack,
    input wire [511:0] in_memdep_310_windowing_avm_readdata,
    input wire [0:0] in_memdep_310_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_310_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_310_windowing_avm_writeack,
    input wire [511:0] in_memdep_8_windowing_avm_readdata,
    input wire [0:0] in_memdep_8_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_8_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_8_windowing_avm_writeack,
    input wire [511:0] in_memdep_windowing_avm_readdata,
    input wire [0:0] in_memdep_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_windowing_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_return_aggregation_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_return_aggregation_o_fifoready,
    output wire [0:0] out_iord_bl_stream_in_tuple_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_stream_in_tuple_o_fifoready,
    output wire [447:0] out_iowr_bl_call_aggregation_o_fifodata,
    output wire [0:0] out_iowr_bl_call_aggregation_o_fifovalid,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_return_windowing_o_fifovalid,
    output wire [351:0] out_iowr_bl_stream_out_tuple_o_fifodata,
    output wire [0:0] out_iowr_bl_stream_out_tuple_o_fifovalid,
    output wire [31:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount,
    output wire [63:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read,
    output wire [0:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write,
    output wire [511:0] out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata,
    output wire [31:0] out_memdep_12_windowing_avm_address,
    output wire [0:0] out_memdep_12_windowing_avm_burstcount,
    output wire [63:0] out_memdep_12_windowing_avm_byteenable,
    output wire [0:0] out_memdep_12_windowing_avm_enable,
    output wire [0:0] out_memdep_12_windowing_avm_read,
    output wire [0:0] out_memdep_12_windowing_avm_write,
    output wire [511:0] out_memdep_12_windowing_avm_writedata,
    output wire [31:0] out_memdep_13_windowing_avm_address,
    output wire [0:0] out_memdep_13_windowing_avm_burstcount,
    output wire [63:0] out_memdep_13_windowing_avm_byteenable,
    output wire [0:0] out_memdep_13_windowing_avm_enable,
    output wire [0:0] out_memdep_13_windowing_avm_read,
    output wire [0:0] out_memdep_13_windowing_avm_write,
    output wire [511:0] out_memdep_13_windowing_avm_writedata,
    output wire [31:0] out_memdep_14_windowing_avm_address,
    output wire [0:0] out_memdep_14_windowing_avm_burstcount,
    output wire [63:0] out_memdep_14_windowing_avm_byteenable,
    output wire [0:0] out_memdep_14_windowing_avm_enable,
    output wire [0:0] out_memdep_14_windowing_avm_read,
    output wire [0:0] out_memdep_14_windowing_avm_write,
    output wire [511:0] out_memdep_14_windowing_avm_writedata,
    output wire [31:0] out_memdep_19_windowing_avm_address,
    output wire [0:0] out_memdep_19_windowing_avm_burstcount,
    output wire [63:0] out_memdep_19_windowing_avm_byteenable,
    output wire [0:0] out_memdep_19_windowing_avm_enable,
    output wire [0:0] out_memdep_19_windowing_avm_read,
    output wire [0:0] out_memdep_19_windowing_avm_write,
    output wire [511:0] out_memdep_19_windowing_avm_writedata,
    output wire [31:0] out_memdep_310_windowing_avm_address,
    output wire [0:0] out_memdep_310_windowing_avm_burstcount,
    output wire [63:0] out_memdep_310_windowing_avm_byteenable,
    output wire [0:0] out_memdep_310_windowing_avm_enable,
    output wire [0:0] out_memdep_310_windowing_avm_read,
    output wire [0:0] out_memdep_310_windowing_avm_write,
    output wire [511:0] out_memdep_310_windowing_avm_writedata,
    output wire [31:0] out_memdep_8_windowing_avm_address,
    output wire [0:0] out_memdep_8_windowing_avm_burstcount,
    output wire [63:0] out_memdep_8_windowing_avm_byteenable,
    output wire [0:0] out_memdep_8_windowing_avm_enable,
    output wire [0:0] out_memdep_8_windowing_avm_read,
    output wire [0:0] out_memdep_8_windowing_avm_write,
    output wire [511:0] out_memdep_8_windowing_avm_writedata,
    output wire [31:0] out_memdep_windowing_avm_address,
    output wire [0:0] out_memdep_windowing_avm_burstcount,
    output wire [63:0] out_memdep_windowing_avm_byteenable,
    output wire [0:0] out_memdep_windowing_avm_enable,
    output wire [0:0] out_memdep_windowing_avm_read,
    output wire [0:0] out_memdep_windowing_avm_write,
    output wire [511:0] out_memdep_windowing_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_windowing_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_windowing_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_windowing_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_windowing_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_windowing_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_windowing_B1_start_out_c0_exe2;
    wire [0:0] bb_windowing_B1_start_out_feedback_stall_out_10;
    wire [0:0] bb_windowing_B1_start_out_feedback_stall_out_11;
    wire [0:0] bb_windowing_B1_start_out_feedback_stall_out_12;
    wire [0:0] bb_windowing_B1_start_out_feedback_stall_out_8;
    wire [0:0] bb_windowing_B1_start_out_feedback_stall_out_9;
    wire [0:0] bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoalmost_full;
    wire [0:0] bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoready;
    wire [31:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_address;
    wire [0:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_enable;
    wire [0:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_read;
    wire [0:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_write;
    wire [511:0] bb_windowing_B1_start_out_memdep_8_windowing_avm_writedata;
    wire [0:0] bb_windowing_B1_start_out_memdep_phi15_pop9;
    wire [0:0] bb_windowing_B1_start_out_memdep_phi16_pop10;
    wire [0:0] bb_windowing_B1_start_out_memdep_phi18_pop11;
    wire [0:0] bb_windowing_B1_start_out_memdep_phi23_pop12;
    wire [0:0] bb_windowing_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B1_start_out_reduction_windowing_1;
    wire [0:0] bb_windowing_B1_start_out_stall_out_0;
    wire [0:0] bb_windowing_B1_start_out_valid_in_0;
    wire [0:0] bb_windowing_B1_start_out_valid_in_1;
    wire [0:0] bb_windowing_B1_start_out_valid_out_0;
    wire [0:0] bb_windowing_B2_out_c0_exe10;
    wire [0:0] bb_windowing_B2_out_c0_exe3;
    wire [0:0] bb_windowing_B2_out_c0_exe4;
    wire [0:0] bb_windowing_B2_out_c0_exe7;
    wire [0:0] bb_windowing_B2_out_c0_exe8;
    wire [0:0] bb_windowing_B2_out_c0_exe9;
    wire [0:0] bb_windowing_B2_out_exiting_stall_out;
    wire [0:0] bb_windowing_B2_out_exiting_valid_out;
    wire [0:0] bb_windowing_B2_out_memdep;
    wire [31:0] bb_windowing_B2_out_memdep_windowing_avm_address;
    wire [0:0] bb_windowing_B2_out_memdep_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B2_out_memdep_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B2_out_memdep_windowing_avm_enable;
    wire [0:0] bb_windowing_B2_out_memdep_windowing_avm_read;
    wire [0:0] bb_windowing_B2_out_memdep_windowing_avm_write;
    wire [511:0] bb_windowing_B2_out_memdep_windowing_avm_writedata;
    wire [0:0] bb_windowing_B2_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B2_out_stall_in_0;
    wire [0:0] bb_windowing_B2_out_stall_out_0;
    wire [0:0] bb_windowing_B2_out_stall_out_1;
    wire [0:0] bb_windowing_B2_out_valid_in_0;
    wire [0:0] bb_windowing_B2_out_valid_in_1;
    wire [0:0] bb_windowing_B2_out_valid_out_0;
    wire [0:0] bb_windowing_B3_out_c0_exe31;
    wire [0:0] bb_windowing_B3_out_c0_exe42;
    wire [0:0] bb_windowing_B3_out_c0_exe73;
    wire [0:0] bb_windowing_B3_out_c0_exe95;
    wire [0:0] bb_windowing_B3_out_feedback_out_8;
    wire [0:0] bb_windowing_B3_out_feedback_valid_out_8;
    wire [31:0] bb_windowing_B3_out_memdep_12_windowing_avm_address;
    wire [0:0] bb_windowing_B3_out_memdep_12_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B3_out_memdep_12_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B3_out_memdep_12_windowing_avm_enable;
    wire [0:0] bb_windowing_B3_out_memdep_12_windowing_avm_read;
    wire [0:0] bb_windowing_B3_out_memdep_12_windowing_avm_write;
    wire [511:0] bb_windowing_B3_out_memdep_12_windowing_avm_writedata;
    wire [31:0] bb_windowing_B3_out_memdep_13_windowing_avm_address;
    wire [0:0] bb_windowing_B3_out_memdep_13_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B3_out_memdep_13_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B3_out_memdep_13_windowing_avm_enable;
    wire [0:0] bb_windowing_B3_out_memdep_13_windowing_avm_read;
    wire [0:0] bb_windowing_B3_out_memdep_13_windowing_avm_write;
    wire [511:0] bb_windowing_B3_out_memdep_13_windowing_avm_writedata;
    wire [0:0] bb_windowing_B3_out_reduction_windowing_5;
    wire [0:0] bb_windowing_B3_out_stall_out_0;
    wire [0:0] bb_windowing_B3_out_valid_out_0;
    wire [0:0] bb_windowing_B4_out_c0_exe6123;
    wire [0:0] bb_windowing_B4_out_c0_exe7124;
    wire [0:0] bb_windowing_B4_out_c0_exe8125;
    wire [0:0] bb_windowing_B4_out_c0_exe9126;
    wire [0:0] bb_windowing_B4_out_exiting_stall_out;
    wire [0:0] bb_windowing_B4_out_exiting_valid_out;
    wire [0:0] bb_windowing_B4_out_memdep_14;
    wire [31:0] bb_windowing_B4_out_memdep_14_windowing_avm_address;
    wire [0:0] bb_windowing_B4_out_memdep_14_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B4_out_memdep_14_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B4_out_memdep_14_windowing_avm_enable;
    wire [0:0] bb_windowing_B4_out_memdep_14_windowing_avm_read;
    wire [0:0] bb_windowing_B4_out_memdep_14_windowing_avm_write;
    wire [511:0] bb_windowing_B4_out_memdep_14_windowing_avm_writedata;
    wire [0:0] bb_windowing_B4_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B4_out_stall_in_0;
    wire [0:0] bb_windowing_B4_out_stall_out_0;
    wire [0:0] bb_windowing_B4_out_stall_out_1;
    wire [0:0] bb_windowing_B4_out_valid_in_0;
    wire [0:0] bb_windowing_B4_out_valid_in_1;
    wire [0:0] bb_windowing_B4_out_valid_out_0;
    wire [0:0] bb_windowing_B5_out_feedback_out_10;
    wire [0:0] bb_windowing_B5_out_feedback_out_11;
    wire [0:0] bb_windowing_B5_out_feedback_out_12;
    wire [0:0] bb_windowing_B5_out_feedback_out_9;
    wire [0:0] bb_windowing_B5_out_feedback_valid_out_10;
    wire [0:0] bb_windowing_B5_out_feedback_valid_out_11;
    wire [0:0] bb_windowing_B5_out_feedback_valid_out_12;
    wire [0:0] bb_windowing_B5_out_feedback_valid_out_9;
    wire [0:0] bb_windowing_B5_out_iord_bl_return_aggregation_o_fifoalmost_full;
    wire [0:0] bb_windowing_B5_out_iord_bl_return_aggregation_o_fifoready;
    wire [0:0] bb_windowing_B5_out_iord_bl_stream_in_tuple_o_fifoalmost_full;
    wire [0:0] bb_windowing_B5_out_iord_bl_stream_in_tuple_o_fifoready;
    wire [447:0] bb_windowing_B5_out_iowr_bl_call_aggregation_o_fifodata;
    wire [0:0] bb_windowing_B5_out_iowr_bl_call_aggregation_o_fifovalid;
    wire [0:0] bb_windowing_B5_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] bb_windowing_B5_out_iowr_bl_return_windowing_o_fifovalid;
    wire [351:0] bb_windowing_B5_out_iowr_bl_stream_out_tuple_o_fifodata;
    wire [0:0] bb_windowing_B5_out_iowr_bl_stream_out_tuple_o_fifovalid;
    wire [31:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;
    wire [0:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;
    wire [0:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;
    wire [0:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;
    wire [511:0] bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;
    wire [31:0] bb_windowing_B5_out_memdep_19_windowing_avm_address;
    wire [0:0] bb_windowing_B5_out_memdep_19_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B5_out_memdep_19_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B5_out_memdep_19_windowing_avm_enable;
    wire [0:0] bb_windowing_B5_out_memdep_19_windowing_avm_read;
    wire [0:0] bb_windowing_B5_out_memdep_19_windowing_avm_write;
    wire [511:0] bb_windowing_B5_out_memdep_19_windowing_avm_writedata;
    wire [31:0] bb_windowing_B5_out_memdep_310_windowing_avm_address;
    wire [0:0] bb_windowing_B5_out_memdep_310_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B5_out_memdep_310_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B5_out_memdep_310_windowing_avm_enable;
    wire [0:0] bb_windowing_B5_out_memdep_310_windowing_avm_read;
    wire [0:0] bb_windowing_B5_out_memdep_310_windowing_avm_write;
    wire [511:0] bb_windowing_B5_out_memdep_310_windowing_avm_writedata;
    wire [0:0] bb_windowing_B5_out_stall_in_0;
    wire [0:0] bb_windowing_B5_out_stall_out_0;
    wire [0:0] bb_windowing_B5_out_valid_out_0;
    wire [1:0] c_i2_051_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going49_windowing2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going49_windowing2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_windowing0_out_o_stall;
    wire [0:0] loop_limiter_windowing0_out_o_valid;
    wire [0:0] loop_limiter_windowing1_out_o_stall;
    wire [0:0] loop_limiter_windowing1_out_o_valid;
    wire [0:0] windowing_B1_start_x_i_capture;
    wire windowing_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_clear;
    wire windowing_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_enable;
    wire windowing_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_shift;
    wire windowing_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_stall_pred;
    wire windowing_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_stall_succ;
    wire windowing_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_valid_loop;
    wire windowing_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_valid_pred;
    wire windowing_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] windowing_B1_start_x_i_valid_succ;
    wire windowing_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_capture;
    wire windowing_B2_x_i_capture_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_clear;
    wire windowing_B2_x_i_clear_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_enable;
    wire windowing_B2_x_i_enable_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_shift;
    wire windowing_B2_x_i_shift_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_stall_pred;
    wire windowing_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_stall_succ;
    wire windowing_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_valid_loop;
    wire windowing_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_valid_pred;
    wire windowing_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] windowing_B2_x_i_valid_succ;
    wire windowing_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_capture;
    wire windowing_B4_x_i_capture_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_clear;
    wire windowing_B4_x_i_clear_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_enable;
    wire windowing_B4_x_i_enable_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_shift;
    wire windowing_B4_x_i_shift_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_stall_pred;
    wire windowing_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_stall_succ;
    wire windowing_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_valid_loop;
    wire windowing_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_valid_pred;
    wire windowing_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] windowing_B4_x_i_valid_succ;
    wire windowing_B4_x_i_valid_succ_bitsignaltemp;


    // c_i2_051(CONSTANT,42)
    assign c_i2_051_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo(BLACKBOX,49)
    windowing_i_llvm_fpga_pipeline_keep_going49_2_valid_fifo thei_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo (
        .in_data_in(c_i2_051_q),
        .in_stall_in(bb_windowing_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going49_windowing2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo(BLACKBOX,47)
    windowing_i_llvm_fpga_pipeline_keep_going36_6_valid_fifo thei_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo (
        .in_data_in(c_i2_051_q),
        .in_stall_in(bb_windowing_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going36_windowing6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B3_sr_0_aunroll_x(BLACKBOX,3)
    windowing_bb_B3_sr_0 thebb_windowing_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_windowing_B2_out_c0_exe3),
        .in_i_data_1_tpl(bb_windowing_B2_out_c0_exe4),
        .in_i_data_2_tpl(bb_windowing_B2_out_c0_exe7),
        .in_i_data_3_tpl(bb_windowing_B2_out_c0_exe8),
        .in_i_data_4_tpl(bb_windowing_B2_out_c0_exe9),
        .in_i_data_5_tpl(bb_windowing_B2_out_c0_exe10),
        .in_i_data_6_tpl(bb_windowing_B2_out_memdep),
        .in_i_stall(bb_windowing_B3_out_stall_out_0),
        .in_i_valid(bb_windowing_B2_out_valid_out_0),
        .out_o_data_0_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_windowing_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_windowing_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_windowing_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_windowing6_sr(BLACKBOX,46)
    windowing_i_llvm_fpga_pipeline_keep_going36_6_sr thei_llvm_fpga_pipeline_keep_going36_windowing6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo_out_stall_out),
        .in_i_valid(bb_windowing_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going36_windowing6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going36_windowing6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B2(BLACKBOX,8)
    windowing_bb_B2 thebb_windowing_B2 (
        .in_flush(in_start),
        .in_forked33_0(GND_q),
        .in_forked33_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked5164_0(GND_q),
        .in_forked5164_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi15_pop965_0(GND_q),
        .in_memdep_phi15_pop965_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi16_pop1066_0(GND_q),
        .in_memdep_phi16_pop1066_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi18_pop1167_0(GND_q),
        .in_memdep_phi18_pop1167_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi23_pop1269_0(GND_q),
        .in_memdep_phi23_pop1269_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_windowing_avm_readdata(in_memdep_windowing_avm_readdata),
        .in_memdep_windowing_avm_readdatavalid(in_memdep_windowing_avm_readdatavalid),
        .in_memdep_windowing_avm_waitrequest(in_memdep_windowing_avm_waitrequest),
        .in_memdep_windowing_avm_writeack(in_memdep_windowing_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going36_windowing6_sr_out_o_stall),
        .in_reduction_windowing_168_0(GND_q),
        .in_reduction_windowing_168_1(bb_windowing_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_windowing_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going36_windowing6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_windowing_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_windowing_B2_out_c0_exe10),
        .out_c0_exe3(bb_windowing_B2_out_c0_exe3),
        .out_c0_exe4(bb_windowing_B2_out_c0_exe4),
        .out_c0_exe7(bb_windowing_B2_out_c0_exe7),
        .out_c0_exe8(bb_windowing_B2_out_c0_exe8),
        .out_c0_exe9(bb_windowing_B2_out_c0_exe9),
        .out_exiting_stall_out(bb_windowing_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_windowing_B2_out_exiting_valid_out),
        .out_memdep(bb_windowing_B2_out_memdep),
        .out_memdep_windowing_avm_address(bb_windowing_B2_out_memdep_windowing_avm_address),
        .out_memdep_windowing_avm_burstcount(bb_windowing_B2_out_memdep_windowing_avm_burstcount),
        .out_memdep_windowing_avm_byteenable(bb_windowing_B2_out_memdep_windowing_avm_byteenable),
        .out_memdep_windowing_avm_enable(bb_windowing_B2_out_memdep_windowing_avm_enable),
        .out_memdep_windowing_avm_read(bb_windowing_B2_out_memdep_windowing_avm_read),
        .out_memdep_windowing_avm_write(bb_windowing_B2_out_memdep_windowing_avm_write),
        .out_memdep_windowing_avm_writedata(bb_windowing_B2_out_memdep_windowing_avm_writedata),
        .out_pipeline_valid_out(bb_windowing_B2_out_pipeline_valid_out),
        .out_stall_in_0(bb_windowing_B2_out_stall_in_0),
        .out_stall_out_0(bb_windowing_B2_out_stall_out_0),
        .out_stall_out_1(bb_windowing_B2_out_stall_out_1),
        .out_valid_in_0(bb_windowing_B2_out_valid_in_0),
        .out_valid_in_1(bb_windowing_B2_out_valid_in_1),
        .out_valid_out_0(bb_windowing_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B2_sr_1_aunroll_x(BLACKBOX,2)
    windowing_bb_B2_sr_1 thebb_windowing_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_windowing_B1_start_out_c0_exe2),
        .in_i_data_2_tpl(bb_windowing_B1_start_out_memdep_phi15_pop9),
        .in_i_data_3_tpl(bb_windowing_B1_start_out_memdep_phi16_pop10),
        .in_i_data_4_tpl(bb_windowing_B1_start_out_memdep_phi18_pop11),
        .in_i_data_5_tpl(bb_windowing_B1_start_out_reduction_windowing_1),
        .in_i_data_6_tpl(bb_windowing_B1_start_out_memdep_phi23_pop12),
        .in_i_stall(bb_windowing_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_windowing0_out_o_valid),
        .out_o_data_0_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_windowing_B2_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_windowing_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_windowing_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_windowing0(BLACKBOX,100)
    windowing_loop_limiter_0 theloop_limiter_windowing0 (
        .in_i_stall(bb_windowing_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_windowing_B2_out_exiting_stall_out),
        .in_i_valid(bb_windowing_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_windowing_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_windowing0_out_o_stall),
        .out_o_valid(loop_limiter_windowing0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going49_windowing2_sr(BLACKBOX,48)
    windowing_i_llvm_fpga_pipeline_keep_going49_2_sr thei_llvm_fpga_pipeline_keep_going49_windowing2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo_out_stall_out),
        .in_i_valid(bb_windowing_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going49_windowing2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going49_windowing2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo(BLACKBOX,51)
    windowing_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo (
        .in_data_in(c_i2_051_q),
        .in_stall_in(bb_windowing_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_windowing6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B5_sr_0_aunroll_x(BLACKBOX,5)
    windowing_bb_B5_sr_0 thebb_windowing_B5_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_windowing_B4_out_c0_exe6123),
        .in_i_data_1_tpl(bb_windowing_B4_out_c0_exe7124),
        .in_i_data_2_tpl(bb_windowing_B4_out_c0_exe8125),
        .in_i_data_3_tpl(bb_windowing_B4_out_c0_exe9126),
        .in_i_data_4_tpl(bb_windowing_B4_out_memdep_14),
        .in_i_stall(bb_windowing_B5_out_stall_out_0),
        .in_i_valid(bb_windowing_B4_out_valid_out_0),
        .out_o_data_0_tpl(bb_windowing_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_windowing_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_windowing_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_windowing_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_windowing_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_windowing_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_windowing_B5_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_windowing6_sr(BLACKBOX,50)
    windowing_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_windowing6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo_out_stall_out),
        .in_i_valid(bb_windowing_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_windowing6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_windowing6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B4(BLACKBOX,10)
    windowing_bb_B4 thebb_windowing_B4 (
        .in_flush(in_start),
        .in_forked5152_pop1775_0(GND_q),
        .in_forked5152_pop1775_1(bb_windowing_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_windowing_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_14_windowing_avm_readdata(in_memdep_14_windowing_avm_readdata),
        .in_memdep_14_windowing_avm_readdatavalid(in_memdep_14_windowing_avm_readdatavalid),
        .in_memdep_14_windowing_avm_waitrequest(in_memdep_14_windowing_avm_waitrequest),
        .in_memdep_14_windowing_avm_writeack(in_memdep_14_windowing_avm_writeack),
        .in_memdep_phi16_pop1055_pop1978_0(GND_q),
        .in_memdep_phi16_pop1055_pop1978_1(bb_windowing_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi23_or2472_0(GND_q),
        .in_memdep_phi23_or2472_1(bb_windowing_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi23_pop1259_pop2270_0(GND_q),
        .in_memdep_phi23_pop1259_pop2270_1(bb_windowing_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_windowing6_sr_out_o_stall),
        .in_reduction_windowing_581_0(GND_q),
        .in_reduction_windowing_581_1(bb_windowing_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_windowing_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_windowing6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_windowing_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe6123(bb_windowing_B4_out_c0_exe6123),
        .out_c0_exe7124(bb_windowing_B4_out_c0_exe7124),
        .out_c0_exe8125(bb_windowing_B4_out_c0_exe8125),
        .out_c0_exe9126(bb_windowing_B4_out_c0_exe9126),
        .out_exiting_stall_out(bb_windowing_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_windowing_B4_out_exiting_valid_out),
        .out_memdep_14(bb_windowing_B4_out_memdep_14),
        .out_memdep_14_windowing_avm_address(bb_windowing_B4_out_memdep_14_windowing_avm_address),
        .out_memdep_14_windowing_avm_burstcount(bb_windowing_B4_out_memdep_14_windowing_avm_burstcount),
        .out_memdep_14_windowing_avm_byteenable(bb_windowing_B4_out_memdep_14_windowing_avm_byteenable),
        .out_memdep_14_windowing_avm_enable(bb_windowing_B4_out_memdep_14_windowing_avm_enable),
        .out_memdep_14_windowing_avm_read(bb_windowing_B4_out_memdep_14_windowing_avm_read),
        .out_memdep_14_windowing_avm_write(bb_windowing_B4_out_memdep_14_windowing_avm_write),
        .out_memdep_14_windowing_avm_writedata(bb_windowing_B4_out_memdep_14_windowing_avm_writedata),
        .out_pipeline_valid_out(bb_windowing_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_windowing_B4_out_stall_in_0),
        .out_stall_out_0(bb_windowing_B4_out_stall_out_0),
        .out_stall_out_1(bb_windowing_B4_out_stall_out_1),
        .out_valid_in_0(bb_windowing_B4_out_valid_in_0),
        .out_valid_in_1(bb_windowing_B4_out_valid_in_1),
        .out_valid_out_0(bb_windowing_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B4_sr_1_aunroll_x(BLACKBOX,4)
    windowing_bb_B4_sr_1 thebb_windowing_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_windowing_B3_out_c0_exe31),
        .in_i_data_2_tpl(bb_windowing_B3_out_c0_exe42),
        .in_i_data_3_tpl(bb_windowing_B3_out_c0_exe73),
        .in_i_data_4_tpl(bb_windowing_B3_out_c0_exe95),
        .in_i_data_5_tpl(bb_windowing_B3_out_reduction_windowing_5),
        .in_i_stall(bb_windowing_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_windowing1_out_o_valid),
        .out_o_data_0_tpl(bb_windowing_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_windowing_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_windowing_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_windowing_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_windowing_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_windowing_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_stall(bb_windowing_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_windowing_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_windowing1(BLACKBOX,101)
    windowing_loop_limiter_1 theloop_limiter_windowing1 (
        .in_i_stall(bb_windowing_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_windowing_B4_out_exiting_stall_out),
        .in_i_valid(bb_windowing_B3_out_valid_out_0),
        .in_i_valid_exit(bb_windowing_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_windowing1_out_o_stall),
        .out_o_valid(loop_limiter_windowing1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B3(BLACKBOX,9)
    windowing_bb_B3 thebb_windowing_B3 (
        .in_c0_exe106_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe31_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe73_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe84_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe95_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_feedback_stall_in_8(bb_windowing_B1_start_out_feedback_stall_out_8),
        .in_flush(in_start),
        .in_memdep_12_windowing_avm_readdata(in_memdep_12_windowing_avm_readdata),
        .in_memdep_12_windowing_avm_readdatavalid(in_memdep_12_windowing_avm_readdatavalid),
        .in_memdep_12_windowing_avm_waitrequest(in_memdep_12_windowing_avm_waitrequest),
        .in_memdep_12_windowing_avm_writeack(in_memdep_12_windowing_avm_writeack),
        .in_memdep_13_windowing_avm_readdata(in_memdep_13_windowing_avm_readdata),
        .in_memdep_13_windowing_avm_readdatavalid(in_memdep_13_windowing_avm_readdatavalid),
        .in_memdep_13_windowing_avm_waitrequest(in_memdep_13_windowing_avm_waitrequest),
        .in_memdep_13_windowing_avm_writeack(in_memdep_13_windowing_avm_writeack),
        .in_memdep_7_0(bb_windowing_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(loop_limiter_windowing1_out_o_stall),
        .in_valid_in_0(bb_windowing_B3_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe31(bb_windowing_B3_out_c0_exe31),
        .out_c0_exe42(bb_windowing_B3_out_c0_exe42),
        .out_c0_exe73(bb_windowing_B3_out_c0_exe73),
        .out_c0_exe95(bb_windowing_B3_out_c0_exe95),
        .out_feedback_out_8(bb_windowing_B3_out_feedback_out_8),
        .out_feedback_valid_out_8(bb_windowing_B3_out_feedback_valid_out_8),
        .out_memdep_12_windowing_avm_address(bb_windowing_B3_out_memdep_12_windowing_avm_address),
        .out_memdep_12_windowing_avm_burstcount(bb_windowing_B3_out_memdep_12_windowing_avm_burstcount),
        .out_memdep_12_windowing_avm_byteenable(bb_windowing_B3_out_memdep_12_windowing_avm_byteenable),
        .out_memdep_12_windowing_avm_enable(bb_windowing_B3_out_memdep_12_windowing_avm_enable),
        .out_memdep_12_windowing_avm_read(bb_windowing_B3_out_memdep_12_windowing_avm_read),
        .out_memdep_12_windowing_avm_write(bb_windowing_B3_out_memdep_12_windowing_avm_write),
        .out_memdep_12_windowing_avm_writedata(bb_windowing_B3_out_memdep_12_windowing_avm_writedata),
        .out_memdep_13_windowing_avm_address(bb_windowing_B3_out_memdep_13_windowing_avm_address),
        .out_memdep_13_windowing_avm_burstcount(bb_windowing_B3_out_memdep_13_windowing_avm_burstcount),
        .out_memdep_13_windowing_avm_byteenable(bb_windowing_B3_out_memdep_13_windowing_avm_byteenable),
        .out_memdep_13_windowing_avm_enable(bb_windowing_B3_out_memdep_13_windowing_avm_enable),
        .out_memdep_13_windowing_avm_read(bb_windowing_B3_out_memdep_13_windowing_avm_read),
        .out_memdep_13_windowing_avm_write(bb_windowing_B3_out_memdep_13_windowing_avm_write),
        .out_memdep_13_windowing_avm_writedata(bb_windowing_B3_out_memdep_13_windowing_avm_writedata),
        .out_reduction_windowing_5(bb_windowing_B3_out_reduction_windowing_5),
        .out_stall_out_0(bb_windowing_B3_out_stall_out_0),
        .out_valid_out_0(bb_windowing_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B5(BLACKBOX,11)
    windowing_bb_B5 thebb_windowing_B5 (
        .in_c0_exe61238_0(bb_windowing_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe71249_0(bb_windowing_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe812510_0(bb_windowing_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe912611_0(bb_windowing_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_10(bb_windowing_B1_start_out_feedback_stall_out_10),
        .in_feedback_stall_in_11(bb_windowing_B1_start_out_feedback_stall_out_11),
        .in_feedback_stall_in_12(bb_windowing_B1_start_out_feedback_stall_out_12),
        .in_feedback_stall_in_9(bb_windowing_B1_start_out_feedback_stall_out_9),
        .in_flush(in_start),
        .in_iord_bl_return_aggregation_i_fifodata(in_iord_bl_return_aggregation_i_fifodata),
        .in_iord_bl_return_aggregation_i_fifovalid(in_iord_bl_return_aggregation_i_fifovalid),
        .in_iord_bl_stream_in_tuple_i_fifodata(in_iord_bl_stream_in_tuple_i_fifodata),
        .in_iord_bl_stream_in_tuple_i_fifovalid(in_iord_bl_stream_in_tuple_i_fifovalid),
        .in_iowr_bl_call_aggregation_i_fifoready(in_iowr_bl_call_aggregation_i_fifoready),
        .in_iowr_bl_return_windowing_i_fifoready(in_iowr_bl_return_windowing_i_fifoready),
        .in_iowr_bl_stream_out_tuple_i_fifoready(in_iowr_bl_stream_out_tuple_i_fifoready),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack(in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack),
        .in_memdep_1412_0(bb_windowing_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_memdep_19_windowing_avm_readdata(in_memdep_19_windowing_avm_readdata),
        .in_memdep_19_windowing_avm_readdatavalid(in_memdep_19_windowing_avm_readdatavalid),
        .in_memdep_19_windowing_avm_waitrequest(in_memdep_19_windowing_avm_waitrequest),
        .in_memdep_19_windowing_avm_writeack(in_memdep_19_windowing_avm_writeack),
        .in_memdep_310_windowing_avm_readdata(in_memdep_310_windowing_avm_readdata),
        .in_memdep_310_windowing_avm_readdatavalid(in_memdep_310_windowing_avm_readdatavalid),
        .in_memdep_310_windowing_avm_waitrequest(in_memdep_310_windowing_avm_waitrequest),
        .in_memdep_310_windowing_avm_writeack(in_memdep_310_windowing_avm_writeack),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_windowing_B5_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_10(bb_windowing_B5_out_feedback_out_10),
        .out_feedback_out_11(bb_windowing_B5_out_feedback_out_11),
        .out_feedback_out_12(bb_windowing_B5_out_feedback_out_12),
        .out_feedback_out_9(bb_windowing_B5_out_feedback_out_9),
        .out_feedback_valid_out_10(bb_windowing_B5_out_feedback_valid_out_10),
        .out_feedback_valid_out_11(bb_windowing_B5_out_feedback_valid_out_11),
        .out_feedback_valid_out_12(bb_windowing_B5_out_feedback_valid_out_12),
        .out_feedback_valid_out_9(bb_windowing_B5_out_feedback_valid_out_9),
        .out_iord_bl_return_aggregation_o_fifoalmost_full(bb_windowing_B5_out_iord_bl_return_aggregation_o_fifoalmost_full),
        .out_iord_bl_return_aggregation_o_fifoready(bb_windowing_B5_out_iord_bl_return_aggregation_o_fifoready),
        .out_iord_bl_stream_in_tuple_o_fifoalmost_full(bb_windowing_B5_out_iord_bl_stream_in_tuple_o_fifoalmost_full),
        .out_iord_bl_stream_in_tuple_o_fifoready(bb_windowing_B5_out_iord_bl_stream_in_tuple_o_fifoready),
        .out_iowr_bl_call_aggregation_o_fifodata(bb_windowing_B5_out_iowr_bl_call_aggregation_o_fifodata),
        .out_iowr_bl_call_aggregation_o_fifovalid(bb_windowing_B5_out_iowr_bl_call_aggregation_o_fifovalid),
        .out_iowr_bl_return_windowing_o_fifodata(bb_windowing_B5_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(bb_windowing_B5_out_iowr_bl_return_windowing_o_fifovalid),
        .out_iowr_bl_stream_out_tuple_o_fifodata(bb_windowing_B5_out_iowr_bl_stream_out_tuple_o_fifodata),
        .out_iowr_bl_stream_out_tuple_o_fifovalid(bb_windowing_B5_out_iowr_bl_stream_out_tuple_o_fifovalid),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata(bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata),
        .out_memdep_19_windowing_avm_address(bb_windowing_B5_out_memdep_19_windowing_avm_address),
        .out_memdep_19_windowing_avm_burstcount(bb_windowing_B5_out_memdep_19_windowing_avm_burstcount),
        .out_memdep_19_windowing_avm_byteenable(bb_windowing_B5_out_memdep_19_windowing_avm_byteenable),
        .out_memdep_19_windowing_avm_enable(bb_windowing_B5_out_memdep_19_windowing_avm_enable),
        .out_memdep_19_windowing_avm_read(bb_windowing_B5_out_memdep_19_windowing_avm_read),
        .out_memdep_19_windowing_avm_write(bb_windowing_B5_out_memdep_19_windowing_avm_write),
        .out_memdep_19_windowing_avm_writedata(bb_windowing_B5_out_memdep_19_windowing_avm_writedata),
        .out_memdep_310_windowing_avm_address(bb_windowing_B5_out_memdep_310_windowing_avm_address),
        .out_memdep_310_windowing_avm_burstcount(bb_windowing_B5_out_memdep_310_windowing_avm_burstcount),
        .out_memdep_310_windowing_avm_byteenable(bb_windowing_B5_out_memdep_310_windowing_avm_byteenable),
        .out_memdep_310_windowing_avm_enable(bb_windowing_B5_out_memdep_310_windowing_avm_enable),
        .out_memdep_310_windowing_avm_read(bb_windowing_B5_out_memdep_310_windowing_avm_read),
        .out_memdep_310_windowing_avm_write(bb_windowing_B5_out_memdep_310_windowing_avm_write),
        .out_memdep_310_windowing_avm_writedata(bb_windowing_B5_out_memdep_310_windowing_avm_writedata),
        .out_stall_in_0(bb_windowing_B5_out_stall_in_0),
        .out_stall_out_0(bb_windowing_B5_out_stall_out_0),
        .out_valid_out_0(bb_windowing_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B1_start(BLACKBOX,7)
    windowing_bb_B1_start thebb_windowing_B1_start (
        .in_feedback_in_10(bb_windowing_B5_out_feedback_out_10),
        .in_feedback_in_11(bb_windowing_B5_out_feedback_out_11),
        .in_feedback_in_12(bb_windowing_B5_out_feedback_out_12),
        .in_feedback_in_8(bb_windowing_B3_out_feedback_out_8),
        .in_feedback_in_9(bb_windowing_B5_out_feedback_out_9),
        .in_feedback_valid_in_10(bb_windowing_B5_out_feedback_valid_out_10),
        .in_feedback_valid_in_11(bb_windowing_B5_out_feedback_valid_out_11),
        .in_feedback_valid_in_12(bb_windowing_B5_out_feedback_valid_out_12),
        .in_feedback_valid_in_8(bb_windowing_B3_out_feedback_valid_out_8),
        .in_feedback_valid_in_9(bb_windowing_B5_out_feedback_valid_out_9),
        .in_flush(in_start),
        .in_forked51_0(GND_q),
        .in_forked51_1(VCC_q),
        .in_iord_bl_call_windowing_i_fifodata(in_iord_bl_call_windowing_i_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(in_iord_bl_call_windowing_i_fifovalid),
        .in_memdep_8_windowing_avm_readdata(in_memdep_8_windowing_avm_readdata),
        .in_memdep_8_windowing_avm_readdatavalid(in_memdep_8_windowing_avm_readdatavalid),
        .in_memdep_8_windowing_avm_waitrequest(in_memdep_8_windowing_avm_waitrequest),
        .in_memdep_8_windowing_avm_writeack(in_memdep_8_windowing_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going49_windowing2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_windowing0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going49_windowing2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_c0_exe2(bb_windowing_B1_start_out_c0_exe2),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_10(bb_windowing_B1_start_out_feedback_stall_out_10),
        .out_feedback_stall_out_11(bb_windowing_B1_start_out_feedback_stall_out_11),
        .out_feedback_stall_out_12(bb_windowing_B1_start_out_feedback_stall_out_12),
        .out_feedback_stall_out_8(bb_windowing_B1_start_out_feedback_stall_out_8),
        .out_feedback_stall_out_9(bb_windowing_B1_start_out_feedback_stall_out_9),
        .out_iord_bl_call_windowing_o_fifoalmost_full(bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoalmost_full),
        .out_iord_bl_call_windowing_o_fifoready(bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoready),
        .out_memdep_8_windowing_avm_address(bb_windowing_B1_start_out_memdep_8_windowing_avm_address),
        .out_memdep_8_windowing_avm_burstcount(bb_windowing_B1_start_out_memdep_8_windowing_avm_burstcount),
        .out_memdep_8_windowing_avm_byteenable(bb_windowing_B1_start_out_memdep_8_windowing_avm_byteenable),
        .out_memdep_8_windowing_avm_enable(bb_windowing_B1_start_out_memdep_8_windowing_avm_enable),
        .out_memdep_8_windowing_avm_read(bb_windowing_B1_start_out_memdep_8_windowing_avm_read),
        .out_memdep_8_windowing_avm_write(bb_windowing_B1_start_out_memdep_8_windowing_avm_write),
        .out_memdep_8_windowing_avm_writedata(bb_windowing_B1_start_out_memdep_8_windowing_avm_writedata),
        .out_memdep_phi15_pop9(bb_windowing_B1_start_out_memdep_phi15_pop9),
        .out_memdep_phi16_pop10(bb_windowing_B1_start_out_memdep_phi16_pop10),
        .out_memdep_phi18_pop11(bb_windowing_B1_start_out_memdep_phi18_pop11),
        .out_memdep_phi23_pop12(bb_windowing_B1_start_out_memdep_phi23_pop12),
        .out_pipeline_valid_out(bb_windowing_B1_start_out_pipeline_valid_out),
        .out_reduction_windowing_1(bb_windowing_B1_start_out_reduction_windowing_1),
        .out_stall_out_0(bb_windowing_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_windowing_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_windowing_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_windowing_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_windowing_o_fifoalmost_full(GPOUT,102)
    assign out_iord_bl_call_windowing_o_fifoalmost_full = bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoalmost_full;

    // out_iord_bl_call_windowing_o_fifoready(GPOUT,103)
    assign out_iord_bl_call_windowing_o_fifoready = bb_windowing_B1_start_out_iord_bl_call_windowing_o_fifoready;

    // out_iord_bl_return_aggregation_o_fifoalmost_full(GPOUT,104)
    assign out_iord_bl_return_aggregation_o_fifoalmost_full = bb_windowing_B5_out_iord_bl_return_aggregation_o_fifoalmost_full;

    // out_iord_bl_return_aggregation_o_fifoready(GPOUT,105)
    assign out_iord_bl_return_aggregation_o_fifoready = bb_windowing_B5_out_iord_bl_return_aggregation_o_fifoready;

    // out_iord_bl_stream_in_tuple_o_fifoalmost_full(GPOUT,106)
    assign out_iord_bl_stream_in_tuple_o_fifoalmost_full = bb_windowing_B5_out_iord_bl_stream_in_tuple_o_fifoalmost_full;

    // out_iord_bl_stream_in_tuple_o_fifoready(GPOUT,107)
    assign out_iord_bl_stream_in_tuple_o_fifoready = bb_windowing_B5_out_iord_bl_stream_in_tuple_o_fifoready;

    // out_iowr_bl_call_aggregation_o_fifodata(GPOUT,108)
    assign out_iowr_bl_call_aggregation_o_fifodata = bb_windowing_B5_out_iowr_bl_call_aggregation_o_fifodata;

    // out_iowr_bl_call_aggregation_o_fifovalid(GPOUT,109)
    assign out_iowr_bl_call_aggregation_o_fifovalid = bb_windowing_B5_out_iowr_bl_call_aggregation_o_fifovalid;

    // out_iowr_bl_return_windowing_o_fifodata(GPOUT,110)
    assign out_iowr_bl_return_windowing_o_fifodata = bb_windowing_B5_out_iowr_bl_return_windowing_o_fifodata;

    // out_iowr_bl_return_windowing_o_fifovalid(GPOUT,111)
    assign out_iowr_bl_return_windowing_o_fifovalid = bb_windowing_B5_out_iowr_bl_return_windowing_o_fifovalid;

    // out_iowr_bl_stream_out_tuple_o_fifodata(GPOUT,112)
    assign out_iowr_bl_stream_out_tuple_o_fifodata = bb_windowing_B5_out_iowr_bl_stream_out_tuple_o_fifodata;

    // out_iowr_bl_stream_out_tuple_o_fifovalid(GPOUT,113)
    assign out_iowr_bl_stream_out_tuple_o_fifovalid = bb_windowing_B5_out_iowr_bl_stream_out_tuple_o_fifovalid;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address(GPOUT,114)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount(GPOUT,115)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable(GPOUT,116)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable(GPOUT,117)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read(GPOUT,118)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write(GPOUT,119)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata(GPOUT,120)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata = bb_windowing_B5_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;

    // out_memdep_12_windowing_avm_address(GPOUT,121)
    assign out_memdep_12_windowing_avm_address = bb_windowing_B3_out_memdep_12_windowing_avm_address;

    // out_memdep_12_windowing_avm_burstcount(GPOUT,122)
    assign out_memdep_12_windowing_avm_burstcount = bb_windowing_B3_out_memdep_12_windowing_avm_burstcount;

    // out_memdep_12_windowing_avm_byteenable(GPOUT,123)
    assign out_memdep_12_windowing_avm_byteenable = bb_windowing_B3_out_memdep_12_windowing_avm_byteenable;

    // out_memdep_12_windowing_avm_enable(GPOUT,124)
    assign out_memdep_12_windowing_avm_enable = bb_windowing_B3_out_memdep_12_windowing_avm_enable;

    // out_memdep_12_windowing_avm_read(GPOUT,125)
    assign out_memdep_12_windowing_avm_read = bb_windowing_B3_out_memdep_12_windowing_avm_read;

    // out_memdep_12_windowing_avm_write(GPOUT,126)
    assign out_memdep_12_windowing_avm_write = bb_windowing_B3_out_memdep_12_windowing_avm_write;

    // out_memdep_12_windowing_avm_writedata(GPOUT,127)
    assign out_memdep_12_windowing_avm_writedata = bb_windowing_B3_out_memdep_12_windowing_avm_writedata;

    // out_memdep_13_windowing_avm_address(GPOUT,128)
    assign out_memdep_13_windowing_avm_address = bb_windowing_B3_out_memdep_13_windowing_avm_address;

    // out_memdep_13_windowing_avm_burstcount(GPOUT,129)
    assign out_memdep_13_windowing_avm_burstcount = bb_windowing_B3_out_memdep_13_windowing_avm_burstcount;

    // out_memdep_13_windowing_avm_byteenable(GPOUT,130)
    assign out_memdep_13_windowing_avm_byteenable = bb_windowing_B3_out_memdep_13_windowing_avm_byteenable;

    // out_memdep_13_windowing_avm_enable(GPOUT,131)
    assign out_memdep_13_windowing_avm_enable = bb_windowing_B3_out_memdep_13_windowing_avm_enable;

    // out_memdep_13_windowing_avm_read(GPOUT,132)
    assign out_memdep_13_windowing_avm_read = bb_windowing_B3_out_memdep_13_windowing_avm_read;

    // out_memdep_13_windowing_avm_write(GPOUT,133)
    assign out_memdep_13_windowing_avm_write = bb_windowing_B3_out_memdep_13_windowing_avm_write;

    // out_memdep_13_windowing_avm_writedata(GPOUT,134)
    assign out_memdep_13_windowing_avm_writedata = bb_windowing_B3_out_memdep_13_windowing_avm_writedata;

    // out_memdep_14_windowing_avm_address(GPOUT,135)
    assign out_memdep_14_windowing_avm_address = bb_windowing_B4_out_memdep_14_windowing_avm_address;

    // out_memdep_14_windowing_avm_burstcount(GPOUT,136)
    assign out_memdep_14_windowing_avm_burstcount = bb_windowing_B4_out_memdep_14_windowing_avm_burstcount;

    // out_memdep_14_windowing_avm_byteenable(GPOUT,137)
    assign out_memdep_14_windowing_avm_byteenable = bb_windowing_B4_out_memdep_14_windowing_avm_byteenable;

    // out_memdep_14_windowing_avm_enable(GPOUT,138)
    assign out_memdep_14_windowing_avm_enable = bb_windowing_B4_out_memdep_14_windowing_avm_enable;

    // out_memdep_14_windowing_avm_read(GPOUT,139)
    assign out_memdep_14_windowing_avm_read = bb_windowing_B4_out_memdep_14_windowing_avm_read;

    // out_memdep_14_windowing_avm_write(GPOUT,140)
    assign out_memdep_14_windowing_avm_write = bb_windowing_B4_out_memdep_14_windowing_avm_write;

    // out_memdep_14_windowing_avm_writedata(GPOUT,141)
    assign out_memdep_14_windowing_avm_writedata = bb_windowing_B4_out_memdep_14_windowing_avm_writedata;

    // out_memdep_19_windowing_avm_address(GPOUT,142)
    assign out_memdep_19_windowing_avm_address = bb_windowing_B5_out_memdep_19_windowing_avm_address;

    // out_memdep_19_windowing_avm_burstcount(GPOUT,143)
    assign out_memdep_19_windowing_avm_burstcount = bb_windowing_B5_out_memdep_19_windowing_avm_burstcount;

    // out_memdep_19_windowing_avm_byteenable(GPOUT,144)
    assign out_memdep_19_windowing_avm_byteenable = bb_windowing_B5_out_memdep_19_windowing_avm_byteenable;

    // out_memdep_19_windowing_avm_enable(GPOUT,145)
    assign out_memdep_19_windowing_avm_enable = bb_windowing_B5_out_memdep_19_windowing_avm_enable;

    // out_memdep_19_windowing_avm_read(GPOUT,146)
    assign out_memdep_19_windowing_avm_read = bb_windowing_B5_out_memdep_19_windowing_avm_read;

    // out_memdep_19_windowing_avm_write(GPOUT,147)
    assign out_memdep_19_windowing_avm_write = bb_windowing_B5_out_memdep_19_windowing_avm_write;

    // out_memdep_19_windowing_avm_writedata(GPOUT,148)
    assign out_memdep_19_windowing_avm_writedata = bb_windowing_B5_out_memdep_19_windowing_avm_writedata;

    // out_memdep_310_windowing_avm_address(GPOUT,149)
    assign out_memdep_310_windowing_avm_address = bb_windowing_B5_out_memdep_310_windowing_avm_address;

    // out_memdep_310_windowing_avm_burstcount(GPOUT,150)
    assign out_memdep_310_windowing_avm_burstcount = bb_windowing_B5_out_memdep_310_windowing_avm_burstcount;

    // out_memdep_310_windowing_avm_byteenable(GPOUT,151)
    assign out_memdep_310_windowing_avm_byteenable = bb_windowing_B5_out_memdep_310_windowing_avm_byteenable;

    // out_memdep_310_windowing_avm_enable(GPOUT,152)
    assign out_memdep_310_windowing_avm_enable = bb_windowing_B5_out_memdep_310_windowing_avm_enable;

    // out_memdep_310_windowing_avm_read(GPOUT,153)
    assign out_memdep_310_windowing_avm_read = bb_windowing_B5_out_memdep_310_windowing_avm_read;

    // out_memdep_310_windowing_avm_write(GPOUT,154)
    assign out_memdep_310_windowing_avm_write = bb_windowing_B5_out_memdep_310_windowing_avm_write;

    // out_memdep_310_windowing_avm_writedata(GPOUT,155)
    assign out_memdep_310_windowing_avm_writedata = bb_windowing_B5_out_memdep_310_windowing_avm_writedata;

    // out_memdep_8_windowing_avm_address(GPOUT,156)
    assign out_memdep_8_windowing_avm_address = bb_windowing_B1_start_out_memdep_8_windowing_avm_address;

    // out_memdep_8_windowing_avm_burstcount(GPOUT,157)
    assign out_memdep_8_windowing_avm_burstcount = bb_windowing_B1_start_out_memdep_8_windowing_avm_burstcount;

    // out_memdep_8_windowing_avm_byteenable(GPOUT,158)
    assign out_memdep_8_windowing_avm_byteenable = bb_windowing_B1_start_out_memdep_8_windowing_avm_byteenable;

    // out_memdep_8_windowing_avm_enable(GPOUT,159)
    assign out_memdep_8_windowing_avm_enable = bb_windowing_B1_start_out_memdep_8_windowing_avm_enable;

    // out_memdep_8_windowing_avm_read(GPOUT,160)
    assign out_memdep_8_windowing_avm_read = bb_windowing_B1_start_out_memdep_8_windowing_avm_read;

    // out_memdep_8_windowing_avm_write(GPOUT,161)
    assign out_memdep_8_windowing_avm_write = bb_windowing_B1_start_out_memdep_8_windowing_avm_write;

    // out_memdep_8_windowing_avm_writedata(GPOUT,162)
    assign out_memdep_8_windowing_avm_writedata = bb_windowing_B1_start_out_memdep_8_windowing_avm_writedata;

    // out_memdep_windowing_avm_address(GPOUT,163)
    assign out_memdep_windowing_avm_address = bb_windowing_B2_out_memdep_windowing_avm_address;

    // out_memdep_windowing_avm_burstcount(GPOUT,164)
    assign out_memdep_windowing_avm_burstcount = bb_windowing_B2_out_memdep_windowing_avm_burstcount;

    // out_memdep_windowing_avm_byteenable(GPOUT,165)
    assign out_memdep_windowing_avm_byteenable = bb_windowing_B2_out_memdep_windowing_avm_byteenable;

    // out_memdep_windowing_avm_enable(GPOUT,166)
    assign out_memdep_windowing_avm_enable = bb_windowing_B2_out_memdep_windowing_avm_enable;

    // out_memdep_windowing_avm_read(GPOUT,167)
    assign out_memdep_windowing_avm_read = bb_windowing_B2_out_memdep_windowing_avm_read;

    // out_memdep_windowing_avm_write(GPOUT,168)
    assign out_memdep_windowing_avm_write = bb_windowing_B2_out_memdep_windowing_avm_write;

    // out_memdep_windowing_avm_writedata(GPOUT,169)
    assign out_memdep_windowing_avm_writedata = bb_windowing_B2_out_memdep_windowing_avm_writedata;

    // bb_windowing_B0_runOnce(BLACKBOX,6)
    windowing_bb_B0_runOnce thebb_windowing_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_windowing_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,170)
    assign out_stall_out = bb_windowing_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,171)
    assign out_valid_out = GND_q;

    // windowing_B1_start_x(EXTIFACE,172)
    assign windowing_B1_start_x_i_capture = GND_q;
    assign windowing_B1_start_x_i_clear = GND_q;
    assign windowing_B1_start_x_i_enable = VCC_q;
    assign windowing_B1_start_x_i_shift = GND_q;
    assign windowing_B1_start_x_i_stall_pred = GND_q;
    assign windowing_B1_start_x_i_stall_succ = bb_windowing_B5_out_stall_in_0;
    assign windowing_B1_start_x_i_valid_loop = bb_windowing_B1_start_out_valid_in_0;
    assign windowing_B1_start_x_i_valid_pred = bb_windowing_B1_start_out_valid_in_1;
    assign windowing_B1_start_x_i_valid_succ = bb_windowing_B5_out_valid_out_0;
    assign windowing_B1_start_x_i_capture_bitsignaltemp = windowing_B1_start_x_i_capture[0];
    assign windowing_B1_start_x_i_clear_bitsignaltemp = windowing_B1_start_x_i_clear[0];
    assign windowing_B1_start_x_i_enable_bitsignaltemp = windowing_B1_start_x_i_enable[0];
    assign windowing_B1_start_x_i_shift_bitsignaltemp = windowing_B1_start_x_i_shift[0];
    assign windowing_B1_start_x_i_stall_pred_bitsignaltemp = windowing_B1_start_x_i_stall_pred[0];
    assign windowing_B1_start_x_i_stall_succ_bitsignaltemp = windowing_B1_start_x_i_stall_succ[0];
    assign windowing_B1_start_x_i_valid_loop_bitsignaltemp = windowing_B1_start_x_i_valid_loop[0];
    assign windowing_B1_start_x_i_valid_pred_bitsignaltemp = windowing_B1_start_x_i_valid_pred[0];
    assign windowing_B1_start_x_i_valid_succ_bitsignaltemp = windowing_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("windowing.B1.start")
    ) thewindowing_B1_start_x (
        .i_capture(windowing_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(windowing_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(windowing_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(windowing_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(windowing_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(windowing_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(windowing_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(windowing_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(windowing_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B2_x(EXTIFACE,173)
    assign windowing_B2_x_i_capture = GND_q;
    assign windowing_B2_x_i_clear = GND_q;
    assign windowing_B2_x_i_enable = VCC_q;
    assign windowing_B2_x_i_shift = GND_q;
    assign windowing_B2_x_i_stall_pred = loop_limiter_windowing0_out_o_stall;
    assign windowing_B2_x_i_stall_succ = bb_windowing_B2_out_stall_in_0;
    assign windowing_B2_x_i_valid_loop = bb_windowing_B2_out_valid_in_0;
    assign windowing_B2_x_i_valid_pred = bb_windowing_B2_out_valid_in_1;
    assign windowing_B2_x_i_valid_succ = bb_windowing_B2_out_valid_out_0;
    assign windowing_B2_x_i_capture_bitsignaltemp = windowing_B2_x_i_capture[0];
    assign windowing_B2_x_i_clear_bitsignaltemp = windowing_B2_x_i_clear[0];
    assign windowing_B2_x_i_enable_bitsignaltemp = windowing_B2_x_i_enable[0];
    assign windowing_B2_x_i_shift_bitsignaltemp = windowing_B2_x_i_shift[0];
    assign windowing_B2_x_i_stall_pred_bitsignaltemp = windowing_B2_x_i_stall_pred[0];
    assign windowing_B2_x_i_stall_succ_bitsignaltemp = windowing_B2_x_i_stall_succ[0];
    assign windowing_B2_x_i_valid_loop_bitsignaltemp = windowing_B2_x_i_valid_loop[0];
    assign windowing_B2_x_i_valid_pred_bitsignaltemp = windowing_B2_x_i_valid_pred[0];
    assign windowing_B2_x_i_valid_succ_bitsignaltemp = windowing_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("windowing.B2")
    ) thewindowing_B2_x (
        .i_capture(windowing_B2_x_i_capture_bitsignaltemp),
        .i_clear(windowing_B2_x_i_clear_bitsignaltemp),
        .i_enable(windowing_B2_x_i_enable_bitsignaltemp),
        .i_shift(windowing_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(windowing_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(windowing_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(windowing_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(windowing_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(windowing_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B4_x(EXTIFACE,174)
    assign windowing_B4_x_i_capture = GND_q;
    assign windowing_B4_x_i_clear = GND_q;
    assign windowing_B4_x_i_enable = VCC_q;
    assign windowing_B4_x_i_shift = GND_q;
    assign windowing_B4_x_i_stall_pred = loop_limiter_windowing1_out_o_stall;
    assign windowing_B4_x_i_stall_succ = bb_windowing_B4_out_stall_in_0;
    assign windowing_B4_x_i_valid_loop = bb_windowing_B4_out_valid_in_0;
    assign windowing_B4_x_i_valid_pred = bb_windowing_B4_out_valid_in_1;
    assign windowing_B4_x_i_valid_succ = bb_windowing_B4_out_valid_out_0;
    assign windowing_B4_x_i_capture_bitsignaltemp = windowing_B4_x_i_capture[0];
    assign windowing_B4_x_i_clear_bitsignaltemp = windowing_B4_x_i_clear[0];
    assign windowing_B4_x_i_enable_bitsignaltemp = windowing_B4_x_i_enable[0];
    assign windowing_B4_x_i_shift_bitsignaltemp = windowing_B4_x_i_shift[0];
    assign windowing_B4_x_i_stall_pred_bitsignaltemp = windowing_B4_x_i_stall_pred[0];
    assign windowing_B4_x_i_stall_succ_bitsignaltemp = windowing_B4_x_i_stall_succ[0];
    assign windowing_B4_x_i_valid_loop_bitsignaltemp = windowing_B4_x_i_valid_loop[0];
    assign windowing_B4_x_i_valid_pred_bitsignaltemp = windowing_B4_x_i_valid_pred[0];
    assign windowing_B4_x_i_valid_succ_bitsignaltemp = windowing_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("windowing.B4")
    ) thewindowing_B4_x (
        .i_capture(windowing_B4_x_i_capture_bitsignaltemp),
        .i_clear(windowing_B4_x_i_clear_bitsignaltemp),
        .i_enable(windowing_B4_x_i_enable_bitsignaltemp),
        .i_shift(windowing_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(windowing_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(windowing_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(windowing_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(windowing_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(windowing_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
