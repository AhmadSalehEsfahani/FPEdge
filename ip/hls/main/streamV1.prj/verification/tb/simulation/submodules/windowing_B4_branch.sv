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

// SystemVerilog created from windowing_B4_branch
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_B4_branch (
    input wire [0:0] in_c0_exe5122,
    input wire [0:0] in_c0_exe6123,
    input wire [0:0] in_c0_exe7124,
    input wire [0:0] in_c0_exe8125,
    input wire [0:0] in_c0_exe9126,
    input wire [0:0] in_memdep_14,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe6123,
    output wire [0:0] out_c0_exe7124,
    output wire [0:0] out_c0_exe8125,
    output wire [0:0] out_c0_exe9126,
    output wire [0:0] out_memdep_14,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c0_exe5122_cmp_q;
    reg [0:0] c0_exe6123_reg_q;
    reg [0:0] c0_exe7124_reg_q;
    reg [0:0] c0_exe8125_reg_q;
    reg [0:0] c0_exe9126_reg_q;
    reg [0:0] memdep_14_reg_q;
    wire [0:0] not_stall_in_0_q;
    wire [0:0] not_stall_in_1_q;
    wire [0:0] not_valid_0_q;
    wire [0:0] not_valid_1_q;
    wire [0:0] not_valid_or_not_stall_0_q;
    wire [0:0] not_valid_or_not_stall_1_q;
    reg [0:0] valid_0_reg_q;
    reg [0:0] valid_1_reg_q;
    wire [0:0] valid_out_0_and_q;
    wire [0:0] valid_out_1_and_q;
    wire [0:0] windowing_B4_branch_enable_q;
    wire [0:0] windowing_B4_branch_enable_not_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,18)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe5122_cmp(LOGICAL,2)
    assign c0_exe5122_cmp_q = ~ (in_c0_exe5122);

    // valid_out_1_and(LOGICAL,34)
    assign valid_out_1_and_q = in_valid_in & c0_exe5122_cmp_q;

    // valid_1_reg(REG,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,20)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,22)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,17)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,33)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe5122;

    // valid_0_reg(REG,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,19)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,21)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // windowing_B4_branch_enable(LOGICAL,35)
    assign windowing_B4_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe6123_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe6123_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            c0_exe6123_reg_q <= in_c0_exe6123;
        end
    end

    // out_c0_exe6123(GPOUT,23)
    assign out_c0_exe6123 = c0_exe6123_reg_q;

    // c0_exe7124_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7124_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            c0_exe7124_reg_q <= in_c0_exe7124;
        end
    end

    // out_c0_exe7124(GPOUT,24)
    assign out_c0_exe7124 = c0_exe7124_reg_q;

    // c0_exe8125_reg(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8125_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            c0_exe8125_reg_q <= in_c0_exe8125;
        end
    end

    // out_c0_exe8125(GPOUT,25)
    assign out_c0_exe8125 = c0_exe8125_reg_q;

    // c0_exe9126_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9126_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            c0_exe9126_reg_q <= in_c0_exe9126;
        end
    end

    // out_c0_exe9126(GPOUT,26)
    assign out_c0_exe9126 = c0_exe9126_reg_q;

    // memdep_14_reg(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_14_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B4_branch_enable_q == 1'b1)
        begin
            memdep_14_reg_q <= in_memdep_14;
        end
    end

    // out_memdep_14(GPOUT,27)
    assign out_memdep_14 = memdep_14_reg_q;

    // windowing_B4_branch_enable_not(LOGICAL,36)
    assign windowing_B4_branch_enable_not_q = ~ (windowing_B4_branch_enable_q);

    // out_stall_out(GPOUT,28)
    assign out_stall_out = windowing_B4_branch_enable_not_q;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,30)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
