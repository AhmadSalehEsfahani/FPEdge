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

// SystemVerilog created from i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer0
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 21:02:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_mem_memcoalesce_loa0000aunique_53_streamer0 (
    output wire [127:0] out_o_readdata_0_tpl,
    output wire [127:0] out_o_readdata_1_tpl,
    output wire [127:0] out_o_readdata_2_tpl,
    output wire [63:0] out_o_readdata_3_tpl,
    output wire [63:0] out_o_readdata_4_tpl,
    output wire [0:0] out_o_valid,
    input wire [511:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write,
    output wire [511:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata,
    output wire [63:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [63:0] in_i_address,
    input wire [0:0] in_i_predicate,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] addr_trunc_sel_x_b;
    reg [127:0] readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_0_x_q;
    reg [127:0] readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_1_x_q;
    reg [127:0] readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_2_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_3_x_q;
    reg [63:0] readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_4_x_q;
    reg [0:0] readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_valid_reg_x_q;
    wire [31:0] c_i32_018_q;
    wire [2:0] c_i3_020_q;
    wire [511:0] c_i512_015_q;
    wire [63:0] c_i64_016_q;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdatavalid;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdatavalid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_waitrequest;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_waitrequest_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writeack_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_clock2x;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_clock2x_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_flush;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_flush_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_address;
    wire [2:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_atomic_op;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_bitwiseor;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_byteenable;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_cmpdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_predicate;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_valid_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_writedata;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_base_addr;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_reset;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_reset_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_size;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_burstcount;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_burstcount_bitsignaltemp;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_enable;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_enable_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_read;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_read_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_write;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_write_bitsignaltemp;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writedata;
    wire [4:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_input_fifo_depth;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_stall;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_valid;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_writeack;
    wire i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_writeack_bitsignaltemp;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_profile_avm_burstcount_total_incr;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_profile_bw_incr;
    wire [63:0] ip_dsdk_adapt_bitselect11_merged_bit_select_b;
    wire [63:0] ip_dsdk_adapt_bitselect11_merged_bit_select_c;
    wire [127:0] ip_dsdk_adapt_bitselect11_merged_bit_select_d;
    wire [127:0] ip_dsdk_adapt_bitselect11_merged_bit_select_e;
    wire [127:0] ip_dsdk_adapt_bitselect11_merged_bit_select_f;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i512_015(CONSTANT,20)
    assign c_i512_015_q = $unsigned(512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_016(CONSTANT,22)
    assign c_i64_016_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i32_018(CONSTANT,16)
    assign c_i32_018_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i3_020(CONSTANT,19)
    assign c_i3_020_q = $unsigned(3'b000);

    // addr_trunc_sel_x(BITSELECT,3)@2
    assign addr_trunc_sel_x_b = in_i_address[31:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1(EXTIFACE,25)@2 + 3
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdata = in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdatavalid = in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_waitrequest = in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writeack = in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_clock2x = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_flush = in_flush;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_address = addr_trunc_sel_x_b;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_atomic_op = c_i3_020_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_bitwiseor = c_i32_018_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_byteenable = c_i64_016_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_cmpdata = c_i512_015_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_predicate = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_stall = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_valid = in_i_valid;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_writedata = c_i512_015_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_base_addr = c_i32_018_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_reset = GND_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_size = c_i32_018_q;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdatavalid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdatavalid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_waitrequest_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_waitrequest[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writeack_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writeack[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_clock2x_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_clock2x[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_flush_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_flush[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_predicate_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_predicate[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_stall_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_stall[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_valid_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_valid[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_reset_bitsignaltemp = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_reset[0];
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_burstcount[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_burstcount_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_enable[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_enable_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_read[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_read_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_write[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_write_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_stall[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_stall_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_valid[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_valid_bitsignaltemp;
    assign i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_writeack[0] = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_writeack_bitsignaltemp;
    lsu_top #(
        .ABITS_PER_LMEM_BANK(7),
        .ADDRSPACE(64),
        .ALIGNMENT_BYTES(64),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(1),
        .ATOMIC(0),
        .ATOMIC_WIDTH(3),
        .AVM_READ_DATA_LATENESS(0),
        .AVM_WRITE_DATA_LATENESS(0),
        .AWIDTH(32),
        .BURSTCOUNT_WIDTH(1),
        .ENABLE_BANKED_MEMORY(0),
        .FORCE_NOP_SUPPORT(1),
        .HIGH_FMAX(1),
        .INPUTFIFO_USEDW_MAXBITS(5),
        .KERNEL_SIDE_MEM_LATENCY(3),
        .LMEM_ADDR_PERMUTATION_STYLE(0),
        .MEMORY_SIDE_MEM_LATENCY(0),
        .MWIDTH_BYTES(64),
        .NUMBER_BANKS(1),
        .PROFILE_ADDR_TOGGLE(0),
        .READ(1),
        .STALLFREE(1),
        .STYLE("PIPELINED"),
        .SYNCHRONIZE_RESET(0),
        .USECACHING(0),
        .USEINPUTFIFO(0),
        .USEOUTPUTFIFO(0),
        .USE_BYTE_EN(0),
        .USE_STALL_LATENCY(0),
        .USE_WRITE_ACK(1),
        .WIDE_DATA_SLICING(0),
        .WIDTH_BYTES(64),
        .WRITEDATAWIDTH_BYTES(64)
    ) thei_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1 (
        .avm_readdata(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata),
        .avm_readdatavalid(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_readdatavalid_bitsignaltemp),
        .avm_waitrequest(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_waitrequest_bitsignaltemp),
        .avm_writeack(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writeack_bitsignaltemp),
        .clock2x(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_clock2x_bitsignaltemp),
        .flush(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_flush_bitsignaltemp),
        .i_address(addr_trunc_sel_x_b),
        .i_atomic_op(c_i3_020_q),
        .i_bitwiseor(c_i32_018_q),
        .i_byteenable(c_i64_016_q),
        .i_cmpdata(c_i512_015_q),
        .i_predicate(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_predicate_bitsignaltemp),
        .i_stall(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_i_valid_bitsignaltemp),
        .i_writedata(c_i512_015_q),
        .stream_base_addr(c_i32_018_q),
        .stream_reset(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_stream_reset_bitsignaltemp),
        .stream_size(c_i32_018_q),
        .avm_address(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_address),
        .avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_burstcount_bitsignaltemp),
        .avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_byteenable),
        .avm_enable(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_enable_bitsignaltemp),
        .avm_read(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_read_bitsignaltemp),
        .avm_write(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_write_bitsignaltemp),
        .avm_writedata(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writedata),
        .o_input_fifo_depth(),
        .o_readdata(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata),
        .o_stall(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_valid_bitsignaltemp),
        .o_writeack(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_writeack_bitsignaltemp),
        .profile_avm_burstcount_total_incr(),
        .profile_bw_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_valid_reg_x(REG,11)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_valid_reg_x_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_valid_reg_x_q <= i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_valid;
        end
    end

    // ip_dsdk_adapt_bitselect11_merged_bit_select(BITSELECT,41)@5
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata[447:384];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_c = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata[511:448];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_d = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata[127:0];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_e = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata[255:128];
    assign ip_dsdk_adapt_bitselect11_merged_bit_select_f = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_readdata[383:256];

    // readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_4_x(REG,8)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_4_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_4_x_q <= ip_dsdk_adapt_bitselect11_merged_bit_select_c;
        end
    end

    // readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_3_x(REG,7)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_3_x_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_3_x_q <= ip_dsdk_adapt_bitselect11_merged_bit_select_b;
        end
    end

    // readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_2_x(REG,6)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_2_x_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_2_x_q <= ip_dsdk_adapt_bitselect11_merged_bit_select_f;
        end
    end

    // readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_1_x(REG,5)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_1_x_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_1_x_q <= ip_dsdk_adapt_bitselect11_merged_bit_select_e;
        end
    end

    // readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_0_x(REG,4)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_0_x_q <= $unsigned(128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_0_x_q <= ip_dsdk_adapt_bitselect11_merged_bit_select_d;
        end
    end

    // dupName_0_sync_out_aunroll_x(GPOUT,2)@6
    assign out_o_readdata_0_tpl = readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_0_x_q;
    assign out_o_readdata_1_tpl = readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_1_x_q;
    assign out_o_readdata_2_tpl = readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_2_x_q;
    assign out_o_readdata_3_tpl = readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_3_x_q;
    assign out_o_readdata_4_tpl = readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_data_reg_4_x_q;
    assign out_o_valid = readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_readdata_reg_memcoalesce_load_streamer_fpgaunique_53_streamer0_valid_reg_x_q;

    // ext_sig_sync_out(GPOUT,24)
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_address;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_enable;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_read;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_write;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_writedata;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_byteenable;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_avm_burstcount;

    // sync_out(GPOUT,38)@5
    assign out_o_stall = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer1_o_stall;

endmodule
