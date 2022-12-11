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

// SystemVerilog created from bb_windowing_B5
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B5 (
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
    input wire [0:0] in_c0_exe61238_0,
    input wire [0:0] in_c0_exe71249_0,
    input wire [0:0] in_c0_exe812510_0,
    input wire [0:0] in_c0_exe912611_0,
    input wire [0:0] in_flush,
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
    input wire [0:0] in_memdep_1412_0,
    input wire [511:0] in_memdep_19_windowing_avm_readdata,
    input wire [0:0] in_memdep_19_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_19_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_19_windowing_avm_writeack,
    input wire [511:0] in_memdep_310_windowing_avm_readdata,
    input wire [0:0] in_memdep_310_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_310_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_310_windowing_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
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
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_windowing_B5_stall_region_out_feedback_out_10;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_out_11;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_out_12;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_out_9;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_valid_out_10;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_valid_out_11;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_valid_out_12;
    wire [0:0] bb_windowing_B5_stall_region_out_feedback_valid_out_9;
    wire [0:0] bb_windowing_B5_stall_region_out_iord_bl_return_aggregation_o_fifoalmost_full;
    wire [0:0] bb_windowing_B5_stall_region_out_iord_bl_return_aggregation_o_fifoready;
    wire [0:0] bb_windowing_B5_stall_region_out_iord_bl_stream_in_tuple_o_fifoalmost_full;
    wire [0:0] bb_windowing_B5_stall_region_out_iord_bl_stream_in_tuple_o_fifoready;
    wire [447:0] bb_windowing_B5_stall_region_out_iowr_bl_call_aggregation_o_fifodata;
    wire [0:0] bb_windowing_B5_stall_region_out_iowr_bl_call_aggregation_o_fifovalid;
    wire [0:0] bb_windowing_B5_stall_region_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] bb_windowing_B5_stall_region_out_iowr_bl_return_windowing_o_fifovalid;
    wire [351:0] bb_windowing_B5_stall_region_out_iowr_bl_stream_out_tuple_o_fifodata;
    wire [0:0] bb_windowing_B5_stall_region_out_iowr_bl_stream_out_tuple_o_fifovalid;
    wire [31:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;
    wire [0:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;
    wire [0:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;
    wire [0:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;
    wire [511:0] bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;
    wire [31:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_address;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_enable;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_read;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_write;
    wire [511:0] bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_writedata;
    wire [31:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_address;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_enable;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_read;
    wire [0:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_write;
    wire [511:0] bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_writedata;
    wire [0:0] bb_windowing_B5_stall_region_out_stall_out;
    wire [0:0] bb_windowing_B5_stall_region_out_valid_out;
    wire [0:0] windowing_B5_branch_out_stall_out;
    wire [0:0] windowing_B5_branch_out_valid_out_0;
    wire [0:0] windowing_B5_merge_out_c0_exe61238;
    wire [0:0] windowing_B5_merge_out_c0_exe71249;
    wire [0:0] windowing_B5_merge_out_c0_exe812510;
    wire [0:0] windowing_B5_merge_out_c0_exe912611;
    wire [0:0] windowing_B5_merge_out_memdep_1412;
    wire [0:0] windowing_B5_merge_out_stall_out_0;
    wire [0:0] windowing_B5_merge_out_valid_out;


    // windowing_B5_branch(BLACKBOX,76)
    windowing_B5_branch thewindowing_B5_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_windowing_B5_stall_region_out_valid_out),
        .out_stall_out(windowing_B5_branch_out_stall_out),
        .out_valid_out_0(windowing_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B5_merge(BLACKBOX,77)
    windowing_B5_merge thewindowing_B5_merge (
        .in_c0_exe61238_0(in_c0_exe61238_0),
        .in_c0_exe71249_0(in_c0_exe71249_0),
        .in_c0_exe812510_0(in_c0_exe812510_0),
        .in_c0_exe912611_0(in_c0_exe912611_0),
        .in_memdep_1412_0(in_memdep_1412_0),
        .in_stall_in(bb_windowing_B5_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe61238(windowing_B5_merge_out_c0_exe61238),
        .out_c0_exe71249(windowing_B5_merge_out_c0_exe71249),
        .out_c0_exe812510(windowing_B5_merge_out_c0_exe812510),
        .out_c0_exe912611(windowing_B5_merge_out_c0_exe912611),
        .out_memdep_1412(windowing_B5_merge_out_memdep_1412),
        .out_stall_out_0(windowing_B5_merge_out_stall_out_0),
        .out_valid_out(windowing_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B5_stall_region(BLACKBOX,2)
    windowing_bb_B5_stall_region thebb_windowing_B5_stall_region (
        .in_c0_exe61238(windowing_B5_merge_out_c0_exe61238),
        .in_c0_exe71249(windowing_B5_merge_out_c0_exe71249),
        .in_c0_exe812510(windowing_B5_merge_out_c0_exe812510),
        .in_c0_exe912611(windowing_B5_merge_out_c0_exe912611),
        .in_feedback_stall_in_10(in_feedback_stall_in_10),
        .in_feedback_stall_in_11(in_feedback_stall_in_11),
        .in_feedback_stall_in_12(in_feedback_stall_in_12),
        .in_feedback_stall_in_9(in_feedback_stall_in_9),
        .in_flush(in_flush),
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
        .in_memdep_1412(windowing_B5_merge_out_memdep_1412),
        .in_memdep_19_windowing_avm_readdata(in_memdep_19_windowing_avm_readdata),
        .in_memdep_19_windowing_avm_readdatavalid(in_memdep_19_windowing_avm_readdatavalid),
        .in_memdep_19_windowing_avm_waitrequest(in_memdep_19_windowing_avm_waitrequest),
        .in_memdep_19_windowing_avm_writeack(in_memdep_19_windowing_avm_writeack),
        .in_memdep_310_windowing_avm_readdata(in_memdep_310_windowing_avm_readdata),
        .in_memdep_310_windowing_avm_readdatavalid(in_memdep_310_windowing_avm_readdatavalid),
        .in_memdep_310_windowing_avm_waitrequest(in_memdep_310_windowing_avm_waitrequest),
        .in_memdep_310_windowing_avm_writeack(in_memdep_310_windowing_avm_writeack),
        .in_stall_in(windowing_B5_branch_out_stall_out),
        .in_valid_in(windowing_B5_merge_out_valid_out),
        .out_feedback_out_10(bb_windowing_B5_stall_region_out_feedback_out_10),
        .out_feedback_out_11(bb_windowing_B5_stall_region_out_feedback_out_11),
        .out_feedback_out_12(bb_windowing_B5_stall_region_out_feedback_out_12),
        .out_feedback_out_9(bb_windowing_B5_stall_region_out_feedback_out_9),
        .out_feedback_valid_out_10(bb_windowing_B5_stall_region_out_feedback_valid_out_10),
        .out_feedback_valid_out_11(bb_windowing_B5_stall_region_out_feedback_valid_out_11),
        .out_feedback_valid_out_12(bb_windowing_B5_stall_region_out_feedback_valid_out_12),
        .out_feedback_valid_out_9(bb_windowing_B5_stall_region_out_feedback_valid_out_9),
        .out_iord_bl_return_aggregation_o_fifoalmost_full(bb_windowing_B5_stall_region_out_iord_bl_return_aggregation_o_fifoalmost_full),
        .out_iord_bl_return_aggregation_o_fifoready(bb_windowing_B5_stall_region_out_iord_bl_return_aggregation_o_fifoready),
        .out_iord_bl_stream_in_tuple_o_fifoalmost_full(bb_windowing_B5_stall_region_out_iord_bl_stream_in_tuple_o_fifoalmost_full),
        .out_iord_bl_stream_in_tuple_o_fifoready(bb_windowing_B5_stall_region_out_iord_bl_stream_in_tuple_o_fifoready),
        .out_iowr_bl_call_aggregation_o_fifodata(bb_windowing_B5_stall_region_out_iowr_bl_call_aggregation_o_fifodata),
        .out_iowr_bl_call_aggregation_o_fifovalid(bb_windowing_B5_stall_region_out_iowr_bl_call_aggregation_o_fifovalid),
        .out_iowr_bl_return_windowing_o_fifodata(bb_windowing_B5_stall_region_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(bb_windowing_B5_stall_region_out_iowr_bl_return_windowing_o_fifovalid),
        .out_iowr_bl_stream_out_tuple_o_fifodata(bb_windowing_B5_stall_region_out_iowr_bl_stream_out_tuple_o_fifodata),
        .out_iowr_bl_stream_out_tuple_o_fifovalid(bb_windowing_B5_stall_region_out_iowr_bl_stream_out_tuple_o_fifovalid),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata(bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata),
        .out_memdep_19_windowing_avm_address(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_address),
        .out_memdep_19_windowing_avm_burstcount(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_burstcount),
        .out_memdep_19_windowing_avm_byteenable(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_byteenable),
        .out_memdep_19_windowing_avm_enable(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_enable),
        .out_memdep_19_windowing_avm_read(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_read),
        .out_memdep_19_windowing_avm_write(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_write),
        .out_memdep_19_windowing_avm_writedata(bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_writedata),
        .out_memdep_310_windowing_avm_address(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_address),
        .out_memdep_310_windowing_avm_burstcount(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_burstcount),
        .out_memdep_310_windowing_avm_byteenable(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_byteenable),
        .out_memdep_310_windowing_avm_enable(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_enable),
        .out_memdep_310_windowing_avm_read(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_read),
        .out_memdep_310_windowing_avm_write(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_write),
        .out_memdep_310_windowing_avm_writedata(bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_writedata),
        .out_stall_out(bb_windowing_B5_stall_region_out_stall_out),
        .out_valid_out(bb_windowing_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_10_sync(GPOUT,3)
    assign out_feedback_out_10 = bb_windowing_B5_stall_region_out_feedback_out_10;

    // feedback_out_11_sync(GPOUT,4)
    assign out_feedback_out_11 = bb_windowing_B5_stall_region_out_feedback_out_11;

    // feedback_out_12_sync(GPOUT,5)
    assign out_feedback_out_12 = bb_windowing_B5_stall_region_out_feedback_out_12;

    // feedback_out_9_sync(GPOUT,6)
    assign out_feedback_out_9 = bb_windowing_B5_stall_region_out_feedback_out_9;

    // feedback_valid_out_10_sync(GPOUT,11)
    assign out_feedback_valid_out_10 = bb_windowing_B5_stall_region_out_feedback_valid_out_10;

    // feedback_valid_out_11_sync(GPOUT,12)
    assign out_feedback_valid_out_11 = bb_windowing_B5_stall_region_out_feedback_valid_out_11;

    // feedback_valid_out_12_sync(GPOUT,13)
    assign out_feedback_valid_out_12 = bb_windowing_B5_stall_region_out_feedback_valid_out_12;

    // feedback_valid_out_9_sync(GPOUT,14)
    assign out_feedback_valid_out_9 = bb_windowing_B5_stall_region_out_feedback_valid_out_9;

    // out_iord_bl_return_aggregation_o_fifoalmost_full(GPOUT,42)
    assign out_iord_bl_return_aggregation_o_fifoalmost_full = bb_windowing_B5_stall_region_out_iord_bl_return_aggregation_o_fifoalmost_full;

    // out_iord_bl_return_aggregation_o_fifoready(GPOUT,43)
    assign out_iord_bl_return_aggregation_o_fifoready = bb_windowing_B5_stall_region_out_iord_bl_return_aggregation_o_fifoready;

    // out_iord_bl_stream_in_tuple_o_fifoalmost_full(GPOUT,44)
    assign out_iord_bl_stream_in_tuple_o_fifoalmost_full = bb_windowing_B5_stall_region_out_iord_bl_stream_in_tuple_o_fifoalmost_full;

    // out_iord_bl_stream_in_tuple_o_fifoready(GPOUT,45)
    assign out_iord_bl_stream_in_tuple_o_fifoready = bb_windowing_B5_stall_region_out_iord_bl_stream_in_tuple_o_fifoready;

    // out_iowr_bl_call_aggregation_o_fifodata(GPOUT,46)
    assign out_iowr_bl_call_aggregation_o_fifodata = bb_windowing_B5_stall_region_out_iowr_bl_call_aggregation_o_fifodata;

    // out_iowr_bl_call_aggregation_o_fifovalid(GPOUT,47)
    assign out_iowr_bl_call_aggregation_o_fifovalid = bb_windowing_B5_stall_region_out_iowr_bl_call_aggregation_o_fifovalid;

    // out_iowr_bl_return_windowing_o_fifodata(GPOUT,48)
    assign out_iowr_bl_return_windowing_o_fifodata = bb_windowing_B5_stall_region_out_iowr_bl_return_windowing_o_fifodata;

    // out_iowr_bl_return_windowing_o_fifovalid(GPOUT,49)
    assign out_iowr_bl_return_windowing_o_fifovalid = bb_windowing_B5_stall_region_out_iowr_bl_return_windowing_o_fifovalid;

    // out_iowr_bl_stream_out_tuple_o_fifodata(GPOUT,50)
    assign out_iowr_bl_stream_out_tuple_o_fifodata = bb_windowing_B5_stall_region_out_iowr_bl_stream_out_tuple_o_fifodata;

    // out_iowr_bl_stream_out_tuple_o_fifovalid(GPOUT,51)
    assign out_iowr_bl_stream_out_tuple_o_fifovalid = bb_windowing_B5_stall_region_out_iowr_bl_stream_out_tuple_o_fifovalid;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address(GPOUT,52)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount(GPOUT,53)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable(GPOUT,54)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable(GPOUT,55)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read(GPOUT,56)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write(GPOUT,57)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;

    // out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata(GPOUT,58)
    assign out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata = bb_windowing_B5_stall_region_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;

    // out_memdep_19_windowing_avm_address(GPOUT,59)
    assign out_memdep_19_windowing_avm_address = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_address;

    // out_memdep_19_windowing_avm_burstcount(GPOUT,60)
    assign out_memdep_19_windowing_avm_burstcount = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_burstcount;

    // out_memdep_19_windowing_avm_byteenable(GPOUT,61)
    assign out_memdep_19_windowing_avm_byteenable = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_byteenable;

    // out_memdep_19_windowing_avm_enable(GPOUT,62)
    assign out_memdep_19_windowing_avm_enable = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_enable;

    // out_memdep_19_windowing_avm_read(GPOUT,63)
    assign out_memdep_19_windowing_avm_read = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_read;

    // out_memdep_19_windowing_avm_write(GPOUT,64)
    assign out_memdep_19_windowing_avm_write = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_write;

    // out_memdep_19_windowing_avm_writedata(GPOUT,65)
    assign out_memdep_19_windowing_avm_writedata = bb_windowing_B5_stall_region_out_memdep_19_windowing_avm_writedata;

    // out_memdep_310_windowing_avm_address(GPOUT,66)
    assign out_memdep_310_windowing_avm_address = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_address;

    // out_memdep_310_windowing_avm_burstcount(GPOUT,67)
    assign out_memdep_310_windowing_avm_burstcount = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_burstcount;

    // out_memdep_310_windowing_avm_byteenable(GPOUT,68)
    assign out_memdep_310_windowing_avm_byteenable = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_byteenable;

    // out_memdep_310_windowing_avm_enable(GPOUT,69)
    assign out_memdep_310_windowing_avm_enable = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_enable;

    // out_memdep_310_windowing_avm_read(GPOUT,70)
    assign out_memdep_310_windowing_avm_read = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_read;

    // out_memdep_310_windowing_avm_write(GPOUT,71)
    assign out_memdep_310_windowing_avm_write = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_write;

    // out_memdep_310_windowing_avm_writedata(GPOUT,72)
    assign out_memdep_310_windowing_avm_writedata = bb_windowing_B5_stall_region_out_memdep_310_windowing_avm_writedata;

    // out_stall_in_0(GPOUT,73)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,74)
    assign out_stall_out_0 = windowing_B5_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,75)
    assign out_valid_out_0 = windowing_B5_branch_out_valid_out_0;

endmodule
