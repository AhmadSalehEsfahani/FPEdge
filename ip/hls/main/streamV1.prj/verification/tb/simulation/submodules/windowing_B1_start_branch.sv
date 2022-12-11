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

// SystemVerilog created from windowing_B1_start_branch
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_B1_start_branch (
    input wire [0:0] in_c0_exe2,
    input wire [0:0] in_memdep_phi15_pop9,
    input wire [0:0] in_memdep_phi16_pop10,
    input wire [0:0] in_memdep_phi18_pop11,
    input wire [0:0] in_memdep_phi23_pop12,
    input wire [0:0] in_reduction_windowing_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe2,
    output wire [0:0] out_memdep_phi15_pop9,
    output wire [0:0] out_memdep_phi16_pop10,
    output wire [0:0] out_memdep_phi18_pop11,
    output wire [0:0] out_memdep_phi23_pop12,
    output wire [0:0] out_reduction_windowing_1,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe2(GPOUT,10)
    assign out_c0_exe2 = in_c0_exe2;

    // out_memdep_phi15_pop9(GPOUT,11)
    assign out_memdep_phi15_pop9 = in_memdep_phi15_pop9;

    // out_memdep_phi16_pop10(GPOUT,12)
    assign out_memdep_phi16_pop10 = in_memdep_phi16_pop10;

    // out_memdep_phi18_pop11(GPOUT,13)
    assign out_memdep_phi18_pop11 = in_memdep_phi18_pop11;

    // out_memdep_phi23_pop12(GPOUT,14)
    assign out_memdep_phi23_pop12 = in_memdep_phi23_pop12;

    // out_reduction_windowing_1(GPOUT,15)
    assign out_reduction_windowing_1 = in_reduction_windowing_1;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

endmodule
