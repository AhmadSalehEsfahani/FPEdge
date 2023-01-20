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

// SystemVerilog created from i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg (
    output wire [0:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_data_in,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    reg [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_data_reg_q;
    reg [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_and_stall_in_q;
    wire [0:0] i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_not_q;
    wire [0:0] stall_in_not_q;
    wire [0:0] stall_in_not_or_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // stall_in_not(LOGICAL,8)
    assign stall_in_not_q = ~ (in_stall_in);

    // i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_not(LOGICAL,6)
    assign i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_not_q = ~ (i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q);

    // stall_in_not_or_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg(LOGICAL,9)
    assign stall_in_not_or_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q = i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_not_q | stall_in_not_q;

    // i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg(REG,4)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q == 1'b1)
        begin
            i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q <= in_valid_in;
        end
    end

    // i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_data_reg(REG,3)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_data_reg_q <= $unsigned(1'b0);
        end
        else if (stall_in_not_or_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q == 1'b1)
        begin
            i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_data_reg_q <= in_data_in;
        end
    end

    // dupName_0_sync_out_x(GPOUT,2)@20000000
    assign out_data_out = i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_data_reg_q;
    assign out_valid_out = i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q;

    // i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_and_stall_in(LOGICAL,5)
    assign i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_and_stall_in_q = i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_q & in_stall_in;

    // sync_out(GPOUT,10)@20000000
    assign out_stall_out = i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg_valid_reg_and_stall_in_q;

endmodule
