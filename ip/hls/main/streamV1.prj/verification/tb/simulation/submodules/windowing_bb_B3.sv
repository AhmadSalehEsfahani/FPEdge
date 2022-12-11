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

// SystemVerilog created from bb_windowing_B3
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B3 (
    output wire [0:0] out_feedback_out_8,
    input wire [0:0] in_feedback_stall_in_8,
    output wire [0:0] out_feedback_valid_out_8,
    input wire [0:0] in_c0_exe106_0,
    input wire [0:0] in_c0_exe31_0,
    input wire [0:0] in_c0_exe42_0,
    input wire [0:0] in_c0_exe73_0,
    input wire [0:0] in_c0_exe84_0,
    input wire [0:0] in_c0_exe95_0,
    input wire [0:0] in_flush,
    input wire [511:0] in_memdep_12_windowing_avm_readdata,
    input wire [0:0] in_memdep_12_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_12_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_12_windowing_avm_writeack,
    input wire [511:0] in_memdep_13_windowing_avm_readdata,
    input wire [0:0] in_memdep_13_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_13_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_13_windowing_avm_writeack,
    input wire [0:0] in_memdep_7_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe31,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe73,
    output wire [0:0] out_c0_exe95,
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
    output wire [0:0] out_reduction_windowing_5,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_windowing_B3_stall_region_out_c0_exe31;
    wire [0:0] bb_windowing_B3_stall_region_out_c0_exe42;
    wire [0:0] bb_windowing_B3_stall_region_out_c0_exe73;
    wire [0:0] bb_windowing_B3_stall_region_out_c0_exe95;
    wire [0:0] bb_windowing_B3_stall_region_out_feedback_out_8;
    wire [0:0] bb_windowing_B3_stall_region_out_feedback_valid_out_8;
    wire [31:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_address;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_enable;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_read;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_write;
    wire [511:0] bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_writedata;
    wire [31:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_address;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_enable;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_read;
    wire [0:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_write;
    wire [511:0] bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_writedata;
    wire [0:0] bb_windowing_B3_stall_region_out_reduction_windowing_5;
    wire [0:0] bb_windowing_B3_stall_region_out_stall_out;
    wire [0:0] bb_windowing_B3_stall_region_out_valid_out;
    wire [0:0] windowing_B3_branch_out_c0_exe31;
    wire [0:0] windowing_B3_branch_out_c0_exe42;
    wire [0:0] windowing_B3_branch_out_c0_exe73;
    wire [0:0] windowing_B3_branch_out_c0_exe95;
    wire [0:0] windowing_B3_branch_out_reduction_windowing_5;
    wire [0:0] windowing_B3_branch_out_stall_out;
    wire [0:0] windowing_B3_branch_out_valid_out_0;
    wire [0:0] windowing_B3_merge_out_c0_exe106;
    wire [0:0] windowing_B3_merge_out_c0_exe31;
    wire [0:0] windowing_B3_merge_out_c0_exe42;
    wire [0:0] windowing_B3_merge_out_c0_exe73;
    wire [0:0] windowing_B3_merge_out_c0_exe84;
    wire [0:0] windowing_B3_merge_out_c0_exe95;
    wire [0:0] windowing_B3_merge_out_memdep_7;
    wire [0:0] windowing_B3_merge_out_stall_out_0;
    wire [0:0] windowing_B3_merge_out_valid_out;


    // windowing_B3_branch(BLACKBOX,45)
    windowing_B3_branch thewindowing_B3_branch (
        .in_c0_exe31(bb_windowing_B3_stall_region_out_c0_exe31),
        .in_c0_exe42(bb_windowing_B3_stall_region_out_c0_exe42),
        .in_c0_exe73(bb_windowing_B3_stall_region_out_c0_exe73),
        .in_c0_exe95(bb_windowing_B3_stall_region_out_c0_exe95),
        .in_reduction_windowing_5(bb_windowing_B3_stall_region_out_reduction_windowing_5),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_windowing_B3_stall_region_out_valid_out),
        .out_c0_exe31(windowing_B3_branch_out_c0_exe31),
        .out_c0_exe42(windowing_B3_branch_out_c0_exe42),
        .out_c0_exe73(windowing_B3_branch_out_c0_exe73),
        .out_c0_exe95(windowing_B3_branch_out_c0_exe95),
        .out_reduction_windowing_5(windowing_B3_branch_out_reduction_windowing_5),
        .out_stall_out(windowing_B3_branch_out_stall_out),
        .out_valid_out_0(windowing_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B3_merge(BLACKBOX,46)
    windowing_B3_merge thewindowing_B3_merge (
        .in_c0_exe106_0(in_c0_exe106_0),
        .in_c0_exe31_0(in_c0_exe31_0),
        .in_c0_exe42_0(in_c0_exe42_0),
        .in_c0_exe73_0(in_c0_exe73_0),
        .in_c0_exe84_0(in_c0_exe84_0),
        .in_c0_exe95_0(in_c0_exe95_0),
        .in_memdep_7_0(in_memdep_7_0),
        .in_stall_in(bb_windowing_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe106(windowing_B3_merge_out_c0_exe106),
        .out_c0_exe31(windowing_B3_merge_out_c0_exe31),
        .out_c0_exe42(windowing_B3_merge_out_c0_exe42),
        .out_c0_exe73(windowing_B3_merge_out_c0_exe73),
        .out_c0_exe84(windowing_B3_merge_out_c0_exe84),
        .out_c0_exe95(windowing_B3_merge_out_c0_exe95),
        .out_memdep_7(windowing_B3_merge_out_memdep_7),
        .out_stall_out_0(windowing_B3_merge_out_stall_out_0),
        .out_valid_out(windowing_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B3_stall_region(BLACKBOX,2)
    windowing_bb_B3_stall_region thebb_windowing_B3_stall_region (
        .in_c0_exe106(windowing_B3_merge_out_c0_exe106),
        .in_c0_exe31(windowing_B3_merge_out_c0_exe31),
        .in_c0_exe42(windowing_B3_merge_out_c0_exe42),
        .in_c0_exe73(windowing_B3_merge_out_c0_exe73),
        .in_c0_exe84(windowing_B3_merge_out_c0_exe84),
        .in_c0_exe95(windowing_B3_merge_out_c0_exe95),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_flush(in_flush),
        .in_memdep_12_windowing_avm_readdata(in_memdep_12_windowing_avm_readdata),
        .in_memdep_12_windowing_avm_readdatavalid(in_memdep_12_windowing_avm_readdatavalid),
        .in_memdep_12_windowing_avm_waitrequest(in_memdep_12_windowing_avm_waitrequest),
        .in_memdep_12_windowing_avm_writeack(in_memdep_12_windowing_avm_writeack),
        .in_memdep_13_windowing_avm_readdata(in_memdep_13_windowing_avm_readdata),
        .in_memdep_13_windowing_avm_readdatavalid(in_memdep_13_windowing_avm_readdatavalid),
        .in_memdep_13_windowing_avm_waitrequest(in_memdep_13_windowing_avm_waitrequest),
        .in_memdep_13_windowing_avm_writeack(in_memdep_13_windowing_avm_writeack),
        .in_memdep_7(windowing_B3_merge_out_memdep_7),
        .in_stall_in(windowing_B3_branch_out_stall_out),
        .in_valid_in(windowing_B3_merge_out_valid_out),
        .out_c0_exe31(bb_windowing_B3_stall_region_out_c0_exe31),
        .out_c0_exe42(bb_windowing_B3_stall_region_out_c0_exe42),
        .out_c0_exe73(bb_windowing_B3_stall_region_out_c0_exe73),
        .out_c0_exe95(bb_windowing_B3_stall_region_out_c0_exe95),
        .out_feedback_out_8(bb_windowing_B3_stall_region_out_feedback_out_8),
        .out_feedback_valid_out_8(bb_windowing_B3_stall_region_out_feedback_valid_out_8),
        .out_memdep_12_windowing_avm_address(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_address),
        .out_memdep_12_windowing_avm_burstcount(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_burstcount),
        .out_memdep_12_windowing_avm_byteenable(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_byteenable),
        .out_memdep_12_windowing_avm_enable(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_enable),
        .out_memdep_12_windowing_avm_read(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_read),
        .out_memdep_12_windowing_avm_write(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_write),
        .out_memdep_12_windowing_avm_writedata(bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_writedata),
        .out_memdep_13_windowing_avm_address(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_address),
        .out_memdep_13_windowing_avm_burstcount(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_burstcount),
        .out_memdep_13_windowing_avm_byteenable(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_byteenable),
        .out_memdep_13_windowing_avm_enable(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_enable),
        .out_memdep_13_windowing_avm_read(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_read),
        .out_memdep_13_windowing_avm_write(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_write),
        .out_memdep_13_windowing_avm_writedata(bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_writedata),
        .out_reduction_windowing_5(bb_windowing_B3_stall_region_out_reduction_windowing_5),
        .out_stall_out(bb_windowing_B3_stall_region_out_stall_out),
        .out_valid_out(bb_windowing_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_out_8_sync(GPOUT,3)
    assign out_feedback_out_8 = bb_windowing_B3_stall_region_out_feedback_out_8;

    // feedback_valid_out_8_sync(GPOUT,5)
    assign out_feedback_valid_out_8 = bb_windowing_B3_stall_region_out_feedback_valid_out_8;

    // out_c0_exe31(GPOUT,24)
    assign out_c0_exe31 = windowing_B3_branch_out_c0_exe31;

    // out_c0_exe42(GPOUT,25)
    assign out_c0_exe42 = windowing_B3_branch_out_c0_exe42;

    // out_c0_exe73(GPOUT,26)
    assign out_c0_exe73 = windowing_B3_branch_out_c0_exe73;

    // out_c0_exe95(GPOUT,27)
    assign out_c0_exe95 = windowing_B3_branch_out_c0_exe95;

    // out_memdep_12_windowing_avm_address(GPOUT,28)
    assign out_memdep_12_windowing_avm_address = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_address;

    // out_memdep_12_windowing_avm_burstcount(GPOUT,29)
    assign out_memdep_12_windowing_avm_burstcount = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_burstcount;

    // out_memdep_12_windowing_avm_byteenable(GPOUT,30)
    assign out_memdep_12_windowing_avm_byteenable = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_byteenable;

    // out_memdep_12_windowing_avm_enable(GPOUT,31)
    assign out_memdep_12_windowing_avm_enable = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_enable;

    // out_memdep_12_windowing_avm_read(GPOUT,32)
    assign out_memdep_12_windowing_avm_read = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_read;

    // out_memdep_12_windowing_avm_write(GPOUT,33)
    assign out_memdep_12_windowing_avm_write = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_write;

    // out_memdep_12_windowing_avm_writedata(GPOUT,34)
    assign out_memdep_12_windowing_avm_writedata = bb_windowing_B3_stall_region_out_memdep_12_windowing_avm_writedata;

    // out_memdep_13_windowing_avm_address(GPOUT,35)
    assign out_memdep_13_windowing_avm_address = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_address;

    // out_memdep_13_windowing_avm_burstcount(GPOUT,36)
    assign out_memdep_13_windowing_avm_burstcount = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_burstcount;

    // out_memdep_13_windowing_avm_byteenable(GPOUT,37)
    assign out_memdep_13_windowing_avm_byteenable = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_byteenable;

    // out_memdep_13_windowing_avm_enable(GPOUT,38)
    assign out_memdep_13_windowing_avm_enable = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_enable;

    // out_memdep_13_windowing_avm_read(GPOUT,39)
    assign out_memdep_13_windowing_avm_read = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_read;

    // out_memdep_13_windowing_avm_write(GPOUT,40)
    assign out_memdep_13_windowing_avm_write = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_write;

    // out_memdep_13_windowing_avm_writedata(GPOUT,41)
    assign out_memdep_13_windowing_avm_writedata = bb_windowing_B3_stall_region_out_memdep_13_windowing_avm_writedata;

    // out_reduction_windowing_5(GPOUT,42)
    assign out_reduction_windowing_5 = windowing_B3_branch_out_reduction_windowing_5;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = windowing_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,44)
    assign out_valid_out_0 = windowing_B3_branch_out_valid_out_0;

endmodule
