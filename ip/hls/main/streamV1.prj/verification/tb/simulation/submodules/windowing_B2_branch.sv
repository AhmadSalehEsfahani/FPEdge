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

// SystemVerilog created from windowing_B2_branch
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_B2_branch (
    input wire [0:0] in_c0_exe10,
    input wire [0:0] in_c0_exe3,
    input wire [0:0] in_c0_exe4,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_c0_exe9,
    input wire [0:0] in_memdep,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [0:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_c0_exe9,
    output wire [0:0] out_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] c0_exe10_reg_q;
    reg [0:0] c0_exe3_reg_q;
    reg [0:0] c0_exe4_reg_q;
    wire [0:0] c0_exe6_cmp_q;
    reg [0:0] c0_exe7_reg_q;
    reg [0:0] c0_exe8_reg_q;
    reg [0:0] c0_exe9_reg_q;
    reg [0:0] memdep_reg_q;
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
    wire [0:0] windowing_B2_branch_enable_q;
    wire [0:0] windowing_B2_branch_enable_not_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_in_1(LOGICAL,22)
    assign not_stall_in_1_q = ~ (in_stall_in_1);

    // c0_exe6_cmp(LOGICAL,5)
    assign c0_exe6_cmp_q = ~ (in_c0_exe6);

    // valid_out_1_and(LOGICAL,40)
    assign valid_out_1_and_q = in_valid_in & c0_exe6_cmp_q;

    // valid_1_reg(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_1_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            valid_1_reg_q <= valid_out_1_and_q;
        end
    end

    // not_valid_1(LOGICAL,24)
    assign not_valid_1_q = ~ (valid_1_reg_q);

    // not_valid_or_not_stall_1(LOGICAL,26)
    assign not_valid_or_not_stall_1_q = not_valid_1_q | not_stall_in_1_q;

    // not_stall_in_0(LOGICAL,21)
    assign not_stall_in_0_q = ~ (in_stall_in_0);

    // valid_out_0_and(LOGICAL,39)
    assign valid_out_0_and_q = in_valid_in & in_c0_exe6;

    // valid_0_reg(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_0_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            valid_0_reg_q <= valid_out_0_and_q;
        end
    end

    // not_valid_0(LOGICAL,23)
    assign not_valid_0_q = ~ (valid_0_reg_q);

    // not_valid_or_not_stall_0(LOGICAL,25)
    assign not_valid_or_not_stall_0_q = not_valid_0_q | not_stall_in_0_q;

    // windowing_B2_branch_enable(LOGICAL,41)
    assign windowing_B2_branch_enable_q = not_valid_or_not_stall_0_q & not_valid_or_not_stall_1_q;

    // c0_exe10_reg(REG,2)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe10_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            c0_exe10_reg_q <= in_c0_exe10;
        end
    end

    // out_c0_exe10(GPOUT,27)
    assign out_c0_exe10 = c0_exe10_reg_q;

    // c0_exe3_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe3_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            c0_exe3_reg_q <= in_c0_exe3;
        end
    end

    // out_c0_exe3(GPOUT,28)
    assign out_c0_exe3 = c0_exe3_reg_q;

    // c0_exe4_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe4_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            c0_exe4_reg_q <= in_c0_exe4;
        end
    end

    // out_c0_exe4(GPOUT,29)
    assign out_c0_exe4 = c0_exe4_reg_q;

    // c0_exe7_reg(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe7_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            c0_exe7_reg_q <= in_c0_exe7;
        end
    end

    // out_c0_exe7(GPOUT,30)
    assign out_c0_exe7 = c0_exe7_reg_q;

    // c0_exe8_reg(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe8_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            c0_exe8_reg_q <= in_c0_exe8;
        end
    end

    // out_c0_exe8(GPOUT,31)
    assign out_c0_exe8 = c0_exe8_reg_q;

    // c0_exe9_reg(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            c0_exe9_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            c0_exe9_reg_q <= in_c0_exe9;
        end
    end

    // out_c0_exe9(GPOUT,32)
    assign out_c0_exe9 = c0_exe9_reg_q;

    // memdep_reg(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            memdep_reg_q <= $unsigned(1'b0);
        end
        else if (windowing_B2_branch_enable_q == 1'b1)
        begin
            memdep_reg_q <= in_memdep;
        end
    end

    // out_memdep(GPOUT,33)
    assign out_memdep = memdep_reg_q;

    // windowing_B2_branch_enable_not(LOGICAL,42)
    assign windowing_B2_branch_enable_not_q = ~ (windowing_B2_branch_enable_q);

    // out_stall_out(GPOUT,34)
    assign out_stall_out = windowing_B2_branch_enable_not_q;

    // out_valid_out_0(GPOUT,35)
    assign out_valid_out_0 = valid_0_reg_q;

    // out_valid_out_1(GPOUT,36)
    assign out_valid_out_1 = valid_1_reg_q;

endmodule
