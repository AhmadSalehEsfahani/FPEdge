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
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_function_wrapper (
    input wire [511:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_readdata,
    input wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_readdatavalid,
    input wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_waitrequest,
    input wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_writeack,
    input wire [511:0] avm_memdep_14_streamer_readdata,
    input wire [0:0] avm_memdep_14_streamer_readdatavalid,
    input wire [0:0] avm_memdep_14_streamer_waitrequest,
    input wire [0:0] avm_memdep_14_streamer_writeack,
    input wire [511:0] avm_tuple_in_load_readdata,
    input wire [0:0] avm_tuple_in_load_readdatavalid,
    input wire [0:0] avm_tuple_in_load_waitrequest,
    input wire [0:0] avm_tuple_in_load_writeack,
    input wire [511:0] avm_tuple_in_load_writedata,
    input wire [511:0] avm_tuple_in_store_readdata,
    input wire [0:0] avm_tuple_in_store_readdatavalid,
    input wire [0:0] avm_tuple_in_store_waitrequest,
    input wire [0:0] avm_tuple_in_store_writeack,
    input wire [511:0] avm_tuple_out_load_readdata,
    input wire [0:0] avm_tuple_out_load_readdatavalid,
    input wire [0:0] avm_tuple_out_load_waitrequest,
    input wire [0:0] avm_tuple_out_load_writeack,
    input wire [511:0] avm_tuple_out_load_writedata,
    input wire [511:0] avm_tuple_out_store_readdata,
    input wire [0:0] avm_tuple_out_store_readdatavalid,
    input wire [0:0] avm_tuple_out_store_waitrequest,
    input wire [0:0] avm_tuple_out_store_writeack,
    input wire [0:0] avs_tuple_in_address,
    input wire [63:0] avs_tuple_in_byteenable,
    input wire [0:0] avs_tuple_in_enable,
    input wire [0:0] avs_tuple_in_read,
    input wire [0:0] avs_tuple_in_write,
    input wire [511:0] avs_tuple_in_writedata,
    input wire [0:0] avs_tuple_out_address,
    input wire [63:0] avs_tuple_out_byteenable,
    input wire [0:0] avs_tuple_out_enable,
    input wire [0:0] avs_tuple_out_read,
    input wire [0:0] avs_tuple_out_write,
    input wire [511:0] avs_tuple_out_writedata,
    input wire [0:0] avst_iord_bl_call_streamer_data,
    input wire [0:0] avst_iord_bl_call_streamer_valid,
    input wire [0:0] avst_iowr_bl_call_projection_almostfull,
    input wire [0:0] avst_iowr_bl_call_windowing_almostfull,
    input wire [0:0] avst_iowr_bl_return_projection_almostfull,
    input wire [0:0] avst_iowr_bl_return_windowing_almostfull,
    input wire [0:0] avst_iowr_bl_s0_almostfull,
    input wire [0:0] avst_iowr_bl_s1_almostfull,
    input wire [0:0] avst_iowr_bl_s2_almostfull,
    input wire [0:0] avst_iowr_nb_return_streamer_almostfull,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_address,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_burstcount,
    output wire [63:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_byteenable,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_enable,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_read,
    output wire [0:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_write,
    output wire [511:0] avm_memcoalesce_load_streamer_fpgaunique_53_streamer_writedata,
    output wire [31:0] avm_memdep_14_streamer_address,
    output wire [0:0] avm_memdep_14_streamer_burstcount,
    output wire [63:0] avm_memdep_14_streamer_byteenable,
    output wire [0:0] avm_memdep_14_streamer_enable,
    output wire [0:0] avm_memdep_14_streamer_read,
    output wire [0:0] avm_memdep_14_streamer_write,
    output wire [511:0] avm_memdep_14_streamer_writedata,
    output wire [31:0] avm_tuple_in_load_address,
    output wire [0:0] avm_tuple_in_load_burstcount,
    output wire [63:0] avm_tuple_in_load_byteenable,
    output wire [0:0] avm_tuple_in_load_enable,
    output wire [0:0] avm_tuple_in_load_read,
    output wire [0:0] avm_tuple_in_load_write,
    output wire [31:0] avm_tuple_in_store_address,
    output wire [0:0] avm_tuple_in_store_burstcount,
    output wire [63:0] avm_tuple_in_store_byteenable,
    output wire [0:0] avm_tuple_in_store_enable,
    output wire [0:0] avm_tuple_in_store_read,
    output wire [0:0] avm_tuple_in_store_write,
    output wire [511:0] avm_tuple_in_store_writedata,
    output wire [31:0] avm_tuple_out_load_address,
    output wire [0:0] avm_tuple_out_load_burstcount,
    output wire [63:0] avm_tuple_out_load_byteenable,
    output wire [0:0] avm_tuple_out_load_enable,
    output wire [0:0] avm_tuple_out_load_read,
    output wire [0:0] avm_tuple_out_load_write,
    output wire [31:0] avm_tuple_out_store_address,
    output wire [0:0] avm_tuple_out_store_burstcount,
    output wire [63:0] avm_tuple_out_store_byteenable,
    output wire [0:0] avm_tuple_out_store_enable,
    output wire [0:0] avm_tuple_out_store_read,
    output wire [0:0] avm_tuple_out_store_write,
    output wire [511:0] avm_tuple_out_store_writedata,
    output wire [511:0] avs_tuple_in_readdata,
    output wire [0:0] avs_tuple_in_readdatavalid,
    output wire [511:0] avs_tuple_out_readdata,
    output wire [0:0] avs_tuple_out_readdatavalid,
    output wire [0:0] avst_iord_bl_call_streamer_almost_full,
    output wire [0:0] avst_iord_bl_call_streamer_ready,
    output wire [0:0] avst_iowr_nb_return_streamer_data,
    output wire [0:0] avst_iowr_nb_return_streamer_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] dupName_0_call_const_x_q;
    wire [5:0] dupName_0_const_slave_mem_addr_lower_bits_x_q;
    wire [24:0] dupName_0_const_slave_mem_addr_upper_bits_x_q;
    wire [63:0] dupName_0_const_slave_mem_base_addr_x_q;
    wire [31:0] dupName_0_slave_addr_join_x_q;
    wire [63:0] const_slave_mem_base_addr_q;
    wire [0:0] projection_function_out_iord_bl_call_projection_o_fifoready;
    wire [0:0] projection_function_out_iord_bl_s0_o_fifoready;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifovalid;
    wire [383:0] projection_function_out_iowr_bl_s1_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_s1_o_fifovalid;
    wire [31:0] slave_addr_join_q;
    wire [0:0] streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] streamer_function_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] streamer_function_out_iord_bl_return_projection_o_fifoready;
    wire [0:0] streamer_function_out_iord_bl_return_windowing_o_fifoready;
    wire [0:0] streamer_function_out_iord_bl_s2_o_fifoready;
    wire [0:0] streamer_function_out_iowr_bl_call_projection_o_fifodata;
    wire [0:0] streamer_function_out_iowr_bl_call_projection_o_fifovalid;
    wire [0:0] streamer_function_out_iowr_bl_call_windowing_o_fifodata;
    wire [0:0] streamer_function_out_iowr_bl_call_windowing_o_fifovalid;
    wire [383:0] streamer_function_out_iowr_bl_s0_o_fifodata;
    wire [0:0] streamer_function_out_iowr_bl_s0_o_fifovalid;
    wire [0:0] streamer_function_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] streamer_function_out_iowr_nb_return_streamer_o_fifovalid;
    wire [31:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount;
    wire [63:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read;
    wire [0:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write;
    wire [511:0] streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata;
    wire [31:0] streamer_function_out_memdep_14_streamer_avm_address;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_burstcount;
    wire [63:0] streamer_function_out_memdep_14_streamer_avm_byteenable;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_enable;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_read;
    wire [0:0] streamer_function_out_memdep_14_streamer_avm_write;
    wire [511:0] streamer_function_out_memdep_14_streamer_avm_writedata;
    wire [31:0] tuple_in_permute_address_i_addr;
    wire [31:0] tuple_in_permute_address_o_addr;
    wire [31:0] tuple_out_permute_address_i_addr;
    wire [31:0] tuple_out_permute_address_o_addr;
    wire [0:0] windowing_function_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] windowing_function_out_iord_bl_s1_o_fifoready;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifovalid;
    wire [383:0] windowing_function_out_iowr_bl_s2_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_s2_o_fifovalid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // windowing_function(BLACKBOX,127)
    streamer_windowing_function thewindowing_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_s1_global(dupName_0_call_const_x_q),
        .in_arg_s2_global(dupName_0_call_const_x_q),
        .in_iord_bl_call_windowing_i_fifodata(streamer_function_out_iowr_bl_call_windowing_o_fifodata),
        .in_iord_bl_call_windowing_i_fifovalid(streamer_function_out_iowr_bl_call_windowing_o_fifovalid),
        .in_iord_bl_s1_i_fifodata(projection_function_out_iowr_bl_s1_o_fifodata),
        .in_iord_bl_s1_i_fifovalid(projection_function_out_iowr_bl_s1_o_fifovalid),
        .in_iowr_bl_return_windowing_i_fifoready(streamer_function_out_iord_bl_return_windowing_o_fifoready),
        .in_iowr_bl_s2_i_fifoready(streamer_function_out_iord_bl_s2_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_windowing_o_fifoalmost_full(),
        .out_iord_bl_call_windowing_o_fifoready(windowing_function_out_iord_bl_call_windowing_o_fifoready),
        .out_iord_bl_s1_o_fifoalmost_full(),
        .out_iord_bl_s1_o_fifoready(windowing_function_out_iord_bl_s1_o_fifoready),
        .out_iowr_bl_return_windowing_o_fifodata(windowing_function_out_iowr_bl_return_windowing_o_fifodata),
        .out_iowr_bl_return_windowing_o_fifovalid(windowing_function_out_iowr_bl_return_windowing_o_fifovalid),
        .out_iowr_bl_s2_o_fifodata(windowing_function_out_iowr_bl_s2_o_fifodata),
        .out_iowr_bl_s2_o_fifovalid(windowing_function_out_iowr_bl_s2_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // projection_function(BLACKBOX,118)
    streamer_projection_function theprojection_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_s0_global(dupName_0_call_const_x_q),
        .in_arg_s1_global(dupName_0_call_const_x_q),
        .in_iord_bl_call_projection_i_fifodata(streamer_function_out_iowr_bl_call_projection_o_fifodata),
        .in_iord_bl_call_projection_i_fifovalid(streamer_function_out_iowr_bl_call_projection_o_fifovalid),
        .in_iord_bl_s0_i_fifodata(streamer_function_out_iowr_bl_s0_o_fifodata),
        .in_iord_bl_s0_i_fifovalid(streamer_function_out_iowr_bl_s0_o_fifovalid),
        .in_iowr_bl_return_projection_i_fifoready(streamer_function_out_iord_bl_return_projection_o_fifoready),
        .in_iowr_bl_s1_i_fifoready(windowing_function_out_iord_bl_s1_o_fifoready),
        .in_stall_in(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_projection_o_fifoalmost_full(),
        .out_iord_bl_call_projection_o_fifoready(projection_function_out_iord_bl_call_projection_o_fifoready),
        .out_iord_bl_s0_o_fifoalmost_full(),
        .out_iord_bl_s0_o_fifoready(projection_function_out_iord_bl_s0_o_fifoready),
        .out_iowr_bl_return_projection_o_fifodata(projection_function_out_iowr_bl_return_projection_o_fifodata),
        .out_iowr_bl_return_projection_o_fifovalid(projection_function_out_iowr_bl_return_projection_o_fifovalid),
        .out_iowr_bl_s1_o_fifodata(projection_function_out_iowr_bl_s1_o_fifodata),
        .out_iowr_bl_s1_o_fifovalid(projection_function_out_iowr_bl_s1_o_fifovalid),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_const_slave_mem_base_addr_x(CONSTANT,5)
    assign dupName_0_const_slave_mem_base_addr_x_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // const_slave_mem_base_addr(CONSTANT,18)
    assign const_slave_mem_base_addr_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // dupName_0_call_const_x(CONSTANT,2)
    assign dupName_0_call_const_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // streamer_function(BLACKBOX,124)
    streamer_function thestreamer_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_s0_global(dupName_0_call_const_x_q),
        .in_arg_s2_global(dupName_0_call_const_x_q),
        .in_arg_tuple_in(const_slave_mem_base_addr_q),
        .in_arg_tuple_out(dupName_0_const_slave_mem_base_addr_x_q),
        .in_iord_bl_call_streamer_i_fifodata(avst_iord_bl_call_streamer_data),
        .in_iord_bl_call_streamer_i_fifovalid(VCC_q),
        .in_iord_bl_return_projection_i_fifodata(projection_function_out_iowr_bl_return_projection_o_fifodata),
        .in_iord_bl_return_projection_i_fifovalid(projection_function_out_iowr_bl_return_projection_o_fifovalid),
        .in_iord_bl_return_windowing_i_fifodata(windowing_function_out_iowr_bl_return_windowing_o_fifodata),
        .in_iord_bl_return_windowing_i_fifovalid(windowing_function_out_iowr_bl_return_windowing_o_fifovalid),
        .in_iord_bl_s2_i_fifodata(windowing_function_out_iowr_bl_s2_o_fifodata),
        .in_iord_bl_s2_i_fifovalid(windowing_function_out_iowr_bl_s2_o_fifovalid),
        .in_iowr_bl_call_projection_i_fifoready(projection_function_out_iord_bl_call_projection_o_fifoready),
        .in_iowr_bl_call_windowing_i_fifoready(windowing_function_out_iord_bl_call_windowing_o_fifoready),
        .in_iowr_bl_s0_i_fifoready(projection_function_out_iord_bl_s0_o_fifoready),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata(avm_memcoalesce_load_streamer_fpgaunique_53_streamer_readdata),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid(avm_memcoalesce_load_streamer_fpgaunique_53_streamer_readdatavalid),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest(avm_memcoalesce_load_streamer_fpgaunique_53_streamer_waitrequest),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack(avm_memcoalesce_load_streamer_fpgaunique_53_streamer_writeack),
        .in_memdep_14_streamer_avm_readdata(avm_memdep_14_streamer_readdata),
        .in_memdep_14_streamer_avm_readdatavalid(avm_memdep_14_streamer_readdatavalid),
        .in_memdep_14_streamer_avm_waitrequest(avm_memdep_14_streamer_waitrequest),
        .in_memdep_14_streamer_avm_writeack(avm_memdep_14_streamer_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_streamer_o_fifoalmost_full(streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(streamer_function_out_iord_bl_call_streamer_o_fifoready),
        .out_iord_bl_return_projection_o_fifoalmost_full(),
        .out_iord_bl_return_projection_o_fifoready(streamer_function_out_iord_bl_return_projection_o_fifoready),
        .out_iord_bl_return_windowing_o_fifoalmost_full(),
        .out_iord_bl_return_windowing_o_fifoready(streamer_function_out_iord_bl_return_windowing_o_fifoready),
        .out_iord_bl_s2_o_fifoalmost_full(),
        .out_iord_bl_s2_o_fifoready(streamer_function_out_iord_bl_s2_o_fifoready),
        .out_iowr_bl_call_projection_o_fifodata(streamer_function_out_iowr_bl_call_projection_o_fifodata),
        .out_iowr_bl_call_projection_o_fifovalid(streamer_function_out_iowr_bl_call_projection_o_fifovalid),
        .out_iowr_bl_call_windowing_o_fifodata(streamer_function_out_iowr_bl_call_windowing_o_fifodata),
        .out_iowr_bl_call_windowing_o_fifovalid(streamer_function_out_iowr_bl_call_windowing_o_fifovalid),
        .out_iowr_bl_s0_o_fifodata(streamer_function_out_iowr_bl_s0_o_fifodata),
        .out_iowr_bl_s0_o_fifovalid(streamer_function_out_iowr_bl_s0_o_fifovalid),
        .out_iowr_nb_return_streamer_o_fifodata(streamer_function_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(streamer_function_out_iowr_nb_return_streamer_o_fifovalid),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata(streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata),
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

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_address(GPOUT,70)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_address = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address;

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_burstcount(GPOUT,71)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_burstcount = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount;

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_byteenable(GPOUT,72)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_byteenable = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable;

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_enable(GPOUT,73)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_enable = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable;

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_read(GPOUT,74)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_read = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read;

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_write(GPOUT,75)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_write = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write;

    // avm_memcoalesce_load_streamer_fpgaunique_53_streamer_writedata(GPOUT,76)
    assign avm_memcoalesce_load_streamer_fpgaunique_53_streamer_writedata = streamer_function_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata;

    // avm_memdep_14_streamer_address(GPOUT,77)
    assign avm_memdep_14_streamer_address = streamer_function_out_memdep_14_streamer_avm_address;

    // avm_memdep_14_streamer_burstcount(GPOUT,78)
    assign avm_memdep_14_streamer_burstcount = streamer_function_out_memdep_14_streamer_avm_burstcount;

    // avm_memdep_14_streamer_byteenable(GPOUT,79)
    assign avm_memdep_14_streamer_byteenable = streamer_function_out_memdep_14_streamer_avm_byteenable;

    // avm_memdep_14_streamer_enable(GPOUT,80)
    assign avm_memdep_14_streamer_enable = streamer_function_out_memdep_14_streamer_avm_enable;

    // avm_memdep_14_streamer_read(GPOUT,81)
    assign avm_memdep_14_streamer_read = streamer_function_out_memdep_14_streamer_avm_read;

    // avm_memdep_14_streamer_write(GPOUT,82)
    assign avm_memdep_14_streamer_write = streamer_function_out_memdep_14_streamer_avm_write;

    // avm_memdep_14_streamer_writedata(GPOUT,83)
    assign avm_memdep_14_streamer_writedata = streamer_function_out_memdep_14_streamer_avm_writedata;

    // dupName_0_const_slave_mem_addr_upper_bits_x(CONSTANT,4)
    assign dupName_0_const_slave_mem_addr_upper_bits_x_q = $unsigned(25'b0000000000000000000000000);

    // dupName_0_const_slave_mem_addr_lower_bits_x(CONSTANT,3)
    assign dupName_0_const_slave_mem_addr_lower_bits_x_q = $unsigned(6'b000000);

    // slave_addr_join(BITJOIN,123)
    assign slave_addr_join_q = {dupName_0_const_slave_mem_addr_upper_bits_x_q, avs_tuple_in_address, dupName_0_const_slave_mem_addr_lower_bits_x_q};

    // tuple_in_permute_address(EXTIFACE,125)
    assign tuple_in_permute_address_i_addr = slave_addr_join_q;
    lsu_permute_address #(
        .AWIDTH(32),
        .BITS_IN_BYTE_SELECT(6),
        .ENABLE_BANKED_MEMORY(0),
        .MIN_BANK_BIT(0),
        .NUMBER_BANKS(1),
        .WORD_SELECT_BITS(-6)
    ) thetuple_in_permute_address (
        .i_addr(slave_addr_join_q),
        .o_addr(tuple_in_permute_address_o_addr)
    );

    // avm_tuple_in_load_address(GPOUT,84)
    assign avm_tuple_in_load_address = tuple_in_permute_address_o_addr;

    // avm_tuple_in_load_burstcount(GPOUT,85)
    assign avm_tuple_in_load_burstcount = VCC_q;

    // avm_tuple_in_load_byteenable(GPOUT,86)
    assign avm_tuple_in_load_byteenable = avs_tuple_in_byteenable;

    // avm_tuple_in_load_enable(GPOUT,87)
    assign avm_tuple_in_load_enable = VCC_q;

    // avm_tuple_in_load_read(GPOUT,88)
    assign avm_tuple_in_load_read = avs_tuple_in_read;

    // avm_tuple_in_load_write(GPOUT,89)
    assign avm_tuple_in_load_write = GND_q;

    // avm_tuple_in_store_address(GPOUT,90)
    assign avm_tuple_in_store_address = tuple_in_permute_address_o_addr;

    // avm_tuple_in_store_burstcount(GPOUT,91)
    assign avm_tuple_in_store_burstcount = VCC_q;

    // avm_tuple_in_store_byteenable(GPOUT,92)
    assign avm_tuple_in_store_byteenable = avs_tuple_in_byteenable;

    // avm_tuple_in_store_enable(GPOUT,93)
    assign avm_tuple_in_store_enable = VCC_q;

    // avm_tuple_in_store_read(GPOUT,94)
    assign avm_tuple_in_store_read = GND_q;

    // avm_tuple_in_store_write(GPOUT,95)
    assign avm_tuple_in_store_write = avs_tuple_in_write;

    // avm_tuple_in_store_writedata(GPOUT,96)
    assign avm_tuple_in_store_writedata = avs_tuple_in_writedata;

    // dupName_0_slave_addr_join_x(BITJOIN,10)
    assign dupName_0_slave_addr_join_x_q = {dupName_0_const_slave_mem_addr_upper_bits_x_q, avs_tuple_out_address, dupName_0_const_slave_mem_addr_lower_bits_x_q};

    // tuple_out_permute_address(EXTIFACE,126)
    assign tuple_out_permute_address_i_addr = dupName_0_slave_addr_join_x_q;
    lsu_permute_address #(
        .AWIDTH(32),
        .BITS_IN_BYTE_SELECT(6),
        .ENABLE_BANKED_MEMORY(0),
        .MIN_BANK_BIT(0),
        .NUMBER_BANKS(1),
        .WORD_SELECT_BITS(-6)
    ) thetuple_out_permute_address (
        .i_addr(dupName_0_slave_addr_join_x_q),
        .o_addr(tuple_out_permute_address_o_addr)
    );

    // avm_tuple_out_load_address(GPOUT,97)
    assign avm_tuple_out_load_address = tuple_out_permute_address_o_addr;

    // avm_tuple_out_load_burstcount(GPOUT,98)
    assign avm_tuple_out_load_burstcount = VCC_q;

    // avm_tuple_out_load_byteenable(GPOUT,99)
    assign avm_tuple_out_load_byteenable = avs_tuple_out_byteenable;

    // avm_tuple_out_load_enable(GPOUT,100)
    assign avm_tuple_out_load_enable = VCC_q;

    // avm_tuple_out_load_read(GPOUT,101)
    assign avm_tuple_out_load_read = avs_tuple_out_read;

    // avm_tuple_out_load_write(GPOUT,102)
    assign avm_tuple_out_load_write = GND_q;

    // avm_tuple_out_store_address(GPOUT,103)
    assign avm_tuple_out_store_address = tuple_out_permute_address_o_addr;

    // avm_tuple_out_store_burstcount(GPOUT,104)
    assign avm_tuple_out_store_burstcount = VCC_q;

    // avm_tuple_out_store_byteenable(GPOUT,105)
    assign avm_tuple_out_store_byteenable = avs_tuple_out_byteenable;

    // avm_tuple_out_store_enable(GPOUT,106)
    assign avm_tuple_out_store_enable = VCC_q;

    // avm_tuple_out_store_read(GPOUT,107)
    assign avm_tuple_out_store_read = GND_q;

    // avm_tuple_out_store_write(GPOUT,108)
    assign avm_tuple_out_store_write = avs_tuple_out_write;

    // avm_tuple_out_store_writedata(GPOUT,109)
    assign avm_tuple_out_store_writedata = avs_tuple_out_writedata;

    // avs_tuple_in_readdata(GPOUT,110)
    assign avs_tuple_in_readdata = avm_tuple_in_load_readdata;

    // avs_tuple_in_readdatavalid(GPOUT,111)
    assign avs_tuple_in_readdatavalid = avm_tuple_in_load_readdatavalid;

    // avs_tuple_out_readdata(GPOUT,112)
    assign avs_tuple_out_readdata = avm_tuple_out_load_readdata;

    // avs_tuple_out_readdatavalid(GPOUT,113)
    assign avs_tuple_out_readdatavalid = avm_tuple_out_load_readdatavalid;

    // avst_iord_bl_call_streamer_almost_full(GPOUT,114)
    assign avst_iord_bl_call_streamer_almost_full = streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;

    // avst_iord_bl_call_streamer_ready(GPOUT,115)
    assign avst_iord_bl_call_streamer_ready = streamer_function_out_iord_bl_call_streamer_o_fifoready;

    // avst_iowr_nb_return_streamer_data(GPOUT,116)
    assign avst_iowr_nb_return_streamer_data = streamer_function_out_iowr_nb_return_streamer_o_fifodata;

    // avst_iowr_nb_return_streamer_valid(GPOUT,117)
    assign avst_iowr_nb_return_streamer_valid = streamer_function_out_iowr_nb_return_streamer_o_fifovalid;

endmodule
