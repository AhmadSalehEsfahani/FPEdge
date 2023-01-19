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

// SystemVerilog created from streamer_function_wrapper
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 19:47:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_function_wrapper (
    input wire [63:0] avm_in0_load_readdata,
    input wire [0:0] avm_in0_load_readdatavalid,
    input wire [0:0] avm_in0_load_waitrequest,
    input wire [0:0] avm_in0_load_writeack,
    input wire [63:0] avm_in0_load_writedata,
    input wire [63:0] avm_in0_store_readdata,
    input wire [0:0] avm_in0_store_readdatavalid,
    input wire [0:0] avm_in0_store_waitrequest,
    input wire [0:0] avm_in0_store_writeack,
    input wire [63:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_readdata,
    input wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_waitrequest,
    input wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_writeack,
    input wire [127:0] avm_memdep_14_streamer_readdata,
    input wire [0:0] avm_memdep_14_streamer_readdatavalid,
    input wire [0:0] avm_memdep_14_streamer_waitrequest,
    input wire [0:0] avm_memdep_14_streamer_writeack,
    input wire [127:0] avm_out0_load_readdata,
    input wire [0:0] avm_out0_load_readdatavalid,
    input wire [0:0] avm_out0_load_waitrequest,
    input wire [0:0] avm_out0_load_writeack,
    input wire [127:0] avm_out0_load_writedata,
    input wire [127:0] avm_out0_store_readdata,
    input wire [0:0] avm_out0_store_readdatavalid,
    input wire [0:0] avm_out0_store_waitrequest,
    input wire [0:0] avm_out0_store_writeack,
    input wire [0:0] avs_in0_address,
    input wire [7:0] avs_in0_byteenable,
    input wire [0:0] avs_in0_enable,
    input wire [0:0] avs_in0_read,
    input wire [0:0] avs_in0_write,
    input wire [63:0] avs_in0_writedata,
    input wire [0:0] avs_out0_address,
    input wire [15:0] avs_out0_byteenable,
    input wire [0:0] avs_out0_enable,
    input wire [0:0] avs_out0_read,
    input wire [0:0] avs_out0_write,
    input wire [127:0] avs_out0_writedata,
    input wire [0:0] avst_iord_bl_call_streamer_data,
    input wire [0:0] avst_iord_bl_call_streamer_valid,
    input wire [0:0] avst_iowr_nb_return_streamer_almostfull,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_in0_load_address,
    output wire [0:0] avm_in0_load_burstcount,
    output wire [7:0] avm_in0_load_byteenable,
    output wire [0:0] avm_in0_load_enable,
    output wire [0:0] avm_in0_load_read,
    output wire [0:0] avm_in0_load_write,
    output wire [31:0] avm_in0_store_address,
    output wire [0:0] avm_in0_store_burstcount,
    output wire [7:0] avm_in0_store_byteenable,
    output wire [0:0] avm_in0_store_enable,
    output wire [0:0] avm_in0_store_read,
    output wire [0:0] avm_in0_store_write,
    output wire [63:0] avm_in0_store_writedata,
    output wire [31:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_address,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_burstcount,
    output wire [7:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_byteenable,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_enable,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_read,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_write,
    output wire [63:0] avm_memcoalesce_load_streamer_fpgaunique_33_streamer_writedata,
    output wire [31:0] avm_memdep_14_streamer_address,
    output wire [0:0] avm_memdep_14_streamer_burstcount,
    output wire [15:0] avm_memdep_14_streamer_byteenable,
    output wire [0:0] avm_memdep_14_streamer_enable,
    output wire [0:0] avm_memdep_14_streamer_read,
    output wire [0:0] avm_memdep_14_streamer_write,
    output wire [127:0] avm_memdep_14_streamer_writedata,
    output wire [31:0] avm_out0_load_address,
    output wire [0:0] avm_out0_load_burstcount,
    output wire [15:0] avm_out0_load_byteenable,
    output wire [0:0] avm_out0_load_enable,
    output wire [0:0] avm_out0_load_read,
    output wire [0:0] avm_out0_load_write,
    output wire [31:0] avm_out0_store_address,
    output wire [0:0] avm_out0_store_burstcount,
    output wire [15:0] avm_out0_store_byteenable,
    output wire [0:0] avm_out0_store_enable,
    output wire [0:0] avm_out0_store_read,
    output wire [0:0] avm_out0_store_write,
    output wire [127:0] avm_out0_store_writedata,
    output wire [63:0] avs_in0_readdata,
    output wire [0:0] avs_in0_readdatavalid,
    output wire [127:0] avs_out0_readdata,
    output wire [0:0] avs_out0_readdatavalid,
    output wire [0:0] avst_iord_bl_call_streamer_almost_full,
    output wire [0:0] avst_iord_bl_call_streamer_ready,
    output wire [0:0] avst_iowr_nb_return_streamer_data,
    output wire [0:0] avst_iowr_nb_return_streamer_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] dupName_0_const_slave_mem_addr_lower_bits_x_q;
    wire [26:0] dupName_0_const_slave_mem_addr_upper_bits_x_q;
    wire [63:0] dupName_0_const_slave_mem_base_addr_x_q;
    wire [31:0] dupName_0_slave_addr_join_x_q;
    wire [63:0] call_const_q;
    wire [2:0] const_slave_mem_addr_lower_bits_q;
    wire [27:0] const_slave_mem_addr_upper_bits_q;
    wire [63:0] const_slave_mem_base_addr_q;
    wire [31:0] in0_permute_address_i_addr;
    wire [31:0] in0_permute_address_o_addr;
    wire [31:0] out0_permute_address_i_addr;
    wire [31:0] out0_permute_address_o_addr;
    wire [31:0] slave_addr_join_q;
    wire [0:0] streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] streamer_function_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] streamer_function_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] streamer_function_out_iowr_nb_return_streamer_o_fifovalid;
    wire [31:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount;
    wire [7:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write;
    wire [63:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata;
    wire [31:0] streamer_function_out_memdep_14_streamer_avm_address;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_burstcount;
    wire [15:0] streamer_function_out_memdep_14_streamer_avm_byteenable;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_enable;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_read;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_write;
    wire [127:0] streamer_function_out_memdep_14_streamer_avm_writedata;


    // const_slave_mem_addr_upper_bits(CONSTANT,10)
    assign const_slave_mem_addr_upper_bits_q = $unsigned(28'b0000000000000000000000000000);

    // const_slave_mem_addr_lower_bits(CONSTANT,9)
    assign const_slave_mem_addr_lower_bits_q = $unsigned(3'b000);

    // slave_addr_join(BITJOIN,107)
    assign slave_addr_join_q = {const_slave_mem_addr_upper_bits_q, avs_in0_address, const_slave_mem_addr_lower_bits_q};

    // in0_permute_address(EXTIFACE,12)
    assign in0_permute_address_i_addr = slave_addr_join_q;
    lsu_permute_address #(
        .AWIDTH(32),
        .BITS_IN_BYTE_SELECT(3),
        .ENABLE_BANKED_MEMORY(0),
        .MIN_BANK_BIT(0),
        .NUMBER_BANKS(1),
        .WORD_SELECT_BITS(-3)
    ) thein0_permute_address (
        .i_addr(slave_addr_join_q),
        .o_addr(in0_permute_address_o_addr)
    );

    // avm_in0_load_address(GPOUT,58)
    assign avm_in0_load_address = in0_permute_address_o_addr;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // avm_in0_load_burstcount(GPOUT,59)
    assign avm_in0_load_burstcount = VCC_q;

    // avm_in0_load_byteenable(GPOUT,60)
    assign avm_in0_load_byteenable = avs_in0_byteenable;

    // avm_in0_load_enable(GPOUT,61)
    assign avm_in0_load_enable = VCC_q;

    // avm_in0_load_read(GPOUT,62)
    assign avm_in0_load_read = avs_in0_read;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // avm_in0_load_write(GPOUT,63)
    assign avm_in0_load_write = GND_q;

    // avm_in0_store_address(GPOUT,64)
    assign avm_in0_store_address = in0_permute_address_o_addr;

    // avm_in0_store_burstcount(GPOUT,65)
    assign avm_in0_store_burstcount = VCC_q;

    // avm_in0_store_byteenable(GPOUT,66)
    assign avm_in0_store_byteenable = avs_in0_byteenable;

    // avm_in0_store_enable(GPOUT,67)
    assign avm_in0_store_enable = VCC_q;

    // avm_in0_store_read(GPOUT,68)
    assign avm_in0_store_read = GND_q;

    // avm_in0_store_write(GPOUT,69)
    assign avm_in0_store_write = avs_in0_write;

    // avm_in0_store_writedata(GPOUT,70)
    assign avm_in0_store_writedata = avs_in0_writedata;

    // dupName_0_const_slave_mem_base_addr_x(CONSTANT,4)
    assign dupName_0_const_slave_mem_base_addr_x_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // const_slave_mem_base_addr(CONSTANT,11)
    assign const_slave_mem_base_addr_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // call_const(CONSTANT,6)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // streamer_function(BLACKBOX,108)
    streamer_function thestreamer_function (
        .in_arg_call(call_const_q),
        .in_arg_in0(const_slave_mem_base_addr_q),
        .in_arg_out0(dupName_0_const_slave_mem_base_addr_x_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_streamer_i_fifodata(avst_iord_bl_call_streamer_data),
        .in_iord_bl_call_streamer_i_fifovalid(VCC_q),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata(avm_memcoalesce_load_streamer_fpgaunique_33_streamer_readdata),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid(avm_memcoalesce_load_streamer_fpgaunique_33_streamer_readdatavalid),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest(avm_memcoalesce_load_streamer_fpgaunique_33_streamer_waitrequest),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack(avm_memcoalesce_load_streamer_fpgaunique_33_streamer_writeack),
        .in_memdep_14_streamer_avm_readdata(avm_memdep_14_streamer_readdata),
        .in_memdep_14_streamer_avm_readdatavalid(avm_memdep_14_streamer_readdatavalid),
        .in_memdep_14_streamer_avm_waitrequest(avm_memdep_14_streamer_waitrequest),
        .in_memdep_14_streamer_avm_writeack(avm_memdep_14_streamer_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_streamer_o_fifoalmost_full(streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(streamer_function_out_iord_bl_call_streamer_o_fifoready),
        .out_iowr_nb_return_streamer_o_fifodata(streamer_function_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(streamer_function_out_iowr_nb_return_streamer_o_fifovalid),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata(streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata),
        .out_memdep_14_streamer_avm_address(streamer_function_out_memdep_14_streamer_avm_address),
        .out_memdep_14_streamer_avm_burstcount(streamer_function_out_memdep_14_streamer_avm_burstcount),
        .out_memdep_14_streamer_avm_byteenable(streamer_function_out_memdep_14_streamer_avm_byteenable),
        .out_memdep_14_streamer_avm_enable(streamer_function_out_memdep_14_streamer_avm_enable),
        .out_memdep_14_streamer_avm_read(streamer_function_out_memdep_14_streamer_avm_read),
        .out_memdep_14_streamer_avm_write(streamer_function_out_memdep_14_streamer_avm_write),
        .out_memdep_14_streamer_avm_writedata(streamer_function_out_memdep_14_streamer_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_address(GPOUT,71)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_address = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address;

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_burstcount(GPOUT,72)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_burstcount = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount;

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_byteenable(GPOUT,73)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_byteenable = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable;

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_enable(GPOUT,74)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_enable = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable;

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_read(GPOUT,75)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_read = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read;

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_write(GPOUT,76)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_write = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write;

    // avm_memcoalesce_load_streamer_fpgaunique_33_streamer_writedata(GPOUT,77)
    assign avm_memcoalesce_load_streamer_fpgaunique_33_streamer_writedata = streamer_function_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata;

    // avm_memdep_14_streamer_address(GPOUT,78)
    assign avm_memdep_14_streamer_address = streamer_function_out_memdep_14_streamer_avm_address;

    // avm_memdep_14_streamer_burstcount(GPOUT,79)
    assign avm_memdep_14_streamer_burstcount = streamer_function_out_memdep_14_streamer_avm_burstcount;

    // avm_memdep_14_streamer_byteenable(GPOUT,80)
    assign avm_memdep_14_streamer_byteenable = streamer_function_out_memdep_14_streamer_avm_byteenable;

    // avm_memdep_14_streamer_enable(GPOUT,81)
    assign avm_memdep_14_streamer_enable = streamer_function_out_memdep_14_streamer_avm_enable;

    // avm_memdep_14_streamer_read(GPOUT,82)
    assign avm_memdep_14_streamer_read = streamer_function_out_memdep_14_streamer_avm_read;

    // avm_memdep_14_streamer_write(GPOUT,83)
    assign avm_memdep_14_streamer_write = streamer_function_out_memdep_14_streamer_avm_write;

    // avm_memdep_14_streamer_writedata(GPOUT,84)
    assign avm_memdep_14_streamer_writedata = streamer_function_out_memdep_14_streamer_avm_writedata;

    // dupName_0_const_slave_mem_addr_upper_bits_x(CONSTANT,3)
    assign dupName_0_const_slave_mem_addr_upper_bits_x_q = $unsigned(27'b000000000000000000000000000);

    // dupName_0_const_slave_mem_addr_lower_bits_x(CONSTANT,2)
    assign dupName_0_const_slave_mem_addr_lower_bits_x_q = $unsigned(4'b0000);

    // dupName_0_slave_addr_join_x(BITJOIN,5)
    assign dupName_0_slave_addr_join_x_q = {dupName_0_const_slave_mem_addr_upper_bits_x_q, avs_out0_address, dupName_0_const_slave_mem_addr_lower_bits_x_q};

    // out0_permute_address(EXTIFACE,57)
    assign out0_permute_address_i_addr = dupName_0_slave_addr_join_x_q;
    lsu_permute_address #(
        .AWIDTH(32),
        .BITS_IN_BYTE_SELECT(4),
        .ENABLE_BANKED_MEMORY(0),
        .MIN_BANK_BIT(0),
        .NUMBER_BANKS(1),
        .WORD_SELECT_BITS(-4)
    ) theout0_permute_address (
        .i_addr(dupName_0_slave_addr_join_x_q),
        .o_addr(out0_permute_address_o_addr)
    );

    // avm_out0_load_address(GPOUT,85)
    assign avm_out0_load_address = out0_permute_address_o_addr;

    // avm_out0_load_burstcount(GPOUT,86)
    assign avm_out0_load_burstcount = VCC_q;

    // avm_out0_load_byteenable(GPOUT,87)
    assign avm_out0_load_byteenable = avs_out0_byteenable;

    // avm_out0_load_enable(GPOUT,88)
    assign avm_out0_load_enable = VCC_q;

    // avm_out0_load_read(GPOUT,89)
    assign avm_out0_load_read = avs_out0_read;

    // avm_out0_load_write(GPOUT,90)
    assign avm_out0_load_write = GND_q;

    // avm_out0_store_address(GPOUT,91)
    assign avm_out0_store_address = out0_permute_address_o_addr;

    // avm_out0_store_burstcount(GPOUT,92)
    assign avm_out0_store_burstcount = VCC_q;

    // avm_out0_store_byteenable(GPOUT,93)
    assign avm_out0_store_byteenable = avs_out0_byteenable;

    // avm_out0_store_enable(GPOUT,94)
    assign avm_out0_store_enable = VCC_q;

    // avm_out0_store_read(GPOUT,95)
    assign avm_out0_store_read = GND_q;

    // avm_out0_store_write(GPOUT,96)
    assign avm_out0_store_write = avs_out0_write;

    // avm_out0_store_writedata(GPOUT,97)
    assign avm_out0_store_writedata = avs_out0_writedata;

    // avs_in0_readdata(GPOUT,98)
    assign avs_in0_readdata = avm_in0_load_readdata;

    // avs_in0_readdatavalid(GPOUT,99)
    assign avs_in0_readdatavalid = avm_in0_load_readdatavalid;

    // avs_out0_readdata(GPOUT,100)
    assign avs_out0_readdata = avm_out0_load_readdata;

    // avs_out0_readdatavalid(GPOUT,101)
    assign avs_out0_readdatavalid = avm_out0_load_readdatavalid;

    // avst_iord_bl_call_streamer_almost_full(GPOUT,102)
    assign avst_iord_bl_call_streamer_almost_full = streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;

    // avst_iord_bl_call_streamer_ready(GPOUT,103)
    assign avst_iord_bl_call_streamer_ready = streamer_function_out_iord_bl_call_streamer_o_fifoready;

    // avst_iowr_nb_return_streamer_data(GPOUT,104)
    assign avst_iowr_nb_return_streamer_data = streamer_function_out_iowr_nb_return_streamer_o_fifodata;

    // avst_iowr_nb_return_streamer_valid(GPOUT,105)
    assign avst_iowr_nb_return_streamer_valid = streamer_function_out_iowr_nb_return_streamer_o_fifovalid;

endmodule
