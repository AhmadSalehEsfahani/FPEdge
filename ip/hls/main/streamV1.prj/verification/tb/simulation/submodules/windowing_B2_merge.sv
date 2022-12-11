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

// SystemVerilog created from windowing_B2_merge
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_B2_merge (
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
    input wire [0:0] in_reduction_windowing_168_0,
    input wire [0:0] in_reduction_windowing_168_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked33,
    output wire [0:0] out_forked5164,
    output wire [0:0] out_memdep_phi15_pop965,
    output wire [0:0] out_memdep_phi16_pop1066,
    output wire [0:0] out_memdep_phi18_pop1167,
    output wire [0:0] out_memdep_phi23_pop1269,
    output wire [0:0] out_reduction_windowing_168,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked33_mux_s;
    reg [0:0] forked33_mux_q;
    wire [0:0] forked5164_mux_s;
    reg [0:0] forked5164_mux_q;
    wire [0:0] memdep_phi15_pop965_mux_s;
    reg [0:0] memdep_phi15_pop965_mux_q;
    wire [0:0] memdep_phi16_pop1066_mux_s;
    reg [0:0] memdep_phi16_pop1066_mux_q;
    wire [0:0] memdep_phi18_pop1167_mux_s;
    reg [0:0] memdep_phi18_pop1167_mux_q;
    wire [0:0] memdep_phi23_pop1269_mux_s;
    reg [0:0] memdep_phi23_pop1269_mux_q;
    wire [0:0] reduction_windowing_168_mux_s;
    reg [0:0] reduction_windowing_168_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked33_mux(MUX,2)
    assign forked33_mux_s = in_valid_in_0;
    always @(forked33_mux_s or in_forked33_1 or in_forked33_0)
    begin
        unique case (forked33_mux_s)
            1'b0 : forked33_mux_q = in_forked33_1;
            1'b1 : forked33_mux_q = in_forked33_0;
            default : forked33_mux_q = 1'b0;
        endcase
    end

    // out_forked33(GPOUT,25)
    assign out_forked33 = forked33_mux_q;

    // forked5164_mux(MUX,3)
    assign forked5164_mux_s = in_valid_in_0;
    always @(forked5164_mux_s or in_forked5164_1 or in_forked5164_0)
    begin
        unique case (forked5164_mux_s)
            1'b0 : forked5164_mux_q = in_forked5164_1;
            1'b1 : forked5164_mux_q = in_forked5164_0;
            default : forked5164_mux_q = 1'b0;
        endcase
    end

    // out_forked5164(GPOUT,26)
    assign out_forked5164 = forked5164_mux_q;

    // memdep_phi15_pop965_mux(MUX,21)
    assign memdep_phi15_pop965_mux_s = in_valid_in_0;
    always @(memdep_phi15_pop965_mux_s or in_memdep_phi15_pop965_1 or in_memdep_phi15_pop965_0)
    begin
        unique case (memdep_phi15_pop965_mux_s)
            1'b0 : memdep_phi15_pop965_mux_q = in_memdep_phi15_pop965_1;
            1'b1 : memdep_phi15_pop965_mux_q = in_memdep_phi15_pop965_0;
            default : memdep_phi15_pop965_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi15_pop965(GPOUT,27)
    assign out_memdep_phi15_pop965 = memdep_phi15_pop965_mux_q;

    // memdep_phi16_pop1066_mux(MUX,22)
    assign memdep_phi16_pop1066_mux_s = in_valid_in_0;
    always @(memdep_phi16_pop1066_mux_s or in_memdep_phi16_pop1066_1 or in_memdep_phi16_pop1066_0)
    begin
        unique case (memdep_phi16_pop1066_mux_s)
            1'b0 : memdep_phi16_pop1066_mux_q = in_memdep_phi16_pop1066_1;
            1'b1 : memdep_phi16_pop1066_mux_q = in_memdep_phi16_pop1066_0;
            default : memdep_phi16_pop1066_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi16_pop1066(GPOUT,28)
    assign out_memdep_phi16_pop1066 = memdep_phi16_pop1066_mux_q;

    // memdep_phi18_pop1167_mux(MUX,23)
    assign memdep_phi18_pop1167_mux_s = in_valid_in_0;
    always @(memdep_phi18_pop1167_mux_s or in_memdep_phi18_pop1167_1 or in_memdep_phi18_pop1167_0)
    begin
        unique case (memdep_phi18_pop1167_mux_s)
            1'b0 : memdep_phi18_pop1167_mux_q = in_memdep_phi18_pop1167_1;
            1'b1 : memdep_phi18_pop1167_mux_q = in_memdep_phi18_pop1167_0;
            default : memdep_phi18_pop1167_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi18_pop1167(GPOUT,29)
    assign out_memdep_phi18_pop1167 = memdep_phi18_pop1167_mux_q;

    // memdep_phi23_pop1269_mux(MUX,24)
    assign memdep_phi23_pop1269_mux_s = in_valid_in_0;
    always @(memdep_phi23_pop1269_mux_s or in_memdep_phi23_pop1269_1 or in_memdep_phi23_pop1269_0)
    begin
        unique case (memdep_phi23_pop1269_mux_s)
            1'b0 : memdep_phi23_pop1269_mux_q = in_memdep_phi23_pop1269_1;
            1'b1 : memdep_phi23_pop1269_mux_q = in_memdep_phi23_pop1269_0;
            default : memdep_phi23_pop1269_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi23_pop1269(GPOUT,30)
    assign out_memdep_phi23_pop1269 = memdep_phi23_pop1269_mux_q;

    // reduction_windowing_168_mux(MUX,35)
    assign reduction_windowing_168_mux_s = in_valid_in_0;
    always @(reduction_windowing_168_mux_s or in_reduction_windowing_168_1 or in_reduction_windowing_168_0)
    begin
        unique case (reduction_windowing_168_mux_s)
            1'b0 : reduction_windowing_168_mux_q = in_reduction_windowing_168_1;
            1'b1 : reduction_windowing_168_mux_q = in_reduction_windowing_168_0;
            default : reduction_windowing_168_mux_q = 1'b0;
        endcase
    end

    // out_reduction_windowing_168(GPOUT,31)
    assign out_reduction_windowing_168 = reduction_windowing_168_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,33)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = valid_or_q;

endmodule
