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

// SystemVerilog created from windowing_function_wrapper
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_function_wrapper (
    input wire [511:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_readdata,
    input wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_waitrequest,
    input wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_writeack,
    input wire [511:0] avm_memdep_12_windowing_readdata,
    input wire [0:0] avm_memdep_12_windowing_readdatavalid,
    input wire [0:0] avm_memdep_12_windowing_waitrequest,
    input wire [0:0] avm_memdep_12_windowing_writeack,
    input wire [511:0] avm_memdep_13_windowing_readdata,
    input wire [0:0] avm_memdep_13_windowing_readdatavalid,
    input wire [0:0] avm_memdep_13_windowing_waitrequest,
    input wire [0:0] avm_memdep_13_windowing_writeack,
    input wire [511:0] avm_memdep_14_windowing_readdata,
    input wire [0:0] avm_memdep_14_windowing_readdatavalid,
    input wire [0:0] avm_memdep_14_windowing_waitrequest,
    input wire [0:0] avm_memdep_14_windowing_writeack,
    input wire [511:0] avm_memdep_19_windowing_readdata,
    input wire [0:0] avm_memdep_19_windowing_readdatavalid,
    input wire [0:0] avm_memdep_19_windowing_waitrequest,
    input wire [0:0] avm_memdep_19_windowing_writeack,
    input wire [511:0] avm_memdep_310_windowing_readdata,
    input wire [0:0] avm_memdep_310_windowing_readdatavalid,
    input wire [0:0] avm_memdep_310_windowing_waitrequest,
    input wire [0:0] avm_memdep_310_windowing_writeack,
    input wire [511:0] avm_memdep_8_windowing_readdata,
    input wire [0:0] avm_memdep_8_windowing_readdatavalid,
    input wire [0:0] avm_memdep_8_windowing_waitrequest,
    input wire [0:0] avm_memdep_8_windowing_writeack,
    input wire [511:0] avm_memdep_windowing_readdata,
    input wire [0:0] avm_memdep_windowing_readdatavalid,
    input wire [0:0] avm_memdep_windowing_waitrequest,
    input wire [0:0] avm_memdep_windowing_writeack,
    input wire [0:0] avst_iord_bl_call_windowing_data,
    input wire [0:0] avst_iord_bl_call_windowing_valid,
    input wire [351:0] avst_iord_bl_stream_in_tuple_data,
    input wire [0:0] avst_iord_bl_stream_in_tuple_valid,
    input wire [0:0] avst_iowr_bl_call_aggregation_almostfull,
    input wire [0:0] avst_iowr_bl_return_aggregation_almostfull,
    input wire [0:0] avst_iowr_bl_return_windowing_almostfull,
    input wire [0:0] avst_iowr_bl_return_windowing_ready,
    input wire [0:0] avst_iowr_bl_stream_out_tuple_almostfull,
    input wire [0:0] avst_iowr_bl_stream_out_tuple_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_address,
    output wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_burstcount,
    output wire [63:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_byteenable,
    output wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_enable,
    output wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_read,
    output wire [0:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_write,
    output wire [511:0] avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_writedata,
    output wire [31:0] avm_memdep_12_windowing_address,
    output wire [0:0] avm_memdep_12_windowing_burstcount,
    output wire [63:0] avm_memdep_12_windowing_byteenable,
    output wire [0:0] avm_memdep_12_windowing_enable,
    output wire [0:0] avm_memdep_12_windowing_read,
    output wire [0:0] avm_memdep_12_windowing_write,
    output wire [511:0] avm_memdep_12_windowing_writedata,
    output wire [31:0] avm_memdep_13_windowing_address,
    output wire [0:0] avm_memdep_13_windowing_burstcount,
    output wire [63:0] avm_memdep_13_windowing_byteenable,
    output wire [0:0] avm_memdep_13_windowing_enable,
    output wire [0:0] avm_memdep_13_windowing_read,
    output wire [0:0] avm_memdep_13_windowing_write,
    output wire [511:0] avm_memdep_13_windowing_writedata,
    output wire [31:0] avm_memdep_14_windowing_address,
    output wire [0:0] avm_memdep_14_windowing_burstcount,
    output wire [63:0] avm_memdep_14_windowing_byteenable,
    output wire [0:0] avm_memdep_14_windowing_enable,
    output wire [0:0] avm_memdep_14_windowing_read,
    output wire [0:0] avm_memdep_14_windowing_write,
    output wire [511:0] avm_memdep_14_windowing_writedata,
    output wire [31:0] avm_memdep_19_windowing_address,
    output wire [0:0] avm_memdep_19_windowing_burstcount,
    output wire [63:0] avm_memdep_19_windowing_byteenable,
    output wire [0:0] avm_memdep_19_windowing_enable,
    output wire [0:0] avm_memdep_19_windowing_read,
    output wire [0:0] avm_memdep_19_windowing_write,
    output wire [511:0] avm_memdep_19_windowing_writedata,
    output wire [31:0] avm_memdep_310_windowing_address,
    output wire [0:0] avm_memdep_310_windowing_burstcount,
    output wire [63:0] avm_memdep_310_windowing_byteenable,
    output wire [0:0] avm_memdep_310_windowing_enable,
    output wire [0:0] avm_memdep_310_windowing_read,
    output wire [0:0] avm_memdep_310_windowing_write,
    output wire [511:0] avm_memdep_310_windowing_writedata,
    output wire [31:0] avm_memdep_8_windowing_address,
    output wire [0:0] avm_memdep_8_windowing_burstcount,
    output wire [63:0] avm_memdep_8_windowing_byteenable,
    output wire [0:0] avm_memdep_8_windowing_enable,
    output wire [0:0] avm_memdep_8_windowing_read,
    output wire [0:0] avm_memdep_8_windowing_write,
    output wire [511:0] avm_memdep_8_windowing_writedata,
    output wire [31:0] avm_memdep_windowing_address,
    output wire [0:0] avm_memdep_windowing_burstcount,
    output wire [63:0] avm_memdep_windowing_byteenable,
    output wire [0:0] avm_memdep_windowing_enable,
    output wire [0:0] avm_memdep_windowing_read,
    output wire [0:0] avm_memdep_windowing_write,
    output wire [511:0] avm_memdep_windowing_writedata,
    output wire [0:0] avst_iord_bl_call_windowing_almost_full,
    output wire [0:0] avst_iord_bl_call_windowing_ready,
    output wire [0:0] avst_iord_bl_stream_in_tuple_almost_full,
    output wire [0:0] avst_iord_bl_stream_in_tuple_ready,
    output wire [0:0] avst_iowr_bl_return_windowing_data,
    output wire [0:0] avst_iowr_bl_return_windowing_valid,
    output wire [351:0] avst_iowr_bl_stream_out_tuple_data,
    output wire [0:0] avst_iowr_bl_stream_out_tuple_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] dupName_0_call_const_x_q;
    wire [0:0] aggregation_function_out_iord_bl_call_aggregation_o_fifoready;
    wire [351:0] aggregation_function_out_iowr_bl_return_aggregation_o_fifodata;
    wire [0:0] aggregation_function_out_iowr_bl_return_aggregation_o_fifovalid;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] windowing_function_out_iord_bl_call_windowing_o_fifoalmost_full;
    wire [0:0] windowing_function_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] windowing_function_out_iord_bl_return_aggregation_o_fifoready;
    wire [0:0] windowing_function_out_iord_bl_stream_in_tuple_o_fifoalmost_full;
    wire [0:0] windowing_function_out_iord_bl_stream_in_tuple_o_fifoready;
    wire [447:0] windowing_function_out_iowr_bl_call_aggregation_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_call_aggregation_o_fifovalid;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifovalid;
    wire [351:0] windowing_function_out_iowr_bl_stream_out_tuple_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_stream_out_tuple_o_fifovalid;
    wire [31:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;
    wire [0:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;
    wire [0:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;
    wire [0:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;
    wire [511:0] windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_12_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_12_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_12_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_12_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_12_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_12_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_12_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_13_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_13_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_13_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_13_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_13_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_13_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_13_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_14_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_14_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_14_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_14_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_14_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_14_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_14_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_19_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_19_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_19_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_19_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_19_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_19_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_19_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_310_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_310_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_310_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_310_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_310_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_310_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_310_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_8_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_8_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_8_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_8_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_8_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_8_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_8_windowing_avm_writedata;
    wire [31:0] windowing_function_out_memdep_windowing_avm_address;
    wire [0:0] windowing_function_out_memdep_windowing_avm_burstcount;
    wire [63:0] windowing_function_out_memdep_windowing_avm_byteenable;
    wire [0:0] windowing_function_out_memdep_windowing_avm_enable;
    wire [0:0] windowing_function_out_memdep_windowing_avm_read;
    wire [0:0] windowing_function_out_memdep_windowing_avm_write;
    wire [511:0] windowing_function_out_memdep_windowing_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,57)
    assign not_stall_q = ~ (stall);

    // aggregation_function(BLACKBOX,4)
    windowing_aggregation_function theaggregation_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_iord_bl_call_aggregation_i_fifodata(windowing_function_out_iowr_bl_call_aggregation_o_fifodata),
        .in_iord_bl_call_aggregation_i_fifovalid(windowing_function_out_iowr_bl_call_aggregation_o_fifovalid),
        .in_iowr_bl_return_aggregation_i_fifoready(windowing_function_out_iord_bl_return_aggregation_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_aggregation_o_fifoalmost_full(),
        .out_iord_bl_call_aggregation_o_fifoready(aggregation_function_out_iord_bl_call_aggregation_o_fifoready),
        .out_iowr_bl_return_aggregation_o_fifodata(aggregation_function_out_iowr_bl_return_aggregation_o_fifodata),
        .out_iowr_bl_return_aggregation_o_fifovalid(aggregation_function_out_iowr_bl_return_aggregation_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_call_const_x(CONSTANT,2)
    assign dupName_0_call_const_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // windowing_function(BLACKBOX,129)
    windowing_function thewindowing_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_stream_in_tuple(dupName_0_call_const_x_q),
        .in_arg_stream_out_tuple(dupName_0_call_const_x_q),
        .in_iord_bl_call_windowing_i_fifodata(avst_iord_bl_call_windowing_data),
        .in_iord_bl_call_windowing_i_fifovalid(start),
        .in_iord_bl_return_aggregation_i_fifodata(aggregation_function_out_iowr_bl_return_aggregation_o_fifodata),
        .in_iord_bl_return_aggregation_i_fifovalid(aggregation_function_out_iowr_bl_return_aggregation_o_fifovalid),
        .in_iord_bl_stream_in_tuple_i_fifodata(avst_iord_bl_stream_in_tuple_data),
        .in_iord_bl_stream_in_tuple_i_fifovalid(avst_iord_bl_stream_in_tuple_valid),
        .in_iowr_bl_call_aggregation_i_fifoready(aggregation_function_out_iord_bl_call_aggregation_o_fifoready),
        .in_iowr_bl_return_windowing_i_fifoready(not_stall_q),
        .in_iowr_bl_stream_out_tuple_i_fifoready(avst_iowr_bl_stream_out_tuple_ready),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdata(avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_readdata),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_readdatavalid(avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_readdatavalid),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_waitrequest(avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_waitrequest),
        .in_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writeack(avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_writeack),
        .in_memdep_12_windowing_avm_readdata(avm_memdep_12_windowing_readdata),
        .in_memdep_12_windowing_avm_readdatavalid(avm_memdep_12_windowing_readdatavalid),
        .in_memdep_12_windowing_avm_waitrequest(avm_memdep_12_windowing_waitrequest),
        .in_memdep_12_windowing_avm_writeack(avm_memdep_12_windowing_writeack),
        .in_memdep_13_windowing_avm_readdata(avm_memdep_13_windowing_readdata),
        .in_memdep_13_windowing_avm_readdatavalid(avm_memdep_13_windowing_readdatavalid),
        .in_memdep_13_windowing_avm_waitrequest(avm_memdep_13_windowing_waitrequest),
        .in_memdep_13_windowing_avm_writeack(avm_memdep_13_windowing_writeack),
        .in_memdep_14_windowing_avm_readdata(avm_memdep_14_windowing_readdata),
        .in_memdep_14_windowing_avm_readdatavalid(avm_memdep_14_windowing_readdatavalid),
        .in_memdep_14_windowing_avm_waitrequest(avm_memdep_14_windowing_waitrequest),
        .in_memdep_14_windowing_avm_writeack(avm_memdep_14_windowing_writeack),
        .in_memdep_19_windowing_avm_readdata(avm_memdep_19_windowing_readdata),
        .in_memdep_19_windowing_avm_readdatavalid(avm_memdep_19_windowing_readdatavalid),
        .in_memdep_19_windowing_avm_waitrequest(avm_memdep_19_windowing_waitrequest),
        .in_memdep_19_windowing_avm_writeack(avm_memdep_19_windowing_writeack),
        .in_memdep_310_windowing_avm_readdata(avm_memdep_310_windowing_readdata),
        .in_memdep_310_windowing_avm_readdatavalid(avm_memdep_310_windowing_readdatavalid),
        .in_memdep_310_windowing_avm_waitrequest(avm_memdep_310_windowing_waitrequest),
        .in_memdep_310_windowing_avm_writeack(avm_memdep_310_windowing_writeack),
        .in_memdep_8_windowing_avm_readdata(avm_memdep_8_windowing_readdata),
        .in_memdep_8_windowing_avm_readdatavalid(avm_memdep_8_windowing_readdatavalid),
        .in_memdep_8_windowing_avm_waitrequest(avm_memdep_8_windowing_waitrequest),
        .in_memdep_8_windowing_avm_writeack(avm_memdep_8_windowing_writeack),
        .in_memdep_windowing_avm_readdata(avm_memdep_windowing_readdata),
        .in_memdep_windowing_avm_readdatavalid(avm_memdep_windowing_readdatavalid),
        .in_memdep_windowing_avm_waitrequest(avm_memdep_windowing_waitrequest),
        .in_memdep_windowing_avm_writeack(avm_memdep_windowing_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_windowing_o_fifoalmost_full(windowing_function_out_iord_bl_call_windowing_o_fifoalmost_full),
        .out_iord_bl_call_windowing_o_fifoready(windowing_function_out_iord_bl_call_windowing_o_fifoready),
        .out_iord_bl_return_aggregation_o_fifoalmost_full(),
        .out_iord_bl_return_aggregation_o_fifoready(windowing_function_out_iord_bl_return_aggregation_o_fifoready),
        .out_iord_bl_stream_in_tuple_o_fifoalmost_full(windowing_function_out_iord_bl_stream_in_tuple_o_fifoalmost_full),
        .out_iord_bl_stream_in_tuple_o_fifoready(windowing_function_out_iord_bl_stream_in_tuple_o_fifoready),
        .out_iowr_bl_call_aggregation_o_fifodata(windowing_function_out_iowr_bl_call_aggregation_o_fifodata),
        .out_iowr_bl_call_aggregation_o_fifovalid(windowing_function_out_iowr_bl_call_aggregation_o_fifovalid),
        .out_iowr_bl_return_windowing_o_fifodata(windowing_function_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(windowing_function_out_iowr_bl_return_windowing_o_fifovalid),
        .out_iowr_bl_stream_out_tuple_o_fifodata(windowing_function_out_iowr_bl_stream_out_tuple_o_fifodata),
        .out_iowr_bl_stream_out_tuple_o_fifovalid(windowing_function_out_iowr_bl_stream_out_tuple_o_fifovalid),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write),
        .out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata(windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata),
        .out_memdep_12_windowing_avm_address(windowing_function_out_memdep_12_windowing_avm_address),
        .out_memdep_12_windowing_avm_burstcount(windowing_function_out_memdep_12_windowing_avm_burstcount),
        .out_memdep_12_windowing_avm_byteenable(windowing_function_out_memdep_12_windowing_avm_byteenable),
        .out_memdep_12_windowing_avm_enable(windowing_function_out_memdep_12_windowing_avm_enable),
        .out_memdep_12_windowing_avm_read(windowing_function_out_memdep_12_windowing_avm_read),
        .out_memdep_12_windowing_avm_write(windowing_function_out_memdep_12_windowing_avm_write),
        .out_memdep_12_windowing_avm_writedata(windowing_function_out_memdep_12_windowing_avm_writedata),
        .out_memdep_13_windowing_avm_address(windowing_function_out_memdep_13_windowing_avm_address),
        .out_memdep_13_windowing_avm_burstcount(windowing_function_out_memdep_13_windowing_avm_burstcount),
        .out_memdep_13_windowing_avm_byteenable(windowing_function_out_memdep_13_windowing_avm_byteenable),
        .out_memdep_13_windowing_avm_enable(windowing_function_out_memdep_13_windowing_avm_enable),
        .out_memdep_13_windowing_avm_read(windowing_function_out_memdep_13_windowing_avm_read),
        .out_memdep_13_windowing_avm_write(windowing_function_out_memdep_13_windowing_avm_write),
        .out_memdep_13_windowing_avm_writedata(windowing_function_out_memdep_13_windowing_avm_writedata),
        .out_memdep_14_windowing_avm_address(windowing_function_out_memdep_14_windowing_avm_address),
        .out_memdep_14_windowing_avm_burstcount(windowing_function_out_memdep_14_windowing_avm_burstcount),
        .out_memdep_14_windowing_avm_byteenable(windowing_function_out_memdep_14_windowing_avm_byteenable),
        .out_memdep_14_windowing_avm_enable(windowing_function_out_memdep_14_windowing_avm_enable),
        .out_memdep_14_windowing_avm_read(windowing_function_out_memdep_14_windowing_avm_read),
        .out_memdep_14_windowing_avm_write(windowing_function_out_memdep_14_windowing_avm_write),
        .out_memdep_14_windowing_avm_writedata(windowing_function_out_memdep_14_windowing_avm_writedata),
        .out_memdep_19_windowing_avm_address(windowing_function_out_memdep_19_windowing_avm_address),
        .out_memdep_19_windowing_avm_burstcount(windowing_function_out_memdep_19_windowing_avm_burstcount),
        .out_memdep_19_windowing_avm_byteenable(windowing_function_out_memdep_19_windowing_avm_byteenable),
        .out_memdep_19_windowing_avm_enable(windowing_function_out_memdep_19_windowing_avm_enable),
        .out_memdep_19_windowing_avm_read(windowing_function_out_memdep_19_windowing_avm_read),
        .out_memdep_19_windowing_avm_write(windowing_function_out_memdep_19_windowing_avm_write),
        .out_memdep_19_windowing_avm_writedata(windowing_function_out_memdep_19_windowing_avm_writedata),
        .out_memdep_310_windowing_avm_address(windowing_function_out_memdep_310_windowing_avm_address),
        .out_memdep_310_windowing_avm_burstcount(windowing_function_out_memdep_310_windowing_avm_burstcount),
        .out_memdep_310_windowing_avm_byteenable(windowing_function_out_memdep_310_windowing_avm_byteenable),
        .out_memdep_310_windowing_avm_enable(windowing_function_out_memdep_310_windowing_avm_enable),
        .out_memdep_310_windowing_avm_read(windowing_function_out_memdep_310_windowing_avm_read),
        .out_memdep_310_windowing_avm_write(windowing_function_out_memdep_310_windowing_avm_write),
        .out_memdep_310_windowing_avm_writedata(windowing_function_out_memdep_310_windowing_avm_writedata),
        .out_memdep_8_windowing_avm_address(windowing_function_out_memdep_8_windowing_avm_address),
        .out_memdep_8_windowing_avm_burstcount(windowing_function_out_memdep_8_windowing_avm_burstcount),
        .out_memdep_8_windowing_avm_byteenable(windowing_function_out_memdep_8_windowing_avm_byteenable),
        .out_memdep_8_windowing_avm_enable(windowing_function_out_memdep_8_windowing_avm_enable),
        .out_memdep_8_windowing_avm_read(windowing_function_out_memdep_8_windowing_avm_read),
        .out_memdep_8_windowing_avm_write(windowing_function_out_memdep_8_windowing_avm_write),
        .out_memdep_8_windowing_avm_writedata(windowing_function_out_memdep_8_windowing_avm_writedata),
        .out_memdep_windowing_avm_address(windowing_function_out_memdep_windowing_avm_address),
        .out_memdep_windowing_avm_burstcount(windowing_function_out_memdep_windowing_avm_burstcount),
        .out_memdep_windowing_avm_byteenable(windowing_function_out_memdep_windowing_avm_byteenable),
        .out_memdep_windowing_avm_enable(windowing_function_out_memdep_windowing_avm_enable),
        .out_memdep_windowing_avm_read(windowing_function_out_memdep_windowing_avm_read),
        .out_memdep_windowing_avm_write(windowing_function_out_memdep_windowing_avm_write),
        .out_memdep_windowing_avm_writedata(windowing_function_out_memdep_windowing_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_address(GPOUT,58)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_address = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_address;

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_burstcount(GPOUT,59)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_burstcount = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_burstcount;

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_byteenable(GPOUT,60)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_byteenable = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_byteenable;

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_enable(GPOUT,61)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_enable = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_enable;

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_read(GPOUT,62)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_read = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_read;

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_write(GPOUT,63)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_write = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_write;

    // avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_writedata(GPOUT,64)
    assign avm_memcoalesce_load_windowing_fpgaunique_1211_windowing_writedata = windowing_function_out_memcoalesce_load_windowing_fpgaunique_1211_windowing_avm_writedata;

    // avm_memdep_12_windowing_address(GPOUT,65)
    assign avm_memdep_12_windowing_address = windowing_function_out_memdep_12_windowing_avm_address;

    // avm_memdep_12_windowing_burstcount(GPOUT,66)
    assign avm_memdep_12_windowing_burstcount = windowing_function_out_memdep_12_windowing_avm_burstcount;

    // avm_memdep_12_windowing_byteenable(GPOUT,67)
    assign avm_memdep_12_windowing_byteenable = windowing_function_out_memdep_12_windowing_avm_byteenable;

    // avm_memdep_12_windowing_enable(GPOUT,68)
    assign avm_memdep_12_windowing_enable = windowing_function_out_memdep_12_windowing_avm_enable;

    // avm_memdep_12_windowing_read(GPOUT,69)
    assign avm_memdep_12_windowing_read = windowing_function_out_memdep_12_windowing_avm_read;

    // avm_memdep_12_windowing_write(GPOUT,70)
    assign avm_memdep_12_windowing_write = windowing_function_out_memdep_12_windowing_avm_write;

    // avm_memdep_12_windowing_writedata(GPOUT,71)
    assign avm_memdep_12_windowing_writedata = windowing_function_out_memdep_12_windowing_avm_writedata;

    // avm_memdep_13_windowing_address(GPOUT,72)
    assign avm_memdep_13_windowing_address = windowing_function_out_memdep_13_windowing_avm_address;

    // avm_memdep_13_windowing_burstcount(GPOUT,73)
    assign avm_memdep_13_windowing_burstcount = windowing_function_out_memdep_13_windowing_avm_burstcount;

    // avm_memdep_13_windowing_byteenable(GPOUT,74)
    assign avm_memdep_13_windowing_byteenable = windowing_function_out_memdep_13_windowing_avm_byteenable;

    // avm_memdep_13_windowing_enable(GPOUT,75)
    assign avm_memdep_13_windowing_enable = windowing_function_out_memdep_13_windowing_avm_enable;

    // avm_memdep_13_windowing_read(GPOUT,76)
    assign avm_memdep_13_windowing_read = windowing_function_out_memdep_13_windowing_avm_read;

    // avm_memdep_13_windowing_write(GPOUT,77)
    assign avm_memdep_13_windowing_write = windowing_function_out_memdep_13_windowing_avm_write;

    // avm_memdep_13_windowing_writedata(GPOUT,78)
    assign avm_memdep_13_windowing_writedata = windowing_function_out_memdep_13_windowing_avm_writedata;

    // avm_memdep_14_windowing_address(GPOUT,79)
    assign avm_memdep_14_windowing_address = windowing_function_out_memdep_14_windowing_avm_address;

    // avm_memdep_14_windowing_burstcount(GPOUT,80)
    assign avm_memdep_14_windowing_burstcount = windowing_function_out_memdep_14_windowing_avm_burstcount;

    // avm_memdep_14_windowing_byteenable(GPOUT,81)
    assign avm_memdep_14_windowing_byteenable = windowing_function_out_memdep_14_windowing_avm_byteenable;

    // avm_memdep_14_windowing_enable(GPOUT,82)
    assign avm_memdep_14_windowing_enable = windowing_function_out_memdep_14_windowing_avm_enable;

    // avm_memdep_14_windowing_read(GPOUT,83)
    assign avm_memdep_14_windowing_read = windowing_function_out_memdep_14_windowing_avm_read;

    // avm_memdep_14_windowing_write(GPOUT,84)
    assign avm_memdep_14_windowing_write = windowing_function_out_memdep_14_windowing_avm_write;

    // avm_memdep_14_windowing_writedata(GPOUT,85)
    assign avm_memdep_14_windowing_writedata = windowing_function_out_memdep_14_windowing_avm_writedata;

    // avm_memdep_19_windowing_address(GPOUT,86)
    assign avm_memdep_19_windowing_address = windowing_function_out_memdep_19_windowing_avm_address;

    // avm_memdep_19_windowing_burstcount(GPOUT,87)
    assign avm_memdep_19_windowing_burstcount = windowing_function_out_memdep_19_windowing_avm_burstcount;

    // avm_memdep_19_windowing_byteenable(GPOUT,88)
    assign avm_memdep_19_windowing_byteenable = windowing_function_out_memdep_19_windowing_avm_byteenable;

    // avm_memdep_19_windowing_enable(GPOUT,89)
    assign avm_memdep_19_windowing_enable = windowing_function_out_memdep_19_windowing_avm_enable;

    // avm_memdep_19_windowing_read(GPOUT,90)
    assign avm_memdep_19_windowing_read = windowing_function_out_memdep_19_windowing_avm_read;

    // avm_memdep_19_windowing_write(GPOUT,91)
    assign avm_memdep_19_windowing_write = windowing_function_out_memdep_19_windowing_avm_write;

    // avm_memdep_19_windowing_writedata(GPOUT,92)
    assign avm_memdep_19_windowing_writedata = windowing_function_out_memdep_19_windowing_avm_writedata;

    // avm_memdep_310_windowing_address(GPOUT,93)
    assign avm_memdep_310_windowing_address = windowing_function_out_memdep_310_windowing_avm_address;

    // avm_memdep_310_windowing_burstcount(GPOUT,94)
    assign avm_memdep_310_windowing_burstcount = windowing_function_out_memdep_310_windowing_avm_burstcount;

    // avm_memdep_310_windowing_byteenable(GPOUT,95)
    assign avm_memdep_310_windowing_byteenable = windowing_function_out_memdep_310_windowing_avm_byteenable;

    // avm_memdep_310_windowing_enable(GPOUT,96)
    assign avm_memdep_310_windowing_enable = windowing_function_out_memdep_310_windowing_avm_enable;

    // avm_memdep_310_windowing_read(GPOUT,97)
    assign avm_memdep_310_windowing_read = windowing_function_out_memdep_310_windowing_avm_read;

    // avm_memdep_310_windowing_write(GPOUT,98)
    assign avm_memdep_310_windowing_write = windowing_function_out_memdep_310_windowing_avm_write;

    // avm_memdep_310_windowing_writedata(GPOUT,99)
    assign avm_memdep_310_windowing_writedata = windowing_function_out_memdep_310_windowing_avm_writedata;

    // avm_memdep_8_windowing_address(GPOUT,100)
    assign avm_memdep_8_windowing_address = windowing_function_out_memdep_8_windowing_avm_address;

    // avm_memdep_8_windowing_burstcount(GPOUT,101)
    assign avm_memdep_8_windowing_burstcount = windowing_function_out_memdep_8_windowing_avm_burstcount;

    // avm_memdep_8_windowing_byteenable(GPOUT,102)
    assign avm_memdep_8_windowing_byteenable = windowing_function_out_memdep_8_windowing_avm_byteenable;

    // avm_memdep_8_windowing_enable(GPOUT,103)
    assign avm_memdep_8_windowing_enable = windowing_function_out_memdep_8_windowing_avm_enable;

    // avm_memdep_8_windowing_read(GPOUT,104)
    assign avm_memdep_8_windowing_read = windowing_function_out_memdep_8_windowing_avm_read;

    // avm_memdep_8_windowing_write(GPOUT,105)
    assign avm_memdep_8_windowing_write = windowing_function_out_memdep_8_windowing_avm_write;

    // avm_memdep_8_windowing_writedata(GPOUT,106)
    assign avm_memdep_8_windowing_writedata = windowing_function_out_memdep_8_windowing_avm_writedata;

    // avm_memdep_windowing_address(GPOUT,107)
    assign avm_memdep_windowing_address = windowing_function_out_memdep_windowing_avm_address;

    // avm_memdep_windowing_burstcount(GPOUT,108)
    assign avm_memdep_windowing_burstcount = windowing_function_out_memdep_windowing_avm_burstcount;

    // avm_memdep_windowing_byteenable(GPOUT,109)
    assign avm_memdep_windowing_byteenable = windowing_function_out_memdep_windowing_avm_byteenable;

    // avm_memdep_windowing_enable(GPOUT,110)
    assign avm_memdep_windowing_enable = windowing_function_out_memdep_windowing_avm_enable;

    // avm_memdep_windowing_read(GPOUT,111)
    assign avm_memdep_windowing_read = windowing_function_out_memdep_windowing_avm_read;

    // avm_memdep_windowing_write(GPOUT,112)
    assign avm_memdep_windowing_write = windowing_function_out_memdep_windowing_avm_write;

    // avm_memdep_windowing_writedata(GPOUT,113)
    assign avm_memdep_windowing_writedata = windowing_function_out_memdep_windowing_avm_writedata;

    // avst_iord_bl_call_windowing_almost_full(GPOUT,114)
    assign avst_iord_bl_call_windowing_almost_full = windowing_function_out_iord_bl_call_windowing_o_fifoalmost_full;

    // avst_iord_bl_call_windowing_ready(GPOUT,115)
    assign avst_iord_bl_call_windowing_ready = windowing_function_out_iord_bl_call_windowing_o_fifoready;

    // avst_iord_bl_stream_in_tuple_almost_full(GPOUT,116)
    assign avst_iord_bl_stream_in_tuple_almost_full = windowing_function_out_iord_bl_stream_in_tuple_o_fifoalmost_full;

    // avst_iord_bl_stream_in_tuple_ready(GPOUT,117)
    assign avst_iord_bl_stream_in_tuple_ready = windowing_function_out_iord_bl_stream_in_tuple_o_fifoready;

    // avst_iowr_bl_return_windowing_data(GPOUT,118)
    assign avst_iowr_bl_return_windowing_data = windowing_function_out_iowr_bl_return_windowing_o_fifodata;

    // avst_iowr_bl_return_windowing_valid(GPOUT,119)
    assign avst_iowr_bl_return_windowing_valid = windowing_function_out_iowr_bl_return_windowing_o_fifovalid;

    // avst_iowr_bl_stream_out_tuple_data(GPOUT,120)
    assign avst_iowr_bl_stream_out_tuple_data = windowing_function_out_iowr_bl_stream_out_tuple_o_fifodata;

    // avst_iowr_bl_stream_out_tuple_valid(GPOUT,121)
    assign avst_iowr_bl_stream_out_tuple_valid = windowing_function_out_iowr_bl_stream_out_tuple_o_fifovalid;

    // not_ready(LOGICAL,56)
    assign not_ready_q = ~ (windowing_function_out_iord_bl_call_windowing_o_fifoready);

    // busy_and(LOGICAL,5)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,125)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,124)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,6)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,122)
    assign busy = busy_or_q;

    // done(GPOUT,123)
    assign done = windowing_function_out_iowr_bl_return_windowing_o_fifovalid;

endmodule
