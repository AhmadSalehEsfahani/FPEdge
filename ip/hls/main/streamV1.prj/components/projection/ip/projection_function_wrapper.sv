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

// SystemVerilog created from projection_function_wrapper
// Created for function/kernel projection
// SystemVerilog created on Sun Dec 11 11:42:02 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module projection_function_wrapper (
    input wire [0:0] avst_iord_bl_call_projection_data,
    input wire [0:0] avst_iord_bl_call_projection_valid,
    input wire [351:0] avst_iord_bl_stream_in_tuple_data,
    input wire [0:0] avst_iord_bl_stream_in_tuple_valid,
    input wire [0:0] avst_iowr_bl_return_projection_almostfull,
    input wire [0:0] avst_iowr_bl_return_projection_ready,
    input wire [0:0] avst_iowr_bl_stream_out_tuple_almostfull,
    input wire [0:0] avst_iowr_bl_stream_out_tuple_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [0:0] avst_iord_bl_call_projection_almost_full,
    output wire [0:0] avst_iord_bl_call_projection_ready,
    output wire [0:0] avst_iord_bl_stream_in_tuple_almost_full,
    output wire [0:0] avst_iord_bl_stream_in_tuple_ready,
    output wire [0:0] avst_iowr_bl_return_projection_data,
    output wire [0:0] avst_iowr_bl_return_projection_valid,
    output wire [351:0] avst_iowr_bl_stream_out_tuple_data,
    output wire [0:0] avst_iowr_bl_stream_out_tuple_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] projection_function_out_iord_bl_call_projection_o_fifoalmost_full;
    wire [0:0] projection_function_out_iord_bl_call_projection_o_fifoready;
    wire [0:0] projection_function_out_iord_bl_stream_in_tuple_o_fifoalmost_full;
    wire [0:0] projection_function_out_iord_bl_stream_in_tuple_o_fifoready;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifovalid;
    wire [351:0] projection_function_out_iowr_bl_stream_out_tuple_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_stream_out_tuple_o_fifovalid;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,20)
    assign not_stall_q = ~ (stall);

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // projection_function(BLACKBOX,32)
    projection_function theprojection_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_stream_in_tuple(call_const_q),
        .in_arg_stream_out_tuple(call_const_q),
        .in_iord_bl_call_projection_i_fifodata(avst_iord_bl_call_projection_data),
        .in_iord_bl_call_projection_i_fifovalid(start),
        .in_iord_bl_stream_in_tuple_i_fifodata(avst_iord_bl_stream_in_tuple_data),
        .in_iord_bl_stream_in_tuple_i_fifovalid(avst_iord_bl_stream_in_tuple_valid),
        .in_iowr_bl_return_projection_i_fifoready(not_stall_q),
        .in_iowr_bl_stream_out_tuple_i_fifoready(avst_iowr_bl_stream_out_tuple_ready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_projection_o_fifoalmost_full(projection_function_out_iord_bl_call_projection_o_fifoalmost_full),
        .out_iord_bl_call_projection_o_fifoready(projection_function_out_iord_bl_call_projection_o_fifoready),
        .out_iord_bl_stream_in_tuple_o_fifoalmost_full(projection_function_out_iord_bl_stream_in_tuple_o_fifoalmost_full),
        .out_iord_bl_stream_in_tuple_o_fifoready(projection_function_out_iord_bl_stream_in_tuple_o_fifoready),
        .out_iowr_bl_return_projection_o_fifodata(projection_function_out_iowr_bl_return_projection_o_fifodata),
        .out_iowr_bl_return_projection_o_fifovalid(projection_function_out_iowr_bl_return_projection_o_fifovalid),
        .out_iowr_bl_stream_out_tuple_o_fifodata(projection_function_out_iowr_bl_stream_out_tuple_o_fifodata),
        .out_iowr_bl_stream_out_tuple_o_fifovalid(projection_function_out_iowr_bl_stream_out_tuple_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_call_projection_almost_full(GPOUT,21)
    assign avst_iord_bl_call_projection_almost_full = projection_function_out_iord_bl_call_projection_o_fifoalmost_full;

    // avst_iord_bl_call_projection_ready(GPOUT,22)
    assign avst_iord_bl_call_projection_ready = projection_function_out_iord_bl_call_projection_o_fifoready;

    // avst_iord_bl_stream_in_tuple_almost_full(GPOUT,23)
    assign avst_iord_bl_stream_in_tuple_almost_full = projection_function_out_iord_bl_stream_in_tuple_o_fifoalmost_full;

    // avst_iord_bl_stream_in_tuple_ready(GPOUT,24)
    assign avst_iord_bl_stream_in_tuple_ready = projection_function_out_iord_bl_stream_in_tuple_o_fifoready;

    // avst_iowr_bl_return_projection_data(GPOUT,25)
    assign avst_iowr_bl_return_projection_data = projection_function_out_iowr_bl_return_projection_o_fifodata;

    // avst_iowr_bl_return_projection_valid(GPOUT,26)
    assign avst_iowr_bl_return_projection_valid = projection_function_out_iowr_bl_return_projection_o_fifovalid;

    // avst_iowr_bl_stream_out_tuple_data(GPOUT,27)
    assign avst_iowr_bl_stream_out_tuple_data = projection_function_out_iowr_bl_stream_out_tuple_o_fifodata;

    // avst_iowr_bl_stream_out_tuple_valid(GPOUT,28)
    assign avst_iowr_bl_stream_out_tuple_valid = projection_function_out_iowr_bl_stream_out_tuple_o_fifovalid;

    // not_ready(LOGICAL,19)
    assign not_ready_q = ~ (projection_function_out_iord_bl_call_projection_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,33)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,31)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,29)
    assign busy = busy_or_q;

    // done(GPOUT,30)
    assign done = projection_function_out_iowr_bl_return_projection_o_fifovalid;

endmodule
