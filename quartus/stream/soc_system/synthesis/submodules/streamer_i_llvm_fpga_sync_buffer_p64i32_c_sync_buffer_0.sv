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

// SystemVerilog created from i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer0
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 15:16:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_0 (
    output wire [63:0] out_buffer_out,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_buffer_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_i_dependence,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [63:0] i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_buffer_in;
    wire [63:0] i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_buffer_out;
    wire [1:0] i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_const_1_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_join_q;
    wire [61:0] i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_select_63_b;


    // i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1(EXTIFACE,3)
    assign i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_buffer_in = in_buffer_in;
    acl_dspba_buffer #(
        .WIDTH(64)
    ) thei_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1 (
        .buffer_in(in_buffer_in),
        .buffer_out(i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_buffer_out)
    );

    // i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_select_63(BITSELECT,6)
    assign i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_select_63_b = i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_buffer_out[63:2];

    // i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_const_1(CONSTANT,4)
    assign i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_const_1_q = $unsigned(2'b00);

    // i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_join(BITJOIN,5)
    assign i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_join_q = {i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_select_63_b, i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_const_1_q};

    // dupName_0_sync_out_x(GPOUT,2)@1
    assign out_buffer_out = i_llvm_fpga_sync_buffer_p64i32_c_sync_buffer_streamer1_vt_join_q;
    assign out_valid_out = in_valid_in;

    // sync_out(GPOUT,10)@20000000
    assign out_stall_out = in_stall_in;

endmodule
