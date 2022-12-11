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

// SystemVerilog created from bb_windowing_B2
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B2 (
    input wire [0:0] in_flush,
    input wire [0:0] in_forked33_0,
    input wire [0:0] in_forked33_1,
    input wire [0:0] in_forked5164_0,
    input wire [0:0] in_forked5164_1,
    input wire [0:0] in_memdep_phi15_pop965_0,
    input wire [0:0] in_memdep_phi15_pop965_1,
    input wire [0:0] in_memdep_phi16_pop1066_0,
    input wire [0:0] in_memdep_phi16_pop1066_1,
    input wire [0:0] in_memdep_phi18_pop1167_0,
    input wire [0:0] in_memdep_phi18_pop1167_1,
    input wire [0:0] in_memdep_phi23_pop1269_0,
    input wire [0:0] in_memdep_phi23_pop1269_1,
    input wire [511:0] in_memdep_windowing_avm_readdata,
    input wire [0:0] in_memdep_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_windowing_avm_writeack,
    input wire [0:0] in_reduction_windowing_168_0,
    input wire [0:0] in_reduction_windowing_168_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_memdep,
    output wire [31:0] out_memdep_windowing_avm_address,
    output wire [0:0] out_memdep_windowing_avm_burstcount,
    output wire [63:0] out_memdep_windowing_avm_byteenable,
    output wire [0:0] out_memdep_windowing_avm_enable,
    output wire [0:0] out_memdep_windowing_avm_read,
    output wire [0:0] out_memdep_windowing_avm_write,
    output wire [511:0] out_memdep_windowing_avm_writedata,
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

    wire [0:0] bb_windowing_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_stall_out;
    wire [0:0] bb_windowing_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_valid_out;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe10;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe3;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe4;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe6;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe7;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe8;
    wire [0:0] bb_windowing_B2_stall_region_out_c0_exe9;
    wire [0:0] bb_windowing_B2_stall_region_out_memdep;
    wire [31:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_address;
    wire [0:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_enable;
    wire [0:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_read;
    wire [0:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_write;
    wire [511:0] bb_windowing_B2_stall_region_out_memdep_windowing_avm_writedata;
    wire [0:0] bb_windowing_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B2_stall_region_out_stall_out;
    wire [0:0] bb_windowing_B2_stall_region_out_valid_out;
    wire [0:0] windowing_B2_branch_out_c0_exe10;
    wire [0:0] windowing_B2_branch_out_c0_exe3;
    wire [0:0] windowing_B2_branch_out_c0_exe4;
    wire [0:0] windowing_B2_branch_out_c0_exe7;
    wire [0:0] windowing_B2_branch_out_c0_exe8;
    wire [0:0] windowing_B2_branch_out_c0_exe9;
    wire [0:0] windowing_B2_branch_out_memdep;
    wire [0:0] windowing_B2_branch_out_stall_out;
    wire [0:0] windowing_B2_branch_out_valid_out_0;
    wire [0:0] windowing_B2_branch_out_valid_out_1;
    wire [0:0] windowing_B2_merge_out_forked33;
    wire [0:0] windowing_B2_merge_out_forked5164;
    wire [0:0] windowing_B2_merge_out_memdep_phi15_pop965;
    wire [0:0] windowing_B2_merge_out_memdep_phi16_pop1066;
    wire [0:0] windowing_B2_merge_out_memdep_phi18_pop1167;
    wire [0:0] windowing_B2_merge_out_memdep_phi23_pop1269;
    wire [0:0] windowing_B2_merge_out_reduction_windowing_168;
    wire [0:0] windowing_B2_merge_out_stall_out_0;
    wire [0:0] windowing_B2_merge_out_stall_out_1;
    wire [0:0] windowing_B2_merge_out_valid_out;


    // windowing_B2_merge(BLACKBOX,52)
    windowing_B2_merge thewindowing_B2_merge (
        .in_forked33_0(in_forked33_0),
        .in_forked33_1(in_forked33_1),
        .in_forked5164_0(in_forked5164_0),
        .in_forked5164_1(in_forked5164_1),
        .in_memdep_phi15_pop965_0(in_memdep_phi15_pop965_0),
        .in_memdep_phi15_pop965_1(in_memdep_phi15_pop965_1),
        .in_memdep_phi16_pop1066_0(in_memdep_phi16_pop1066_0),
        .in_memdep_phi16_pop1066_1(in_memdep_phi16_pop1066_1),
        .in_memdep_phi18_pop1167_0(in_memdep_phi18_pop1167_0),
        .in_memdep_phi18_pop1167_1(in_memdep_phi18_pop1167_1),
        .in_memdep_phi23_pop1269_0(in_memdep_phi23_pop1269_0),
        .in_memdep_phi23_pop1269_1(in_memdep_phi23_pop1269_1),
        .in_reduction_windowing_168_0(in_reduction_windowing_168_0),
        .in_reduction_windowing_168_1(in_reduction_windowing_168_1),
        .in_stall_in(bb_windowing_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked33(windowing_B2_merge_out_forked33),
        .out_forked5164(windowing_B2_merge_out_forked5164),
        .out_memdep_phi15_pop965(windowing_B2_merge_out_memdep_phi15_pop965),
        .out_memdep_phi16_pop1066(windowing_B2_merge_out_memdep_phi16_pop1066),
        .out_memdep_phi18_pop1167(windowing_B2_merge_out_memdep_phi18_pop1167),
        .out_memdep_phi23_pop1269(windowing_B2_merge_out_memdep_phi23_pop1269),
        .out_reduction_windowing_168(windowing_B2_merge_out_reduction_windowing_168),
        .out_stall_out_0(windowing_B2_merge_out_stall_out_0),
        .out_stall_out_1(windowing_B2_merge_out_stall_out_1),
        .out_valid_out(windowing_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B2_stall_region(BLACKBOX,2)
    windowing_bb_B2_stall_region thebb_windowing_B2_stall_region (
        .in_flush(in_flush),
        .in_forked33(windowing_B2_merge_out_forked33),
        .in_forked5164(windowing_B2_merge_out_forked5164),
        .in_memdep_phi15_pop965(windowing_B2_merge_out_memdep_phi15_pop965),
        .in_memdep_phi16_pop1066(windowing_B2_merge_out_memdep_phi16_pop1066),
        .in_memdep_phi18_pop1167(windowing_B2_merge_out_memdep_phi18_pop1167),
        .in_memdep_phi23_pop1269(windowing_B2_merge_out_memdep_phi23_pop1269),
        .in_memdep_windowing_avm_readdata(in_memdep_windowing_avm_readdata),
        .in_memdep_windowing_avm_readdatavalid(in_memdep_windowing_avm_readdatavalid),
        .in_memdep_windowing_avm_waitrequest(in_memdep_windowing_avm_waitrequest),
        .in_memdep_windowing_avm_writeack(in_memdep_windowing_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_reduction_windowing_168(windowing_B2_merge_out_reduction_windowing_168),
        .in_stall_in(windowing_B2_branch_out_stall_out),
        .in_valid_in(windowing_B2_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_stall_out(bb_windowing_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_valid_out(bb_windowing_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_valid_out),
        .out_c0_exe10(bb_windowing_B2_stall_region_out_c0_exe10),
        .out_c0_exe3(bb_windowing_B2_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_windowing_B2_stall_region_out_c0_exe4),
        .out_c0_exe6(bb_windowing_B2_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_windowing_B2_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_windowing_B2_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_windowing_B2_stall_region_out_c0_exe9),
        .out_memdep(bb_windowing_B2_stall_region_out_memdep),
        .out_memdep_windowing_avm_address(bb_windowing_B2_stall_region_out_memdep_windowing_avm_address),
        .out_memdep_windowing_avm_burstcount(bb_windowing_B2_stall_region_out_memdep_windowing_avm_burstcount),
        .out_memdep_windowing_avm_byteenable(bb_windowing_B2_stall_region_out_memdep_windowing_avm_byteenable),
        .out_memdep_windowing_avm_enable(bb_windowing_B2_stall_region_out_memdep_windowing_avm_enable),
        .out_memdep_windowing_avm_read(bb_windowing_B2_stall_region_out_memdep_windowing_avm_read),
        .out_memdep_windowing_avm_write(bb_windowing_B2_stall_region_out_memdep_windowing_avm_write),
        .out_memdep_windowing_avm_writedata(bb_windowing_B2_stall_region_out_memdep_windowing_avm_writedata),
        .out_pipeline_valid_out(bb_windowing_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_windowing_B2_stall_region_out_stall_out),
        .out_valid_out(bb_windowing_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B2_branch(BLACKBOX,51)
    windowing_B2_branch thewindowing_B2_branch (
        .in_c0_exe10(bb_windowing_B2_stall_region_out_c0_exe10),
        .in_c0_exe3(bb_windowing_B2_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_windowing_B2_stall_region_out_c0_exe4),
        .in_c0_exe6(bb_windowing_B2_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_windowing_B2_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_windowing_B2_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_windowing_B2_stall_region_out_c0_exe9),
        .in_memdep(bb_windowing_B2_stall_region_out_memdep),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_windowing_B2_stall_region_out_valid_out),
        .out_c0_exe10(windowing_B2_branch_out_c0_exe10),
        .out_c0_exe3(windowing_B2_branch_out_c0_exe3),
        .out_c0_exe4(windowing_B2_branch_out_c0_exe4),
        .out_c0_exe7(windowing_B2_branch_out_c0_exe7),
        .out_c0_exe8(windowing_B2_branch_out_c0_exe8),
        .out_c0_exe9(windowing_B2_branch_out_c0_exe9),
        .out_memdep(windowing_B2_branch_out_memdep),
        .out_stall_out(windowing_B2_branch_out_stall_out),
        .out_valid_out_0(windowing_B2_branch_out_valid_out_0),
        .out_valid_out_1(windowing_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe10(GPOUT,26)
    assign out_c0_exe10 = windowing_B2_branch_out_c0_exe10;

    // out_c0_exe3(GPOUT,27)
    assign out_c0_exe3 = windowing_B2_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,28)
    assign out_c0_exe4 = windowing_B2_branch_out_c0_exe4;

    // out_c0_exe7(GPOUT,29)
    assign out_c0_exe7 = windowing_B2_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,30)
    assign out_c0_exe8 = windowing_B2_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,31)
    assign out_c0_exe9 = windowing_B2_branch_out_c0_exe9;

    // out_exiting_stall_out(GPOUT,32)
    assign out_exiting_stall_out = bb_windowing_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,33)
    assign out_exiting_valid_out = bb_windowing_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_windowing6_exiting_valid_out;

    // out_memdep(GPOUT,34)
    assign out_memdep = windowing_B2_branch_out_memdep;

    // out_memdep_windowing_avm_address(GPOUT,35)
    assign out_memdep_windowing_avm_address = bb_windowing_B2_stall_region_out_memdep_windowing_avm_address;

    // out_memdep_windowing_avm_burstcount(GPOUT,36)
    assign out_memdep_windowing_avm_burstcount = bb_windowing_B2_stall_region_out_memdep_windowing_avm_burstcount;

    // out_memdep_windowing_avm_byteenable(GPOUT,37)
    assign out_memdep_windowing_avm_byteenable = bb_windowing_B2_stall_region_out_memdep_windowing_avm_byteenable;

    // out_memdep_windowing_avm_enable(GPOUT,38)
    assign out_memdep_windowing_avm_enable = bb_windowing_B2_stall_region_out_memdep_windowing_avm_enable;

    // out_memdep_windowing_avm_read(GPOUT,39)
    assign out_memdep_windowing_avm_read = bb_windowing_B2_stall_region_out_memdep_windowing_avm_read;

    // out_memdep_windowing_avm_write(GPOUT,40)
    assign out_memdep_windowing_avm_write = bb_windowing_B2_stall_region_out_memdep_windowing_avm_write;

    // out_memdep_windowing_avm_writedata(GPOUT,41)
    assign out_memdep_windowing_avm_writedata = bb_windowing_B2_stall_region_out_memdep_windowing_avm_writedata;

    // out_stall_in_0(GPOUT,42)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = windowing_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = windowing_B2_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,45)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,46)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,47)
    assign out_valid_out_0 = windowing_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,48)
    assign out_valid_out_1 = windowing_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = bb_windowing_B2_stall_region_out_pipeline_valid_out;

endmodule
