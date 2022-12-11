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

// SystemVerilog created from windowing_B4_merge
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_B4_merge (
    input wire [0:0] in_forked5152_pop1775_0,
    input wire [0:0] in_forked5152_pop1775_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_memdep_phi16_pop1055_pop1978_0,
    input wire [0:0] in_memdep_phi16_pop1055_pop1978_1,
    input wire [0:0] in_memdep_phi23_or2472_0,
    input wire [0:0] in_memdep_phi23_or2472_1,
    input wire [0:0] in_memdep_phi23_pop1259_pop2270_0,
    input wire [0:0] in_memdep_phi23_pop1259_pop2270_1,
    input wire [0:0] in_reduction_windowing_581_0,
    input wire [0:0] in_reduction_windowing_581_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked5152_pop1775,
    output wire [0:0] out_memdep_phi16_pop1055_pop1978,
    output wire [0:0] out_memdep_phi23_or2472,
    output wire [0:0] out_memdep_phi23_pop1259_pop2270,
    output wire [0:0] out_reduction_windowing_581,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked5152_pop1775_mux_s;
    reg [0:0] forked5152_pop1775_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] memdep_phi16_pop1055_pop1978_mux_s;
    reg [0:0] memdep_phi16_pop1055_pop1978_mux_q;
    wire [0:0] memdep_phi23_or2472_mux_s;
    reg [0:0] memdep_phi23_or2472_mux_q;
    wire [0:0] memdep_phi23_pop1259_pop2270_mux_s;
    reg [0:0] memdep_phi23_pop1259_pop2270_mux_q;
    wire [0:0] reduction_windowing_581_mux_s;
    reg [0:0] reduction_windowing_581_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked_mux(MUX,3)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,22)
    assign out_forked = forked_mux_q;

    // forked5152_pop1775_mux(MUX,2)
    assign forked5152_pop1775_mux_s = in_valid_in_0;
    always @(forked5152_pop1775_mux_s or in_forked5152_pop1775_1 or in_forked5152_pop1775_0)
    begin
        unique case (forked5152_pop1775_mux_s)
            1'b0 : forked5152_pop1775_mux_q = in_forked5152_pop1775_1;
            1'b1 : forked5152_pop1775_mux_q = in_forked5152_pop1775_0;
            default : forked5152_pop1775_mux_q = 1'b0;
        endcase
    end

    // out_forked5152_pop1775(GPOUT,23)
    assign out_forked5152_pop1775 = forked5152_pop1775_mux_q;

    // memdep_phi16_pop1055_pop1978_mux(MUX,19)
    assign memdep_phi16_pop1055_pop1978_mux_s = in_valid_in_0;
    always @(memdep_phi16_pop1055_pop1978_mux_s or in_memdep_phi16_pop1055_pop1978_1 or in_memdep_phi16_pop1055_pop1978_0)
    begin
        unique case (memdep_phi16_pop1055_pop1978_mux_s)
            1'b0 : memdep_phi16_pop1055_pop1978_mux_q = in_memdep_phi16_pop1055_pop1978_1;
            1'b1 : memdep_phi16_pop1055_pop1978_mux_q = in_memdep_phi16_pop1055_pop1978_0;
            default : memdep_phi16_pop1055_pop1978_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi16_pop1055_pop1978(GPOUT,24)
    assign out_memdep_phi16_pop1055_pop1978 = memdep_phi16_pop1055_pop1978_mux_q;

    // memdep_phi23_or2472_mux(MUX,20)
    assign memdep_phi23_or2472_mux_s = in_valid_in_0;
    always @(memdep_phi23_or2472_mux_s or in_memdep_phi23_or2472_1 or in_memdep_phi23_or2472_0)
    begin
        unique case (memdep_phi23_or2472_mux_s)
            1'b0 : memdep_phi23_or2472_mux_q = in_memdep_phi23_or2472_1;
            1'b1 : memdep_phi23_or2472_mux_q = in_memdep_phi23_or2472_0;
            default : memdep_phi23_or2472_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi23_or2472(GPOUT,25)
    assign out_memdep_phi23_or2472 = memdep_phi23_or2472_mux_q;

    // memdep_phi23_pop1259_pop2270_mux(MUX,21)
    assign memdep_phi23_pop1259_pop2270_mux_s = in_valid_in_0;
    always @(memdep_phi23_pop1259_pop2270_mux_s or in_memdep_phi23_pop1259_pop2270_1 or in_memdep_phi23_pop1259_pop2270_0)
    begin
        unique case (memdep_phi23_pop1259_pop2270_mux_s)
            1'b0 : memdep_phi23_pop1259_pop2270_mux_q = in_memdep_phi23_pop1259_pop2270_1;
            1'b1 : memdep_phi23_pop1259_pop2270_mux_q = in_memdep_phi23_pop1259_pop2270_0;
            default : memdep_phi23_pop1259_pop2270_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi23_pop1259_pop2270(GPOUT,26)
    assign out_memdep_phi23_pop1259_pop2270 = memdep_phi23_pop1259_pop2270_mux_q;

    // reduction_windowing_581_mux(MUX,31)
    assign reduction_windowing_581_mux_s = in_valid_in_0;
    always @(reduction_windowing_581_mux_s or in_reduction_windowing_581_1 or in_reduction_windowing_581_0)
    begin
        unique case (reduction_windowing_581_mux_s)
            1'b0 : reduction_windowing_581_mux_q = in_reduction_windowing_581_1;
            1'b1 : reduction_windowing_581_mux_q = in_reduction_windowing_581_0;
            default : reduction_windowing_581_mux_q = 1'b0;
        endcase
    end

    // out_reduction_windowing_581(GPOUT,27)
    assign out_reduction_windowing_581 = reduction_windowing_581_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,32)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,28)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,33)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,29)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,30)
    assign out_valid_out = valid_or_q;

endmodule
