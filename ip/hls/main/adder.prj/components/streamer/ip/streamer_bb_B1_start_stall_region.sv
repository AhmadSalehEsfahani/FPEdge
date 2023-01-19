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

// SystemVerilog created from bb_streamer_B1_start_stall_region
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 19:47:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_B1_start_stall_region (
    input wire [63:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoready,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [127:0] in_memdep_14_streamer_avm_readdata,
    input wire [0:0] in_memdep_14_streamer_avm_writeack,
    input wire [0:0] in_memdep_14_streamer_avm_waitrequest,
    input wire [0:0] in_memdep_14_streamer_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write,
    output wire [63:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata,
    output wire [7:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount,
    output wire [31:0] out_memdep_14_streamer_avm_address,
    output wire [0:0] out_memdep_14_streamer_avm_enable,
    output wire [0:0] out_memdep_14_streamer_avm_read,
    output wire [0:0] out_memdep_14_streamer_avm_write,
    output wire [127:0] out_memdep_14_streamer_avm_writedata,
    output wire [15:0] out_memdep_14_streamer_avm_byteenable,
    output wire [0:0] out_memdep_14_streamer_avm_burstcount,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifodata,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifovalid,
    input wire [0:0] in_iord_bl_call_streamer_i_fifodata,
    input wire [0:0] in_iord_bl_call_streamer_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_out0,
    input wire [0:0] in_flush,
    input wire [63:0] in_in0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_iowr_nb_return_streamer_o_fifovalid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write;
    wire [63:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_address;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_burstcount;
    wire [15:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_enable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_read;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_write;
    wire [127:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_valid;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid;
    wire [0:0] streamer_B1_start_merge_reg_out_stall_out;
    wire [0:0] streamer_B1_start_merge_reg_out_valid_out;
    wire [0:0] bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q;
    wire [0:0] bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_V0;


    // SE_stall_entry(STALLENABLE,50)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = streamer_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // streamer_B1_start_merge_reg(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    streamer_B1_start_merge_reg thestreamer_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_streamer_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(streamer_B1_start_merge_reg_out_stall_out),
        .out_valid_out(streamer_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_streamer_B1_start_merge_reg(STALLENABLE,53)
    // Valid signal propagation
    assign SE_out_streamer_B1_start_merge_reg_V0 = SE_out_streamer_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_streamer_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall | ~ (SE_out_streamer_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_streamer_B1_start_merge_reg_wireValid = streamer_B1_start_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x(BLACKBOX,9)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    streamer_i_sfc_s_c0_in_wt_entry_s_c0_enter1_streamer0 thei_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x (
        .in_unnamed_streamer0_0_tpl(GND_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall),
        .in_i_valid(SE_out_streamer_B1_start_merge_reg_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid;

    // SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x(STALLENABLE,47)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BITJOIN,40)
    assign bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data;

    // bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BITSELECT,41)
    assign bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b = $unsigned(bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q[0:0]);

    // i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x(BLACKBOX,10)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@10
    // out out_iowr_nb_return_streamer_o_fifodata@20000000
    // out out_iowr_nb_return_streamer_o_fifovalid@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata@20000000
    // out out_memdep_14_streamer_avm_address@20000000
    // out out_memdep_14_streamer_avm_burstcount@20000000
    // out out_memdep_14_streamer_avm_byteenable@20000000
    // out out_memdep_14_streamer_avm_enable@20000000
    // out out_memdep_14_streamer_avm_read@20000000
    // out out_memdep_14_streamer_avm_write@20000000
    // out out_memdep_14_streamer_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    streamer_i_sfc_s_c1_in_wt_entry_s_c1_enter_streamer3 thei_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x (
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0),
        .in_in0(in_in0),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack),
        .in_memdep_14_streamer_avm_readdata(in_memdep_14_streamer_avm_readdata),
        .in_memdep_14_streamer_avm_readdatavalid(in_memdep_14_streamer_avm_readdatavalid),
        .in_memdep_14_streamer_avm_waitrequest(in_memdep_14_streamer_avm_waitrequest),
        .in_memdep_14_streamer_avm_writeack(in_memdep_14_streamer_avm_writeack),
        .in_out0(in_out0),
        .out_c1_exit_0_tpl(),
        .out_iowr_nb_return_streamer_o_fifodata(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_iowr_nb_return_streamer_o_fifovalid),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata),
        .out_memdep_14_streamer_avm_address(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_address),
        .out_memdep_14_streamer_avm_burstcount(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_burstcount),
        .out_memdep_14_streamer_avm_byteenable(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_byteenable),
        .out_memdep_14_streamer_avm_enable(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_enable),
        .out_memdep_14_streamer_avm_read(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_read),
        .out_memdep_14_streamer_avm_write(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_write),
        .out_memdep_14_streamer_avm_writedata(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(STALLENABLE,49)
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid;

    // i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BLACKBOX,17)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_streamer_o_fifoalmost_full@20000000
    // out out_iord_bl_call_streamer_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_call_unnamed_streamer2_streamer0 thei_iord_bl_call_streamer_unnamed_streamer2_streamer1 (
        .in_i_stall(SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0),
        .in_iord_bl_call_streamer_i_fifodata(in_iord_bl_call_streamer_i_fifodata),
        .in_iord_bl_call_streamer_i_fifovalid(in_iord_bl_call_streamer_i_fifovalid),
        .out_iord_bl_call_streamer_o_fifoalmost_full(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full),
        .out_iord_bl_call_streamer_o_fifoready(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready),
        .out_o_data(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data),
        .out_o_stall(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall),
        .out_o_valid(i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_iord_bl_call_streamer_o_fifoready = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready;
    assign out_iord_bl_call_streamer_o_fifoalmost_full = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full;

    // dupName_0_sync_out_x(GPOUT,4)@10
    assign out_valid_out = SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,7)
    assign out_memdep_14_streamer_avm_address = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_address;
    assign out_memdep_14_streamer_avm_enable = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_enable;
    assign out_memdep_14_streamer_avm_read = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_read;
    assign out_memdep_14_streamer_avm_write = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_write;
    assign out_memdep_14_streamer_avm_writedata = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_writedata;
    assign out_memdep_14_streamer_avm_byteenable = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    assign out_memdep_14_streamer_avm_burstcount = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memdep_14_streamer_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_nb_return_streamer_o_fifodata = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_iowr_nb_return_streamer_o_fifodata;
    assign out_iowr_nb_return_streamer_o_fifovalid = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_iowr_nb_return_streamer_o_fifovalid;

    // ext_sig_sync_out(GPOUT,16)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,35)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
