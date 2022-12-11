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

// SystemVerilog created from bb_windowing_B4
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B4 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked5152_pop1775_0,
    input wire [0:0] in_forked5152_pop1775_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [511:0] in_memdep_14_windowing_avm_readdata,
    input wire [0:0] in_memdep_14_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_14_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_14_windowing_avm_writeack,
    input wire [0:0] in_memdep_phi16_pop1055_pop1978_0,
    input wire [0:0] in_memdep_phi16_pop1055_pop1978_1,
    input wire [0:0] in_memdep_phi23_or2472_0,
    input wire [0:0] in_memdep_phi23_or2472_1,
    input wire [0:0] in_memdep_phi23_pop1259_pop2270_0,
    input wire [0:0] in_memdep_phi23_pop1259_pop2270_1,
    input wire [0:0] in_reduction_windowing_581_0,
    input wire [0:0] in_reduction_windowing_581_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe6123,
    output wire [0:0] out_c0_exe7124,
    output wire [0:0] out_c0_exe8125,
    output wire [0:0] out_c0_exe9126,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep_14,
    output wire [31:0] out_memdep_14_windowing_avm_address,
    output wire [0:0] out_memdep_14_windowing_avm_burstcount,
    output wire [63:0] out_memdep_14_windowing_avm_byteenable,
    output wire [0:0] out_memdep_14_windowing_avm_enable,
    output wire [0:0] out_memdep_14_windowing_avm_read,
    output wire [0:0] out_memdep_14_windowing_avm_write,
    output wire [511:0] out_memdep_14_windowing_avm_writedata,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_windowing_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out;
    wire [0:0] bb_windowing_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out;
    wire [0:0] bb_windowing_B4_stall_region_out_c0_exe5122;
    wire [0:0] bb_windowing_B4_stall_region_out_c0_exe6123;
    wire [0:0] bb_windowing_B4_stall_region_out_c0_exe7124;
    wire [0:0] bb_windowing_B4_stall_region_out_c0_exe8125;
    wire [0:0] bb_windowing_B4_stall_region_out_c0_exe9126;
    wire [0:0] bb_windowing_B4_stall_region_out_memdep_14;
    wire [31:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_address;
    wire [0:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_enable;
    wire [0:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_read;
    wire [0:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_write;
    wire [511:0] bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_writedata;
    wire [0:0] bb_windowing_B4_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B4_stall_region_out_stall_out;
    wire [0:0] bb_windowing_B4_stall_region_out_valid_out;
    wire [0:0] windowing_B4_branch_out_c0_exe6123;
    wire [0:0] windowing_B4_branch_out_c0_exe7124;
    wire [0:0] windowing_B4_branch_out_c0_exe8125;
    wire [0:0] windowing_B4_branch_out_c0_exe9126;
    wire [0:0] windowing_B4_branch_out_memdep_14;
    wire [0:0] windowing_B4_branch_out_stall_out;
    wire [0:0] windowing_B4_branch_out_valid_out_0;
    wire [0:0] windowing_B4_branch_out_valid_out_1;
    wire [0:0] windowing_B4_merge_out_forked;
    wire [0:0] windowing_B4_merge_out_forked5152_pop1775;
    wire [0:0] windowing_B4_merge_out_memdep_phi16_pop1055_pop1978;
    wire [0:0] windowing_B4_merge_out_memdep_phi23_or2472;
    wire [0:0] windowing_B4_merge_out_memdep_phi23_pop1259_pop2270;
    wire [0:0] windowing_B4_merge_out_reduction_windowing_581;
    wire [0:0] windowing_B4_merge_out_stall_out_0;
    wire [0:0] windowing_B4_merge_out_stall_out_1;
    wire [0:0] windowing_B4_merge_out_valid_out;


    // windowing_B4_merge(BLACKBOX,48)
    windowing_B4_merge thewindowing_B4_merge (
        .in_forked5152_pop1775_0(in_forked5152_pop1775_0),
        .in_forked5152_pop1775_1(in_forked5152_pop1775_1),
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_memdep_phi16_pop1055_pop1978_0(in_memdep_phi16_pop1055_pop1978_0),
        .in_memdep_phi16_pop1055_pop1978_1(in_memdep_phi16_pop1055_pop1978_1),
        .in_memdep_phi23_or2472_0(in_memdep_phi23_or2472_0),
        .in_memdep_phi23_or2472_1(in_memdep_phi23_or2472_1),
        .in_memdep_phi23_pop1259_pop2270_0(in_memdep_phi23_pop1259_pop2270_0),
        .in_memdep_phi23_pop1259_pop2270_1(in_memdep_phi23_pop1259_pop2270_1),
        .in_reduction_windowing_581_0(in_reduction_windowing_581_0),
        .in_reduction_windowing_581_1(in_reduction_windowing_581_1),
        .in_stall_in(bb_windowing_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(windowing_B4_merge_out_forked),
        .out_forked5152_pop1775(windowing_B4_merge_out_forked5152_pop1775),
        .out_memdep_phi16_pop1055_pop1978(windowing_B4_merge_out_memdep_phi16_pop1055_pop1978),
        .out_memdep_phi23_or2472(windowing_B4_merge_out_memdep_phi23_or2472),
        .out_memdep_phi23_pop1259_pop2270(windowing_B4_merge_out_memdep_phi23_pop1259_pop2270),
        .out_reduction_windowing_581(windowing_B4_merge_out_reduction_windowing_581),
        .out_stall_out_0(windowing_B4_merge_out_stall_out_0),
        .out_stall_out_1(windowing_B4_merge_out_stall_out_1),
        .out_valid_out(windowing_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B4_stall_region(BLACKBOX,2)
    windowing_bb_B4_stall_region thebb_windowing_B4_stall_region (
        .in_flush(in_flush),
        .in_forked(windowing_B4_merge_out_forked),
        .in_forked5152_pop1775(windowing_B4_merge_out_forked5152_pop1775),
        .in_memdep_14_windowing_avm_readdata(in_memdep_14_windowing_avm_readdata),
        .in_memdep_14_windowing_avm_readdatavalid(in_memdep_14_windowing_avm_readdatavalid),
        .in_memdep_14_windowing_avm_waitrequest(in_memdep_14_windowing_avm_waitrequest),
        .in_memdep_14_windowing_avm_writeack(in_memdep_14_windowing_avm_writeack),
        .in_memdep_phi16_pop1055_pop1978(windowing_B4_merge_out_memdep_phi16_pop1055_pop1978),
        .in_memdep_phi23_or2472(windowing_B4_merge_out_memdep_phi23_or2472),
        .in_memdep_phi23_pop1259_pop2270(windowing_B4_merge_out_memdep_phi23_pop1259_pop2270),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reduction_windowing_581(windowing_B4_merge_out_reduction_windowing_581),
        .in_stall_in(windowing_B4_branch_out_stall_out),
        .in_valid_in(windowing_B4_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out(bb_windowing_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out(bb_windowing_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out),
        .out_c0_exe5122(bb_windowing_B4_stall_region_out_c0_exe5122),
        .out_c0_exe6123(bb_windowing_B4_stall_region_out_c0_exe6123),
        .out_c0_exe7124(bb_windowing_B4_stall_region_out_c0_exe7124),
        .out_c0_exe8125(bb_windowing_B4_stall_region_out_c0_exe8125),
        .out_c0_exe9126(bb_windowing_B4_stall_region_out_c0_exe9126),
        .out_memdep_14(bb_windowing_B4_stall_region_out_memdep_14),
        .out_memdep_14_windowing_avm_address(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_address),
        .out_memdep_14_windowing_avm_burstcount(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_burstcount),
        .out_memdep_14_windowing_avm_byteenable(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_byteenable),
        .out_memdep_14_windowing_avm_enable(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_enable),
        .out_memdep_14_windowing_avm_read(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_read),
        .out_memdep_14_windowing_avm_write(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_write),
        .out_memdep_14_windowing_avm_writedata(bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_writedata),
        .out_pipeline_valid_out(bb_windowing_B4_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_windowing_B4_stall_region_out_stall_out),
        .out_valid_out(bb_windowing_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B4_branch(BLACKBOX,47)
    windowing_B4_branch thewindowing_B4_branch (
        .in_c0_exe5122(bb_windowing_B4_stall_region_out_c0_exe5122),
        .in_c0_exe6123(bb_windowing_B4_stall_region_out_c0_exe6123),
        .in_c0_exe7124(bb_windowing_B4_stall_region_out_c0_exe7124),
        .in_c0_exe8125(bb_windowing_B4_stall_region_out_c0_exe8125),
        .in_c0_exe9126(bb_windowing_B4_stall_region_out_c0_exe9126),
        .in_memdep_14(bb_windowing_B4_stall_region_out_memdep_14),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_windowing_B4_stall_region_out_valid_out),
        .out_c0_exe6123(windowing_B4_branch_out_c0_exe6123),
        .out_c0_exe7124(windowing_B4_branch_out_c0_exe7124),
        .out_c0_exe8125(windowing_B4_branch_out_c0_exe8125),
        .out_c0_exe9126(windowing_B4_branch_out_c0_exe9126),
        .out_memdep_14(windowing_B4_branch_out_memdep_14),
        .out_stall_out(windowing_B4_branch_out_stall_out),
        .out_valid_out_0(windowing_B4_branch_out_valid_out_0),
        .out_valid_out_1(windowing_B4_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe6123(GPOUT,24)
    assign out_c0_exe6123 = windowing_B4_branch_out_c0_exe6123;

    // out_c0_exe7124(GPOUT,25)
    assign out_c0_exe7124 = windowing_B4_branch_out_c0_exe7124;

    // out_c0_exe8125(GPOUT,26)
    assign out_c0_exe8125 = windowing_B4_branch_out_c0_exe8125;

    // out_c0_exe9126(GPOUT,27)
    assign out_c0_exe9126 = windowing_B4_branch_out_c0_exe9126;

    // out_exiting_stall_out(GPOUT,28)
    assign out_exiting_stall_out = bb_windowing_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,29)
    assign out_exiting_valid_out = bb_windowing_B4_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out;

    // out_memdep_14(GPOUT,30)
    assign out_memdep_14 = windowing_B4_branch_out_memdep_14;

    // out_memdep_14_windowing_avm_address(GPOUT,31)
    assign out_memdep_14_windowing_avm_address = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_address;

    // out_memdep_14_windowing_avm_burstcount(GPOUT,32)
    assign out_memdep_14_windowing_avm_burstcount = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_burstcount;

    // out_memdep_14_windowing_avm_byteenable(GPOUT,33)
    assign out_memdep_14_windowing_avm_byteenable = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_byteenable;

    // out_memdep_14_windowing_avm_enable(GPOUT,34)
    assign out_memdep_14_windowing_avm_enable = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_enable;

    // out_memdep_14_windowing_avm_read(GPOUT,35)
    assign out_memdep_14_windowing_avm_read = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_read;

    // out_memdep_14_windowing_avm_write(GPOUT,36)
    assign out_memdep_14_windowing_avm_write = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_write;

    // out_memdep_14_windowing_avm_writedata(GPOUT,37)
    assign out_memdep_14_windowing_avm_writedata = bb_windowing_B4_stall_region_out_memdep_14_windowing_avm_writedata;

    // out_stall_in_0(GPOUT,38)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = windowing_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = windowing_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,41)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,42)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,43)
    assign out_valid_out_0 = windowing_B4_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,44)
    assign out_valid_out_1 = windowing_B4_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,46)
    assign out_pipeline_valid_out = bb_windowing_B4_stall_region_out_pipeline_valid_out;

endmodule
