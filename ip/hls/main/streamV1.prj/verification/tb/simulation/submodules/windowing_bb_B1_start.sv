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

// SystemVerilog created from bb_windowing_B1_start
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B1_start (
    input wire [0:0] in_feedback_in_10,
    input wire [0:0] in_feedback_in_11,
    input wire [0:0] in_feedback_in_12,
    input wire [0:0] in_feedback_in_8,
    input wire [0:0] in_feedback_in_9,
    output wire [0:0] out_feedback_stall_out_10,
    output wire [0:0] out_feedback_stall_out_11,
    output wire [0:0] out_feedback_stall_out_12,
    output wire [0:0] out_feedback_stall_out_8,
    output wire [0:0] out_feedback_stall_out_9,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_feedback_valid_in_8,
    input wire [0:0] in_feedback_valid_in_9,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked51_0,
    input wire [0:0] in_forked51_1,
    input wire [0:0] in_iord_bl_call_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_call_windowing_i_fifovalid,
    input wire [511:0] in_memdep_8_windowing_avm_readdata,
    input wire [0:0] in_memdep_8_windowing_avm_readdatavalid,
    input wire [0:0] in_memdep_8_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_8_windowing_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_windowing_o_fifoready,
    output wire [31:0] out_memdep_8_windowing_avm_address,
    output wire [0:0] out_memdep_8_windowing_avm_burstcount,
    output wire [63:0] out_memdep_8_windowing_avm_byteenable,
    output wire [0:0] out_memdep_8_windowing_avm_enable,
    output wire [0:0] out_memdep_8_windowing_avm_read,
    output wire [0:0] out_memdep_8_windowing_avm_write,
    output wire [511:0] out_memdep_8_windowing_avm_writedata,
    output wire [0:0] out_memdep_phi15_pop9,
    output wire [0:0] out_memdep_phi16_pop10,
    output wire [0:0] out_memdep_phi18_pop11,
    output wire [0:0] out_memdep_phi23_pop12,
    output wire [0:0] out_reduction_windowing_1,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_windowing_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out;
    wire [0:0] bb_windowing_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out;
    wire [0:0] bb_windowing_B1_start_stall_region_out_c0_exe2;
    wire [0:0] bb_windowing_B1_start_stall_region_out_feedback_stall_out_10;
    wire [0:0] bb_windowing_B1_start_stall_region_out_feedback_stall_out_11;
    wire [0:0] bb_windowing_B1_start_stall_region_out_feedback_stall_out_12;
    wire [0:0] bb_windowing_B1_start_stall_region_out_feedback_stall_out_8;
    wire [0:0] bb_windowing_B1_start_stall_region_out_feedback_stall_out_9;
    wire [0:0] bb_windowing_B1_start_stall_region_out_iord_bl_call_windowing_o_fifoalmost_full;
    wire [0:0] bb_windowing_B1_start_stall_region_out_iord_bl_call_windowing_o_fifoready;
    wire [31:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_address;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_burstcount;
    wire [63:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_byteenable;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_enable;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_read;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_write;
    wire [511:0] bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_writedata;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_phi15_pop9;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_phi16_pop10;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_phi18_pop11;
    wire [0:0] bb_windowing_B1_start_stall_region_out_memdep_phi23_pop12;
    wire [0:0] bb_windowing_B1_start_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_windowing_B1_start_stall_region_out_reduction_windowing_1;
    wire [0:0] bb_windowing_B1_start_stall_region_out_stall_out;
    wire [0:0] bb_windowing_B1_start_stall_region_out_valid_out;
    wire [0:0] windowing_B1_start_branch_out_c0_exe2;
    wire [0:0] windowing_B1_start_branch_out_memdep_phi15_pop9;
    wire [0:0] windowing_B1_start_branch_out_memdep_phi16_pop10;
    wire [0:0] windowing_B1_start_branch_out_memdep_phi18_pop11;
    wire [0:0] windowing_B1_start_branch_out_memdep_phi23_pop12;
    wire [0:0] windowing_B1_start_branch_out_reduction_windowing_1;
    wire [0:0] windowing_B1_start_branch_out_stall_out;
    wire [0:0] windowing_B1_start_branch_out_valid_out_0;
    wire [0:0] windowing_B1_start_merge_out_forked51;
    wire [0:0] windowing_B1_start_merge_out_stall_out_0;
    wire [0:0] windowing_B1_start_merge_out_stall_out_1;
    wire [0:0] windowing_B1_start_merge_out_valid_out;


    // windowing_B1_start_branch(BLACKBOX,54)
    windowing_B1_start_branch thewindowing_B1_start_branch (
        .in_c0_exe2(bb_windowing_B1_start_stall_region_out_c0_exe2),
        .in_memdep_phi15_pop9(bb_windowing_B1_start_stall_region_out_memdep_phi15_pop9),
        .in_memdep_phi16_pop10(bb_windowing_B1_start_stall_region_out_memdep_phi16_pop10),
        .in_memdep_phi18_pop11(bb_windowing_B1_start_stall_region_out_memdep_phi18_pop11),
        .in_memdep_phi23_pop12(bb_windowing_B1_start_stall_region_out_memdep_phi23_pop12),
        .in_reduction_windowing_1(bb_windowing_B1_start_stall_region_out_reduction_windowing_1),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_windowing_B1_start_stall_region_out_valid_out),
        .out_c0_exe2(windowing_B1_start_branch_out_c0_exe2),
        .out_memdep_phi15_pop9(windowing_B1_start_branch_out_memdep_phi15_pop9),
        .out_memdep_phi16_pop10(windowing_B1_start_branch_out_memdep_phi16_pop10),
        .out_memdep_phi18_pop11(windowing_B1_start_branch_out_memdep_phi18_pop11),
        .out_memdep_phi23_pop12(windowing_B1_start_branch_out_memdep_phi23_pop12),
        .out_reduction_windowing_1(windowing_B1_start_branch_out_reduction_windowing_1),
        .out_stall_out(windowing_B1_start_branch_out_stall_out),
        .out_valid_out_0(windowing_B1_start_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // windowing_B1_start_merge(BLACKBOX,55)
    windowing_B1_start_merge thewindowing_B1_start_merge (
        .in_forked51_0(in_forked51_0),
        .in_forked51_1(in_forked51_1),
        .in_stall_in(bb_windowing_B1_start_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked51(windowing_B1_start_merge_out_forked51),
        .out_stall_out_0(windowing_B1_start_merge_out_stall_out_0),
        .out_stall_out_1(windowing_B1_start_merge_out_stall_out_1),
        .out_valid_out(windowing_B1_start_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_windowing_B1_start_stall_region(BLACKBOX,2)
    windowing_bb_B1_start_stall_region thebb_windowing_B1_start_stall_region (
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_in_8(in_feedback_in_8),
        .in_feedback_in_9(in_feedback_in_9),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_feedback_valid_in_8(in_feedback_valid_in_8),
        .in_feedback_valid_in_9(in_feedback_valid_in_9),
        .in_flush(in_flush),
        .in_forked51(windowing_B1_start_merge_out_forked51),
        .in_iord_bl_call_windowing_i_fifodata(in_iord_bl_call_windowing_i_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(in_iord_bl_call_windowing_i_fifovalid),
        .in_memdep_8_windowing_avm_readdata(in_memdep_8_windowing_avm_readdata),
        .in_memdep_8_windowing_avm_readdatavalid(in_memdep_8_windowing_avm_readdatavalid),
        .in_memdep_8_windowing_avm_waitrequest(in_memdep_8_windowing_avm_waitrequest),
        .in_memdep_8_windowing_avm_writeack(in_memdep_8_windowing_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(windowing_B1_start_branch_out_stall_out),
        .in_valid_in(windowing_B1_start_merge_out_valid_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out(bb_windowing_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out(bb_windowing_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out),
        .out_c0_exe2(bb_windowing_B1_start_stall_region_out_c0_exe2),
        .out_feedback_stall_out_10(bb_windowing_B1_start_stall_region_out_feedback_stall_out_10),
        .out_feedback_stall_out_11(bb_windowing_B1_start_stall_region_out_feedback_stall_out_11),
        .out_feedback_stall_out_12(bb_windowing_B1_start_stall_region_out_feedback_stall_out_12),
        .out_feedback_stall_out_8(bb_windowing_B1_start_stall_region_out_feedback_stall_out_8),
        .out_feedback_stall_out_9(bb_windowing_B1_start_stall_region_out_feedback_stall_out_9),
        .out_iord_bl_call_windowing_o_fifoalmost_full(bb_windowing_B1_start_stall_region_out_iord_bl_call_windowing_o_fifoalmost_full),
        .out_iord_bl_call_windowing_o_fifoready(bb_windowing_B1_start_stall_region_out_iord_bl_call_windowing_o_fifoready),
        .out_memdep_8_windowing_avm_address(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_address),
        .out_memdep_8_windowing_avm_burstcount(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_burstcount),
        .out_memdep_8_windowing_avm_byteenable(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_byteenable),
        .out_memdep_8_windowing_avm_enable(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_enable),
        .out_memdep_8_windowing_avm_read(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_read),
        .out_memdep_8_windowing_avm_write(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_write),
        .out_memdep_8_windowing_avm_writedata(bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_writedata),
        .out_memdep_phi15_pop9(bb_windowing_B1_start_stall_region_out_memdep_phi15_pop9),
        .out_memdep_phi16_pop10(bb_windowing_B1_start_stall_region_out_memdep_phi16_pop10),
        .out_memdep_phi18_pop11(bb_windowing_B1_start_stall_region_out_memdep_phi18_pop11),
        .out_memdep_phi23_pop12(bb_windowing_B1_start_stall_region_out_memdep_phi23_pop12),
        .out_pipeline_valid_out(bb_windowing_B1_start_stall_region_out_pipeline_valid_out),
        .out_reduction_windowing_1(bb_windowing_B1_start_stall_region_out_reduction_windowing_1),
        .out_stall_out(bb_windowing_B1_start_stall_region_out_stall_out),
        .out_valid_out(bb_windowing_B1_start_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_10_sync(GPOUT,8)
    assign out_feedback_stall_out_10 = bb_windowing_B1_start_stall_region_out_feedback_stall_out_10;

    // feedback_stall_out_11_sync(GPOUT,9)
    assign out_feedback_stall_out_11 = bb_windowing_B1_start_stall_region_out_feedback_stall_out_11;

    // feedback_stall_out_12_sync(GPOUT,10)
    assign out_feedback_stall_out_12 = bb_windowing_B1_start_stall_region_out_feedback_stall_out_12;

    // feedback_stall_out_8_sync(GPOUT,11)
    assign out_feedback_stall_out_8 = bb_windowing_B1_start_stall_region_out_feedback_stall_out_8;

    // feedback_stall_out_9_sync(GPOUT,12)
    assign out_feedback_stall_out_9 = bb_windowing_B1_start_stall_region_out_feedback_stall_out_9;

    // out_c0_exe2(GPOUT,30)
    assign out_c0_exe2 = windowing_B1_start_branch_out_c0_exe2;

    // out_exiting_stall_out(GPOUT,31)
    assign out_exiting_stall_out = bb_windowing_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,32)
    assign out_exiting_valid_out = bb_windowing_B1_start_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going49_windowing2_exiting_valid_out;

    // out_iord_bl_call_windowing_o_fifoalmost_full(GPOUT,33)
    assign out_iord_bl_call_windowing_o_fifoalmost_full = bb_windowing_B1_start_stall_region_out_iord_bl_call_windowing_o_fifoalmost_full;

    // out_iord_bl_call_windowing_o_fifoready(GPOUT,34)
    assign out_iord_bl_call_windowing_o_fifoready = bb_windowing_B1_start_stall_region_out_iord_bl_call_windowing_o_fifoready;

    // out_memdep_8_windowing_avm_address(GPOUT,35)
    assign out_memdep_8_windowing_avm_address = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_address;

    // out_memdep_8_windowing_avm_burstcount(GPOUT,36)
    assign out_memdep_8_windowing_avm_burstcount = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_burstcount;

    // out_memdep_8_windowing_avm_byteenable(GPOUT,37)
    assign out_memdep_8_windowing_avm_byteenable = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_byteenable;

    // out_memdep_8_windowing_avm_enable(GPOUT,38)
    assign out_memdep_8_windowing_avm_enable = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_enable;

    // out_memdep_8_windowing_avm_read(GPOUT,39)
    assign out_memdep_8_windowing_avm_read = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_read;

    // out_memdep_8_windowing_avm_write(GPOUT,40)
    assign out_memdep_8_windowing_avm_write = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_write;

    // out_memdep_8_windowing_avm_writedata(GPOUT,41)
    assign out_memdep_8_windowing_avm_writedata = bb_windowing_B1_start_stall_region_out_memdep_8_windowing_avm_writedata;

    // out_memdep_phi15_pop9(GPOUT,42)
    assign out_memdep_phi15_pop9 = windowing_B1_start_branch_out_memdep_phi15_pop9;

    // out_memdep_phi16_pop10(GPOUT,43)
    assign out_memdep_phi16_pop10 = windowing_B1_start_branch_out_memdep_phi16_pop10;

    // out_memdep_phi18_pop11(GPOUT,44)
    assign out_memdep_phi18_pop11 = windowing_B1_start_branch_out_memdep_phi18_pop11;

    // out_memdep_phi23_pop12(GPOUT,45)
    assign out_memdep_phi23_pop12 = windowing_B1_start_branch_out_memdep_phi23_pop12;

    // out_reduction_windowing_1(GPOUT,46)
    assign out_reduction_windowing_1 = windowing_B1_start_branch_out_reduction_windowing_1;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = windowing_B1_start_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = windowing_B1_start_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,49)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,50)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,51)
    assign out_valid_out_0 = windowing_B1_start_branch_out_valid_out_0;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = bb_windowing_B1_start_stall_region_out_pipeline_valid_out;

endmodule
