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

// SystemVerilog created from windowing_B3_merge
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_B3_merge (
    input wire [0:0] in_c0_exe106_0,
    input wire [0:0] in_c0_exe31_0,
    input wire [0:0] in_c0_exe42_0,
    input wire [0:0] in_c0_exe73_0,
    input wire [0:0] in_c0_exe84_0,
    input wire [0:0] in_c0_exe95_0,
    input wire [0:0] in_memdep_7_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe106,
    output wire [0:0] out_c0_exe31,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe73,
    output wire [0:0] out_c0_exe84,
    output wire [0:0] out_c0_exe95,
    output wire [0:0] out_memdep_7,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe106(GPOUT,11)
    assign out_c0_exe106 = in_c0_exe106_0;

    // out_c0_exe31(GPOUT,12)
    assign out_c0_exe31 = in_c0_exe31_0;

    // out_c0_exe42(GPOUT,13)
    assign out_c0_exe42 = in_c0_exe42_0;

    // out_c0_exe73(GPOUT,14)
    assign out_c0_exe73 = in_c0_exe73_0;

    // out_c0_exe84(GPOUT,15)
    assign out_c0_exe84 = in_c0_exe84_0;

    // out_c0_exe95(GPOUT,16)
    assign out_c0_exe95 = in_c0_exe95_0;

    // out_memdep_7(GPOUT,17)
    assign out_memdep_7 = in_memdep_7_0;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = in_valid_in_0;

endmodule
