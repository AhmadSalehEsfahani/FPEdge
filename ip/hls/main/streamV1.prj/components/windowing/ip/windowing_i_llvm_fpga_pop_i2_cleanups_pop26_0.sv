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

// SystemVerilog created from i_llvm_fpga_pop_i2_cleanups_pop26_windowing0
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_i_llvm_fpga_pop_i2_cleanups_pop26_0 (
    output wire [1:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire [7:0] in_feedback_in_26,
    input wire [0:0] in_feedback_valid_in_26,
    output wire [0:0] out_feedback_stall_out_26,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [1:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [1:0] adapt_scalar_trunc4_sel_x_b;
    wire [5:0] c_i6_03_q;
    wire [7:0] element_extension2_q;
    wire [7:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_data_in;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_dir;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_dir_bitsignaltemp;
    wire [7:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_in;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_valid_in;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_predicate;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_in;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_in;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_in_bitsignaltemp;
    wire [7:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_stall_out;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_out;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_out;
    wire i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_out_bitsignaltemp;


    // c_i6_03(CONSTANT,5)
    assign c_i6_03_q = $unsigned(6'b000000);

    // element_extension2(BITJOIN,6)@2
    assign element_extension2_q = {c_i6_03_q, in_data_in};

    // i_llvm_fpga_pop_i2_cleanups_pop26_windowing1(EXTIFACE,9)@2
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_data_in = element_extension2_q;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_dir = in_dir;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_in = in_feedback_in_26;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_valid_in = in_feedback_valid_in_26;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_predicate = in_predicate;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_in = in_stall_in;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_dir_bitsignaltemp = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_dir[0];
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_predicate_bitsignaltemp = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_predicate[0];
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_in_bitsignaltemp = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_in[0];
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_in_bitsignaltemp = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_in[0];
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_stall_out[0] = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_out[0] = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_out[0] = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(8),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i2_cleanups_pop26_windowing1 (
        .data_in(element_extension2_q),
        .dir(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_26),
        .feedback_valid_in(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // adapt_scalar_trunc4_sel_x(BITSELECT,2)@2
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_data_out[1:0];

    // dupName_0_sync_out_x(GPOUT,3)@2
    assign out_data_out = adapt_scalar_trunc4_sel_x_b;
    assign out_valid_out = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_valid_out;

    // feedback_sync_out(GPOUT,8)
    assign out_feedback_stall_out_26 = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_feedback_stall_out;

    // sync_out(GPOUT,11)@2
    assign out_stall_out = i_llvm_fpga_pop_i2_cleanups_pop26_windowing1_stall_out;

endmodule
