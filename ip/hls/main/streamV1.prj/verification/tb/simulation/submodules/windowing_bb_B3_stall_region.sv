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

// SystemVerilog created from bb_windowing_B3_stall_region
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B3_stall_region (
    input wire [511:0] in_memdep_13_windowing_avm_readdata,
    input wire [0:0] in_memdep_13_windowing_avm_writeack,
    input wire [0:0] in_memdep_13_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_13_windowing_avm_readdatavalid,
    output wire [31:0] out_memdep_13_windowing_avm_address,
    output wire [0:0] out_memdep_13_windowing_avm_enable,
    output wire [0:0] out_memdep_13_windowing_avm_read,
    output wire [0:0] out_memdep_13_windowing_avm_write,
    output wire [511:0] out_memdep_13_windowing_avm_writedata,
    output wire [63:0] out_memdep_13_windowing_avm_byteenable,
    output wire [0:0] out_memdep_13_windowing_avm_burstcount,
    output wire [0:0] out_c0_exe31,
    output wire [0:0] out_c0_exe42,
    output wire [0:0] out_c0_exe73,
    output wire [0:0] out_c0_exe95,
    output wire [0:0] out_reduction_windowing_5,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_memdep_12_windowing_avm_readdata,
    input wire [0:0] in_memdep_12_windowing_avm_writeack,
    input wire [0:0] in_memdep_12_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_12_windowing_avm_readdatavalid,
    output wire [31:0] out_memdep_12_windowing_avm_address,
    output wire [0:0] out_memdep_12_windowing_avm_enable,
    output wire [0:0] out_memdep_12_windowing_avm_read,
    output wire [0:0] out_memdep_12_windowing_avm_write,
    output wire [511:0] out_memdep_12_windowing_avm_writedata,
    output wire [63:0] out_memdep_12_windowing_avm_byteenable,
    output wire [0:0] out_memdep_12_windowing_avm_burstcount,
    output wire [0:0] out_feedback_out_8,
    input wire [0:0] in_feedback_stall_in_8,
    output wire [0:0] out_feedback_valid_out_8,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe106,
    input wire [0:0] in_c0_exe31,
    input wire [0:0] in_c0_exe42,
    input wire [0:0] in_c0_exe73,
    input wire [0:0] in_c0_exe84,
    input wire [0:0] in_c0_exe95,
    input wire [0:0] in_memdep_7,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c_float_0_000000e_0010_q;
    wire [63:0] c_i64_46297004169368699086_q;
    wire [63:0] c_i64_46297004169368699129_q;
    wire [7:0] c_i8_08_q;
    wire [31:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_12_windowing0_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_12_windowing0_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_13_windowing5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_13_windowing5_out_o_valid;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_valid_out;
    wire [0:0] i_reduction_windowing_4_windowing2_q;
    wire [0:0] i_reduction_windowing_5_windowing3_q;
    wire [0:0] i_reduction_windowing_6_windowing4_q;
    wire [4:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [3:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] redist5_stall_entry_o7_8_fifo_valid_in;
    wire redist5_stall_entry_o7_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_stall_entry_o7_8_fifo_stall_in;
    wire redist5_stall_entry_o7_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_stall_entry_o7_8_fifo_data_in;
    wire [0:0] redist5_stall_entry_o7_8_fifo_valid_out;
    wire redist5_stall_entry_o7_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_stall_entry_o7_8_fifo_stall_out;
    wire redist5_stall_entry_o7_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_stall_entry_o7_8_fifo_data_out;
    reg [4:0] coalesced_delay_0_0_q;
    reg [3:0] coalesced_delay_1_0_q;
    reg [3:0] coalesced_delay_1_1_q;
    reg [3:0] coalesced_delay_1_2_q;
    reg [3:0] coalesced_delay_1_3_q;
    reg [3:0] coalesced_delay_1_4_q;
    reg [3:0] coalesced_delay_1_5_q;
    reg [3:0] coalesced_delay_1_6_q;
    wire [6:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_join_redist5_stall_entry_o7_8_fifo_q;
    wire [0:0] bubble_select_redist5_stall_entry_o7_8_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_backStall;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_out_redist5_stall_entry_o7_8_fifo_wireValid;
    wire [0:0] SE_out_redist5_stall_entry_o7_8_fifo_and0;
    wire [0:0] SE_out_redist5_stall_entry_o7_8_fifo_and1;
    wire [0:0] SE_out_redist5_stall_entry_o7_8_fifo_and2;
    wire [0:0] SE_out_redist5_stall_entry_o7_8_fifo_backStall;
    wire [0:0] SE_out_redist5_stall_entry_o7_8_fifo_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_1;
    reg [0:0] SE_coalesced_delay_0_0_R_v_2;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_1;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_2;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_or0;
    wire [0:0] SE_coalesced_delay_0_0_or1;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    wire [0:0] SE_coalesced_delay_0_0_V1;
    wire [0:0] SE_coalesced_delay_0_0_V2;
    reg [0:0] SE_coalesced_delay_1_0_R_v_0;
    wire [0:0] SE_coalesced_delay_1_0_v_s_0;
    wire [0:0] SE_coalesced_delay_1_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_0_backEN;
    wire [0:0] SE_coalesced_delay_1_0_backStall;
    wire [0:0] SE_coalesced_delay_1_0_V0;
    reg [0:0] SE_coalesced_delay_1_1_R_v_0;
    wire [0:0] SE_coalesced_delay_1_1_v_s_0;
    wire [0:0] SE_coalesced_delay_1_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_1_backEN;
    wire [0:0] SE_coalesced_delay_1_1_backStall;
    wire [0:0] SE_coalesced_delay_1_1_V0;
    reg [0:0] SE_coalesced_delay_1_2_R_v_0;
    wire [0:0] SE_coalesced_delay_1_2_v_s_0;
    wire [0:0] SE_coalesced_delay_1_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_2_backEN;
    wire [0:0] SE_coalesced_delay_1_2_backStall;
    wire [0:0] SE_coalesced_delay_1_2_V0;
    reg [0:0] SE_coalesced_delay_1_3_R_v_0;
    wire [0:0] SE_coalesced_delay_1_3_v_s_0;
    wire [0:0] SE_coalesced_delay_1_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_3_backEN;
    wire [0:0] SE_coalesced_delay_1_3_backStall;
    wire [0:0] SE_coalesced_delay_1_3_V0;
    reg [0:0] SE_coalesced_delay_1_4_R_v_0;
    wire [0:0] SE_coalesced_delay_1_4_v_s_0;
    wire [0:0] SE_coalesced_delay_1_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_4_backEN;
    wire [0:0] SE_coalesced_delay_1_4_backStall;
    wire [0:0] SE_coalesced_delay_1_4_V0;
    reg [0:0] SE_coalesced_delay_1_5_R_v_0;
    wire [0:0] SE_coalesced_delay_1_5_v_s_0;
    wire [0:0] SE_coalesced_delay_1_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_5_backEN;
    wire [0:0] SE_coalesced_delay_1_5_backStall;
    wire [0:0] SE_coalesced_delay_1_5_V0;
    reg [0:0] SE_coalesced_delay_1_6_R_v_0;
    wire [0:0] SE_coalesced_delay_1_6_v_s_0;
    wire [0:0] SE_coalesced_delay_1_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_1_6_backEN;
    wire [0:0] SE_coalesced_delay_1_6_backStall;
    wire [0:0] SE_coalesced_delay_1_6_V0;
    wire [0:0] SR_SE_coalesced_delay_0_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_0_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_0_V;
    wire [4:0] SR_SE_coalesced_delay_0_0_D0;
    wire [0:0] SR_SE_coalesced_delay_1_0_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_0_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_0_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_0_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_0_V;
    wire [3:0] SR_SE_coalesced_delay_1_0_D0;
    wire [0:0] SR_SE_coalesced_delay_1_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_1_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_1_V;
    wire [3:0] SR_SE_coalesced_delay_1_1_D0;
    wire [0:0] SR_SE_coalesced_delay_1_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_2_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_2_V;
    wire [3:0] SR_SE_coalesced_delay_1_2_D0;
    wire [0:0] SR_SE_coalesced_delay_1_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_3_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_3_V;
    wire [3:0] SR_SE_coalesced_delay_1_3_D0;
    wire [0:0] SR_SE_coalesced_delay_1_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_4_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_4_V;
    wire [3:0] SR_SE_coalesced_delay_1_4_D0;
    wire [0:0] SR_SE_coalesced_delay_1_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_5_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_5_V;
    wire [3:0] SR_SE_coalesced_delay_1_5_D0;
    wire [0:0] SR_SE_coalesced_delay_1_6_i_valid;
    reg [0:0] SR_SE_coalesced_delay_1_6_r_valid;
    reg [3:0] SR_SE_coalesced_delay_1_6_r_data0;
    wire [0:0] SR_SE_coalesced_delay_1_6_backStall;
    wire [0:0] SR_SE_coalesced_delay_1_6_V;
    wire [3:0] SR_SE_coalesced_delay_1_6_D0;


    // c_float_0_000000e_0010(FLOATCONSTANT,5)
    assign c_float_0_000000e_0010_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i8_08(CONSTANT,9)
    assign c_i8_08_q = $unsigned(8'b00000000);

    // coalesced_delay_0_0(REG,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(SR_SE_coalesced_delay_0_0_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,47)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[3:3]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[4:4]);

    // c_i64_46297004169368699086(CONSTANT,7)
    assign c_i64_46297004169368699086_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000010100);

    // i_llvm_fpga_mem_memdep_12_windowing0(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_memdep_12_windowing_avm_address@20000000
    // out out_memdep_12_windowing_avm_burstcount@20000000
    // out out_memdep_12_windowing_avm_byteenable@20000000
    // out out_memdep_12_windowing_avm_enable@20000000
    // out out_memdep_12_windowing_avm_read@20000000
    // out out_memdep_12_windowing_avm_write@20000000
    // out out_memdep_12_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_o_writeack@8
    windowing_i_llvm_fpga_mem_memdep_12_0 thei_llvm_fpga_mem_memdep_12_windowing0 (
        .in_flush(in_flush),
        .in_i_address(c_i64_46297004169368699086_q),
        .in_i_dependence(sel_for_coalesced_delay_0_d),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist5_stall_entry_o7_8_fifo_backStall),
        .in_i_valid(SE_coalesced_delay_0_0_V1),
        .in_i_writedata(c_i8_08_q),
        .in_memdep_12_windowing_avm_readdata(in_memdep_12_windowing_avm_readdata),
        .in_memdep_12_windowing_avm_readdatavalid(in_memdep_12_windowing_avm_readdatavalid),
        .in_memdep_12_windowing_avm_waitrequest(in_memdep_12_windowing_avm_waitrequest),
        .in_memdep_12_windowing_avm_writeack(in_memdep_12_windowing_avm_writeack),
        .out_memdep_12_windowing_avm_address(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_address),
        .out_memdep_12_windowing_avm_burstcount(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_burstcount),
        .out_memdep_12_windowing_avm_byteenable(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_byteenable),
        .out_memdep_12_windowing_avm_enable(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_enable),
        .out_memdep_12_windowing_avm_read(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_read),
        .out_memdep_12_windowing_avm_write(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_write),
        .out_memdep_12_windowing_avm_writedata(i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_12_windowing0_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_12_windowing0_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_windowing_5_windowing3(LOGICAL,21)@1
    assign i_reduction_windowing_5_windowing3_q = sel_for_coalesced_delay_0_b | sel_for_coalesced_delay_0_c;

    // join_for_coalesced_delay_1(BITJOIN,49)
    assign join_for_coalesced_delay_1_q = {i_reduction_windowing_5_windowing3_q, sel_for_coalesced_delay_0_f, sel_for_coalesced_delay_0_d, sel_for_coalesced_delay_0_c};

    // coalesced_delay_1_0(REG,53)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_0_backEN == 1'b1)
        begin
            coalesced_delay_1_0_q <= $unsigned(SR_SE_coalesced_delay_1_0_D0);
        end
    end

    // coalesced_delay_1_1(REG,54)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_1_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_1_backEN == 1'b1)
        begin
            coalesced_delay_1_1_q <= $unsigned(SR_SE_coalesced_delay_1_1_D0);
        end
    end

    // coalesced_delay_1_2(REG,55)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_2_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_2_backEN == 1'b1)
        begin
            coalesced_delay_1_2_q <= $unsigned(SR_SE_coalesced_delay_1_2_D0);
        end
    end

    // coalesced_delay_1_3(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_3_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_3_backEN == 1'b1)
        begin
            coalesced_delay_1_3_q <= $unsigned(SR_SE_coalesced_delay_1_3_D0);
        end
    end

    // coalesced_delay_1_4(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_4_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_4_backEN == 1'b1)
        begin
            coalesced_delay_1_4_q <= $unsigned(SR_SE_coalesced_delay_1_4_D0);
        end
    end

    // coalesced_delay_1_5(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_5_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_5_backEN == 1'b1)
        begin
            coalesced_delay_1_5_q <= $unsigned(SR_SE_coalesced_delay_1_5_D0);
        end
    end

    // SE_coalesced_delay_1_6(STALLENABLE,95)
    // Valid signal propagation
    assign SE_coalesced_delay_1_6_V0 = SE_coalesced_delay_1_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_6_s_tv_0 = SE_out_redist5_stall_entry_o7_8_fifo_backStall & SE_coalesced_delay_1_6_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_6_backEN = ~ (SE_coalesced_delay_1_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_6_v_s_0 = SE_coalesced_delay_1_6_backEN & SR_SE_coalesced_delay_1_6_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_6_backStall = ~ (SE_coalesced_delay_1_6_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_6_R_v_0 <= SE_coalesced_delay_1_6_R_v_0 & SE_coalesced_delay_1_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_6_R_v_0 <= SE_coalesced_delay_1_6_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_6(STALLREG,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_6_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_6_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_6_r_valid <= SE_coalesced_delay_1_6_backStall & (SR_SE_coalesced_delay_1_6_r_valid | SR_SE_coalesced_delay_1_6_i_valid);

            if (SR_SE_coalesced_delay_1_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_6_r_data0 <= $unsigned(coalesced_delay_1_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_6_i_valid = SE_coalesced_delay_1_5_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_6_backStall = SR_SE_coalesced_delay_1_6_r_valid | ~ (SR_SE_coalesced_delay_1_6_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_6_V = SR_SE_coalesced_delay_1_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_6_r_valid : SR_SE_coalesced_delay_1_6_i_valid;

    assign SR_SE_coalesced_delay_1_6_D0 = SR_SE_coalesced_delay_1_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_6_r_data0 : coalesced_delay_1_5_q;

    // SE_coalesced_delay_1_5(STALLENABLE,94)
    // Valid signal propagation
    assign SE_coalesced_delay_1_5_V0 = SE_coalesced_delay_1_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_5_s_tv_0 = SR_SE_coalesced_delay_1_6_backStall & SE_coalesced_delay_1_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_5_backEN = ~ (SE_coalesced_delay_1_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_5_v_s_0 = SE_coalesced_delay_1_5_backEN & SR_SE_coalesced_delay_1_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_5_backStall = ~ (SE_coalesced_delay_1_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_5_R_v_0 <= SE_coalesced_delay_1_5_R_v_0 & SE_coalesced_delay_1_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_5_R_v_0 <= SE_coalesced_delay_1_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_5(STALLREG,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_5_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_5_r_valid <= SE_coalesced_delay_1_5_backStall & (SR_SE_coalesced_delay_1_5_r_valid | SR_SE_coalesced_delay_1_5_i_valid);

            if (SR_SE_coalesced_delay_1_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_5_r_data0 <= $unsigned(coalesced_delay_1_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_5_i_valid = SE_coalesced_delay_1_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_5_backStall = SR_SE_coalesced_delay_1_5_r_valid | ~ (SR_SE_coalesced_delay_1_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_5_V = SR_SE_coalesced_delay_1_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_5_r_valid : SR_SE_coalesced_delay_1_5_i_valid;

    assign SR_SE_coalesced_delay_1_5_D0 = SR_SE_coalesced_delay_1_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_5_r_data0 : coalesced_delay_1_4_q;

    // SE_coalesced_delay_1_4(STALLENABLE,93)
    // Valid signal propagation
    assign SE_coalesced_delay_1_4_V0 = SE_coalesced_delay_1_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_4_s_tv_0 = SR_SE_coalesced_delay_1_5_backStall & SE_coalesced_delay_1_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_4_backEN = ~ (SE_coalesced_delay_1_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_4_v_s_0 = SE_coalesced_delay_1_4_backEN & SR_SE_coalesced_delay_1_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_4_backStall = ~ (SE_coalesced_delay_1_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_4_R_v_0 <= SE_coalesced_delay_1_4_R_v_0 & SE_coalesced_delay_1_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_4_R_v_0 <= SE_coalesced_delay_1_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_4(STALLREG,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_4_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_4_r_valid <= SE_coalesced_delay_1_4_backStall & (SR_SE_coalesced_delay_1_4_r_valid | SR_SE_coalesced_delay_1_4_i_valid);

            if (SR_SE_coalesced_delay_1_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_4_r_data0 <= $unsigned(coalesced_delay_1_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_4_i_valid = SE_coalesced_delay_1_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_4_backStall = SR_SE_coalesced_delay_1_4_r_valid | ~ (SR_SE_coalesced_delay_1_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_4_V = SR_SE_coalesced_delay_1_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_4_r_valid : SR_SE_coalesced_delay_1_4_i_valid;

    assign SR_SE_coalesced_delay_1_4_D0 = SR_SE_coalesced_delay_1_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_4_r_data0 : coalesced_delay_1_3_q;

    // SE_coalesced_delay_1_3(STALLENABLE,92)
    // Valid signal propagation
    assign SE_coalesced_delay_1_3_V0 = SE_coalesced_delay_1_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_3_s_tv_0 = SR_SE_coalesced_delay_1_4_backStall & SE_coalesced_delay_1_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_3_backEN = ~ (SE_coalesced_delay_1_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_3_v_s_0 = SE_coalesced_delay_1_3_backEN & SR_SE_coalesced_delay_1_3_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_3_backStall = ~ (SE_coalesced_delay_1_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_3_R_v_0 <= SE_coalesced_delay_1_3_R_v_0 & SE_coalesced_delay_1_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_3_R_v_0 <= SE_coalesced_delay_1_3_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_3(STALLREG,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_3_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_3_r_valid <= SE_coalesced_delay_1_3_backStall & (SR_SE_coalesced_delay_1_3_r_valid | SR_SE_coalesced_delay_1_3_i_valid);

            if (SR_SE_coalesced_delay_1_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_3_r_data0 <= $unsigned(coalesced_delay_1_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_3_i_valid = SE_coalesced_delay_1_2_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_3_backStall = SR_SE_coalesced_delay_1_3_r_valid | ~ (SR_SE_coalesced_delay_1_3_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_3_V = SR_SE_coalesced_delay_1_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_3_r_valid : SR_SE_coalesced_delay_1_3_i_valid;

    assign SR_SE_coalesced_delay_1_3_D0 = SR_SE_coalesced_delay_1_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_3_r_data0 : coalesced_delay_1_2_q;

    // SE_coalesced_delay_1_2(STALLENABLE,91)
    // Valid signal propagation
    assign SE_coalesced_delay_1_2_V0 = SE_coalesced_delay_1_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_2_s_tv_0 = SR_SE_coalesced_delay_1_3_backStall & SE_coalesced_delay_1_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_2_backEN = ~ (SE_coalesced_delay_1_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_2_v_s_0 = SE_coalesced_delay_1_2_backEN & SR_SE_coalesced_delay_1_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_2_backStall = ~ (SE_coalesced_delay_1_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_2_R_v_0 <= SE_coalesced_delay_1_2_R_v_0 & SE_coalesced_delay_1_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_2_R_v_0 <= SE_coalesced_delay_1_2_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_2(STALLREG,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_2_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_2_r_valid <= SE_coalesced_delay_1_2_backStall & (SR_SE_coalesced_delay_1_2_r_valid | SR_SE_coalesced_delay_1_2_i_valid);

            if (SR_SE_coalesced_delay_1_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_2_r_data0 <= $unsigned(coalesced_delay_1_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_2_i_valid = SE_coalesced_delay_1_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_2_backStall = SR_SE_coalesced_delay_1_2_r_valid | ~ (SR_SE_coalesced_delay_1_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_2_V = SR_SE_coalesced_delay_1_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_2_r_valid : SR_SE_coalesced_delay_1_2_i_valid;

    assign SR_SE_coalesced_delay_1_2_D0 = SR_SE_coalesced_delay_1_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_2_r_data0 : coalesced_delay_1_1_q;

    // SE_coalesced_delay_1_1(STALLENABLE,90)
    // Valid signal propagation
    assign SE_coalesced_delay_1_1_V0 = SE_coalesced_delay_1_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_1_s_tv_0 = SR_SE_coalesced_delay_1_2_backStall & SE_coalesced_delay_1_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_1_backEN = ~ (SE_coalesced_delay_1_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_1_v_s_0 = SE_coalesced_delay_1_1_backEN & SR_SE_coalesced_delay_1_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_1_backStall = ~ (SE_coalesced_delay_1_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_1_R_v_0 <= SE_coalesced_delay_1_1_R_v_0 & SE_coalesced_delay_1_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_1_R_v_0 <= SE_coalesced_delay_1_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_1(STALLREG,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_1_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_1_r_valid <= SE_coalesced_delay_1_1_backStall & (SR_SE_coalesced_delay_1_1_r_valid | SR_SE_coalesced_delay_1_1_i_valid);

            if (SR_SE_coalesced_delay_1_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_1_r_data0 <= $unsigned(coalesced_delay_1_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_1_i_valid = SE_coalesced_delay_1_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_1_backStall = SR_SE_coalesced_delay_1_1_r_valid | ~ (SR_SE_coalesced_delay_1_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_1_V = SR_SE_coalesced_delay_1_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_1_r_valid : SR_SE_coalesced_delay_1_1_i_valid;

    assign SR_SE_coalesced_delay_1_1_D0 = SR_SE_coalesced_delay_1_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_1_r_data0 : coalesced_delay_1_0_q;

    // SE_coalesced_delay_1_0(STALLENABLE,89)
    // Valid signal propagation
    assign SE_coalesced_delay_1_0_V0 = SE_coalesced_delay_1_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_1_0_s_tv_0 = SR_SE_coalesced_delay_1_1_backStall & SE_coalesced_delay_1_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_1_0_backEN = ~ (SE_coalesced_delay_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_1_0_v_s_0 = SE_coalesced_delay_1_0_backEN & SR_SE_coalesced_delay_1_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_1_0_backStall = ~ (SE_coalesced_delay_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_1_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_1_0_R_v_0 <= SE_coalesced_delay_1_0_R_v_0 & SE_coalesced_delay_1_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_1_0_R_v_0 <= SE_coalesced_delay_1_0_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_1_0(STALLREG,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_1_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_1_0_r_data0 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_1_0_r_valid <= SE_coalesced_delay_1_0_backStall & (SR_SE_coalesced_delay_1_0_r_valid | SR_SE_coalesced_delay_1_0_i_valid);

            if (SR_SE_coalesced_delay_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_1_0_r_data0 <= $unsigned(join_for_coalesced_delay_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_1_0_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_1_0_backStall = SR_SE_coalesced_delay_1_0_r_valid | ~ (SR_SE_coalesced_delay_1_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_1_0_V = SR_SE_coalesced_delay_1_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_0_r_valid : SR_SE_coalesced_delay_1_0_i_valid;

    assign SR_SE_coalesced_delay_1_0_D0 = SR_SE_coalesced_delay_1_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_1_0_r_data0 : join_for_coalesced_delay_1_q;

    // bubble_join_stall_entry(BITJOIN,63)
    assign bubble_join_stall_entry_q = {in_memdep_7, in_c0_exe95, in_c0_exe84, in_c0_exe73, in_c0_exe42, in_c0_exe31, in_c0_exe106};

    // bubble_select_stall_entry(BITSELECT,64)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[5:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[6:6]);

    // join_for_coalesced_delay_0(BITJOIN,46)
    assign join_for_coalesced_delay_0_q = {bubble_select_stall_entry_g, bubble_select_stall_entry_f, bubble_select_stall_entry_d, bubble_select_stall_entry_c, bubble_select_stall_entry_b};

    // redist5_stall_entry_o7_8_fifo(STALLFIFO,51)
    assign redist5_stall_entry_o7_8_fifo_valid_in = SE_stall_entry_V2;
    assign redist5_stall_entry_o7_8_fifo_stall_in = SE_out_redist5_stall_entry_o7_8_fifo_backStall;
    assign redist5_stall_entry_o7_8_fifo_data_in = bubble_select_stall_entry_e;
    assign redist5_stall_entry_o7_8_fifo_valid_in_bitsignaltemp = redist5_stall_entry_o7_8_fifo_valid_in[0];
    assign redist5_stall_entry_o7_8_fifo_stall_in_bitsignaltemp = redist5_stall_entry_o7_8_fifo_stall_in[0];
    assign redist5_stall_entry_o7_8_fifo_valid_out[0] = redist5_stall_entry_o7_8_fifo_valid_out_bitsignaltemp;
    assign redist5_stall_entry_o7_8_fifo_stall_out[0] = redist5_stall_entry_o7_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_stall_entry_o7_8_fifo (
        .valid_in(redist5_stall_entry_o7_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_stall_entry_o7_8_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_stall_entry_e),
        .valid_out(redist5_stall_entry_o7_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_stall_entry_o7_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_stall_entry_o7_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_windowing1(STALLENABLE,76)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_wireValid = i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push8_windowing1(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    windowing_i_llvm_fpga_push_i1_memdep_phi_push8_0 thei_llvm_fpga_push_i1_memdep_phi_push8_windowing1 (
        .in_data_in(bubble_select_stall_entry_h),
        .in_feedback_stall_in_8(in_feedback_stall_in_8),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (SR_SE_coalesced_delay_0_0_backStall) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (redist5_stall_entry_o7_8_fifo_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed2 & SE_stall_entry_or1);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SR_SE_coalesced_delay_0_0(STALLREG,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_0_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_0_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_0_r_valid <= SE_coalesced_delay_0_0_backStall & (SR_SE_coalesced_delay_0_0_r_valid | SR_SE_coalesced_delay_0_0_i_valid);

            if (SR_SE_coalesced_delay_0_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_0_i_valid = SE_stall_entry_V1;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_0_backStall = SR_SE_coalesced_delay_0_0_r_valid | ~ (SR_SE_coalesced_delay_0_0_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_0_V = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_valid : SR_SE_coalesced_delay_0_0_i_valid;

    assign SR_SE_coalesced_delay_0_0_D0 = SR_SE_coalesced_delay_0_0_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,88)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_V1 = SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_V2 = SE_coalesced_delay_0_0_R_v_2;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_1_0_backStall & SE_coalesced_delay_0_0_R_v_0;
    assign SE_coalesced_delay_0_0_s_tv_1 = i_llvm_fpga_mem_memdep_12_windowing0_out_o_stall & SE_coalesced_delay_0_0_R_v_1;
    assign SE_coalesced_delay_0_0_s_tv_2 = i_llvm_fpga_mem_memdep_13_windowing5_out_o_stall & SE_coalesced_delay_0_0_R_v_2;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_or0 = SE_coalesced_delay_0_0_s_tv_0;
    assign SE_coalesced_delay_0_0_or1 = SE_coalesced_delay_0_0_s_tv_1 | SE_coalesced_delay_0_0_or0;
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_2 | SE_coalesced_delay_0_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SR_SE_coalesced_delay_0_0_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_1 <= 1'b0;
            SE_coalesced_delay_0_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_R_v_1 & SE_coalesced_delay_0_0_s_tv_1;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_1 <= SE_coalesced_delay_0_0_v_s_0;
            end

            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_R_v_2 & SE_coalesced_delay_0_0_s_tv_2;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_2 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_out_redist5_stall_entry_o7_8_fifo(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_redist5_stall_entry_o7_8_fifo_V0 = SE_out_redist5_stall_entry_o7_8_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_stall_entry_o7_8_fifo_backStall = in_stall_in | ~ (SE_out_redist5_stall_entry_o7_8_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_stall_entry_o7_8_fifo_and0 = redist5_stall_entry_o7_8_fifo_valid_out;
    assign SE_out_redist5_stall_entry_o7_8_fifo_and1 = i_llvm_fpga_mem_memdep_13_windowing5_out_o_valid & SE_out_redist5_stall_entry_o7_8_fifo_and0;
    assign SE_out_redist5_stall_entry_o7_8_fifo_and2 = i_llvm_fpga_mem_memdep_12_windowing0_out_o_valid & SE_out_redist5_stall_entry_o7_8_fifo_and1;
    assign SE_out_redist5_stall_entry_o7_8_fifo_wireValid = SE_coalesced_delay_1_6_V0 & SE_out_redist5_stall_entry_o7_8_fifo_and2;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_reduction_windowing_4_windowing2(LOGICAL,20)@1
    assign i_reduction_windowing_4_windowing2_q = sel_for_coalesced_delay_0_e | sel_for_coalesced_delay_0_f;

    // i_reduction_windowing_6_windowing4(LOGICAL,22)@1
    assign i_reduction_windowing_6_windowing4_q = i_reduction_windowing_4_windowing2_q | i_reduction_windowing_5_windowing3_q;

    // c_i64_46297004169368699129(CONSTANT,8)
    assign c_i64_46297004169368699129_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000011000);

    // i_llvm_fpga_mem_memdep_13_windowing5(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_memdep_13_windowing_avm_address@20000000
    // out out_memdep_13_windowing_avm_burstcount@20000000
    // out out_memdep_13_windowing_avm_byteenable@20000000
    // out out_memdep_13_windowing_avm_enable@20000000
    // out out_memdep_13_windowing_avm_read@20000000
    // out out_memdep_13_windowing_avm_write@20000000
    // out out_memdep_13_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_o_writeack@8
    windowing_i_llvm_fpga_mem_memdep_13_0 thei_llvm_fpga_mem_memdep_13_windowing5 (
        .in_flush(in_flush),
        .in_i_address(c_i64_46297004169368699129_q),
        .in_i_dependence(i_reduction_windowing_6_windowing4_q),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_redist5_stall_entry_o7_8_fifo_backStall),
        .in_i_valid(SE_coalesced_delay_0_0_V2),
        .in_i_writedata(c_float_0_000000e_0010_q),
        .in_memdep_13_windowing_avm_readdata(in_memdep_13_windowing_avm_readdata),
        .in_memdep_13_windowing_avm_readdatavalid(in_memdep_13_windowing_avm_readdatavalid),
        .in_memdep_13_windowing_avm_waitrequest(in_memdep_13_windowing_avm_waitrequest),
        .in_memdep_13_windowing_avm_writeack(in_memdep_13_windowing_avm_writeack),
        .out_memdep_13_windowing_avm_address(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_address),
        .out_memdep_13_windowing_avm_burstcount(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_burstcount),
        .out_memdep_13_windowing_avm_byteenable(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_byteenable),
        .out_memdep_13_windowing_avm_enable(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_enable),
        .out_memdep_13_windowing_avm_read(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_read),
        .out_memdep_13_windowing_avm_write(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_write),
        .out_memdep_13_windowing_avm_writedata(i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_13_windowing5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_13_windowing5_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_memdep_13_windowing_avm_address = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_address;
    assign out_memdep_13_windowing_avm_enable = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_enable;
    assign out_memdep_13_windowing_avm_read = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_read;
    assign out_memdep_13_windowing_avm_write = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_write;
    assign out_memdep_13_windowing_avm_writedata = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_writedata;
    assign out_memdep_13_windowing_avm_byteenable = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_byteenable;
    assign out_memdep_13_windowing_avm_burstcount = i_llvm_fpga_mem_memdep_13_windowing5_out_memdep_13_windowing_avm_burstcount;

    // bubble_join_redist5_stall_entry_o7_8_fifo(BITJOIN,69)
    assign bubble_join_redist5_stall_entry_o7_8_fifo_q = redist5_stall_entry_o7_8_fifo_data_out;

    // bubble_select_redist5_stall_entry_o7_8_fifo(BITSELECT,70)
    assign bubble_select_redist5_stall_entry_o7_8_fifo_b = $unsigned(bubble_join_redist5_stall_entry_o7_8_fifo_q[0:0]);

    // coalesced_delay_1_6(REG,59)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_1_6_q <= $unsigned(4'b0000);
        end
        else if (SE_coalesced_delay_1_6_backEN == 1'b1)
        begin
            coalesced_delay_1_6_q <= $unsigned(SR_SE_coalesced_delay_1_6_D0);
        end
    end

    // sel_for_coalesced_delay_1(BITSELECT,50)
    assign sel_for_coalesced_delay_1_b = $unsigned(coalesced_delay_1_6_q[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(coalesced_delay_1_6_q[1:1]);
    assign sel_for_coalesced_delay_1_d = $unsigned(coalesced_delay_1_6_q[2:2]);
    assign sel_for_coalesced_delay_1_e = $unsigned(coalesced_delay_1_6_q[3:3]);

    // dupName_0_sync_out_x(GPOUT,4)@8
    assign out_c0_exe31 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe42 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe73 = bubble_select_redist5_stall_entry_o7_8_fifo_b;
    assign out_c0_exe95 = sel_for_coalesced_delay_1_d;
    assign out_reduction_windowing_5 = sel_for_coalesced_delay_1_e;
    assign out_valid_out = SE_out_redist5_stall_entry_o7_8_fifo_V0;

    // ext_sig_sync_out(GPOUT,13)
    assign out_memdep_12_windowing_avm_address = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_address;
    assign out_memdep_12_windowing_avm_enable = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_enable;
    assign out_memdep_12_windowing_avm_read = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_read;
    assign out_memdep_12_windowing_avm_write = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_write;
    assign out_memdep_12_windowing_avm_writedata = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_writedata;
    assign out_memdep_12_windowing_avm_byteenable = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_byteenable;
    assign out_memdep_12_windowing_avm_burstcount = i_llvm_fpga_mem_memdep_12_windowing0_out_memdep_12_windowing_avm_burstcount;

    // feedback_out_8_sync(GPOUT,14)
    assign out_feedback_out_8 = i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_feedback_out_8;

    // feedback_valid_out_8_sync(GPOUT,16)
    assign out_feedback_valid_out_8 = i_llvm_fpga_push_i1_memdep_phi_push8_windowing1_out_feedback_valid_out_8;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
