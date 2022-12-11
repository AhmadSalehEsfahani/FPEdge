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

// SystemVerilog created from readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_readdata_reg_memcoalesce_load_0000ique_1211_windowing0 (
    output wire [7:0] out_data_out_0_0_tpl,
    output wire [7:0] out_data_out_1_tpl,
    output wire [15:0] out_data_out_2_tpl,
    output wire [31:0] out_data_out_0_3_tpl,
    output wire [31:0] out_data_out_0_4_tpl,
    output wire [31:0] out_data_out_0_5_tpl,
    output wire [31:0] out_data_out_0_6_tpl,
    output wire [7:0] out_data_out_0_7_tpl,
    output wire [7:0] out_data_out_8_tpl,
    output wire [15:0] out_data_out_9_tpl,
    output wire [31:0] out_data_out_0_10_tpl,
    output wire [31:0] out_data_out_0_11_tpl,
    output wire [31:0] out_data_out_0_12_tpl,
    output wire [31:0] out_data_out_0_13_tpl,
    output wire [31:0] out_data_out_0_14_tpl,
    output wire [31:0] out_data_out_15_tpl,
    output wire [63:0] out_data_out_16_tpl,
    output wire [63:0] out_data_out_17_tpl,
    output wire [0:0] out_valid_out,
    input wire [7:0] in_data_in_0_0_tpl,
    input wire [7:0] in_data_in_1_tpl,
    input wire [15:0] in_data_in_2_tpl,
    input wire [31:0] in_data_in_0_3_tpl,
    input wire [31:0] in_data_in_0_4_tpl,
    input wire [31:0] in_data_in_0_5_tpl,
    input wire [31:0] in_data_in_0_6_tpl,
    input wire [7:0] in_data_in_0_7_tpl,
    input wire [7:0] in_data_in_8_tpl,
    input wire [15:0] in_data_in_9_tpl,
    input wire [31:0] in_data_in_0_10_tpl,
    input wire [31:0] in_data_in_0_11_tpl,
    input wire [31:0] in_data_in_0_12_tpl,
    input wire [31:0] in_data_in_0_13_tpl,
    input wire [31:0] in_data_in_0_14_tpl,
    input wire [31:0] in_data_in_15_tpl,
    input wire [63:0] in_data_in_16_tpl,
    input wire [63:0] in_data_in_17_tpl,
    input wire [0:0] in_valid_in,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_0_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_3_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_4_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_5_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_6_0_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_7_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_10_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_11_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_12_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_13_0_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_14_0_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_1_x_q;
    reg [15:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_2_x_q;
    reg [7:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_8_x_q;
    reg [15:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_9_x_q;
    reg [31:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_15_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_16_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_17_x_q;
    reg [0:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q;
    wire [0:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_and_stall_in_q;
    wire [0:0] readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_not_q;
    wire [0:0] stall_in_not_q;
    wire [0:0] stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // stall_in_not(LOGICAL,26)
    assign stall_in_not_q = ~ (in_stall_in);

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_not(LOGICAL,24)
    assign readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_not_q = ~ (readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q);

    // stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg(LOGICAL,27)
    assign stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_not_q | stall_in_not_q;

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg(REG,22)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q <= in_valid_in;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_17_x(REG,21)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_17_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_17_x_q <= in_data_in_17_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_16_x(REG,20)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_16_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_16_x_q <= in_data_in_16_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_15_x(REG,19)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_15_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_15_x_q <= in_data_in_15_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_14_0_x(REG,13)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_14_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_14_0_x_q <= $unsigned(in_data_in_0_14_tpl);
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_13_0_x(REG,12)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_13_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_13_0_x_q <= $unsigned(in_data_in_0_13_tpl);
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_12_0_x(REG,11)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_12_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_12_0_x_q <= $unsigned(in_data_in_0_12_tpl);
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_11_0_x(REG,10)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_11_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_11_0_x_q <= $unsigned(in_data_in_0_11_tpl);
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_10_0_x(REG,9)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_10_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_10_0_x_q <= $unsigned(in_data_in_0_10_tpl);
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_9_x(REG,18)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_9_x_q <= $unsigned(16'b0000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_9_x_q <= in_data_in_9_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_8_x(REG,17)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_8_x_q <= $unsigned(8'b00000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_8_x_q <= in_data_in_8_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_7_0_x(REG,8)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_7_0_x_q <= $unsigned(8'b00000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_7_0_x_q <= in_data_in_0_7_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_6_0_x(REG,7)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_6_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_6_0_x_q <= in_data_in_0_6_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_5_0_x(REG,6)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_5_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_5_0_x_q <= in_data_in_0_5_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_4_0_x(REG,5)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_4_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_4_0_x_q <= in_data_in_0_4_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_3_0_x(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_3_0_x_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_3_0_x_q <= in_data_in_0_3_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_2_x(REG,16)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_2_x_q <= $unsigned(16'b0000000000000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_2_x_q <= in_data_in_2_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_1_x(REG,15)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_1_x_q <= $unsigned(8'b00000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_1_x_q <= in_data_in_1_tpl;
        end
    end

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_0_0_x(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_0_0_x_q <= $unsigned(8'b00000000);
        end
        else if (stall_in_not_or_readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q == 1'b1)
        begin
            readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_0_0_x_q <= in_data_in_0_0_tpl;
        end
    end

    // dupName_0_sync_out_aunroll_vunroll_x(GPOUT,2)@20000000
    assign out_data_out_0_0_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_0_0_x_q;
    assign out_data_out_1_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_1_x_q;
    assign out_data_out_2_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_2_x_q;
    assign out_data_out_0_3_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_3_0_x_q;
    assign out_data_out_0_4_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_4_0_x_q;
    assign out_data_out_0_5_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_5_0_x_q;
    assign out_data_out_0_6_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_6_0_x_q;
    assign out_data_out_0_7_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_7_0_x_q;
    assign out_data_out_8_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_8_x_q;
    assign out_data_out_9_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_9_x_q;
    assign out_data_out_0_10_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_10_0_x_q;
    assign out_data_out_0_11_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_11_0_x_q;
    assign out_data_out_0_12_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_12_0_x_q;
    assign out_data_out_0_13_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_13_0_x_q;
    assign out_data_out_0_14_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_14_0_x_q;
    assign out_data_out_15_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_15_x_q;
    assign out_data_out_16_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_16_x_q;
    assign out_data_out_17_tpl = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_data_reg_17_x_q;
    assign out_valid_out = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q;

    // readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_and_stall_in(LOGICAL,23)
    assign readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_and_stall_in_q = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_q & in_stall_in;

    // sync_out(GPOUT,28)@20000000
    assign out_stall_out = readdata_reg_memcoalesce_load_windowing_fpgaunique_1211_windowing0_valid_reg_and_stall_in_q;

endmodule
