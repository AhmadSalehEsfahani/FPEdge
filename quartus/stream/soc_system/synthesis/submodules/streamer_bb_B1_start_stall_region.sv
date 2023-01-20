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
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_B1_start_stall_region (
    input wire [511:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoready,
    output wire [0:0] out_iord_bl_call_streamer_o_fifoalmost_full,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_iowr_bl_call_windowing_i_fifoready,
    output wire [31:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write,
    output wire [511:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata,
    output wire [63:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount,
    input wire [0:0] in_iowr_bl_s0_i_fifoready,
    output wire [0:0] out_iowr_bl_call_windowing_o_fifodata,
    output wire [0:0] out_iowr_bl_call_windowing_o_fifovalid,
    input wire [0:0] in_iord_bl_return_windowing_i_fifodata,
    input wire [0:0] in_iord_bl_return_windowing_i_fifovalid,
    output wire [383:0] out_iowr_bl_s0_o_fifodata,
    output wire [0:0] out_iowr_bl_s0_o_fifovalid,
    input wire [0:0] in_iowr_bl_call_projection_i_fifoready,
    output wire [0:0] out_iord_bl_return_windowing_o_fifoready,
    output wire [0:0] out_iord_bl_return_windowing_o_fifoalmost_full,
    input wire [383:0] in_iord_bl_s2_i_fifodata,
    input wire [0:0] in_iord_bl_s2_i_fifovalid,
    output wire [0:0] out_iowr_bl_call_projection_o_fifodata,
    output wire [0:0] out_iowr_bl_call_projection_o_fifovalid,
    input wire [0:0] in_iord_bl_return_projection_i_fifodata,
    input wire [0:0] in_iord_bl_return_projection_i_fifovalid,
    output wire [0:0] out_iord_bl_s2_o_fifoready,
    output wire [0:0] out_iord_bl_s2_o_fifoalmost_full,
    input wire [511:0] in_memdep_14_streamer_avm_readdata,
    input wire [0:0] in_memdep_14_streamer_avm_writeack,
    input wire [0:0] in_memdep_14_streamer_avm_waitrequest,
    input wire [0:0] in_memdep_14_streamer_avm_readdatavalid,
    output wire [0:0] out_iord_bl_return_projection_o_fifoready,
    output wire [0:0] out_iord_bl_return_projection_o_fifoalmost_full,
    output wire [31:0] out_memdep_14_streamer_avm_address,
    output wire [0:0] out_memdep_14_streamer_avm_enable,
    output wire [0:0] out_memdep_14_streamer_avm_read,
    output wire [0:0] out_memdep_14_streamer_avm_write,
    output wire [511:0] out_memdep_14_streamer_avm_writedata,
    output wire [63:0] out_memdep_14_streamer_avm_byteenable,
    output wire [0:0] out_memdep_14_streamer_avm_burstcount,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifodata,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifovalid,
    input wire [0:0] in_iord_bl_call_streamer_i_fifodata,
    input wire [0:0] in_iord_bl_call_streamer_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_tuple_in,
    input wire [63:0] in_tuple_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [7:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_0_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_2_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_3_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_4_tpl;
    wire [7:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_5_tpl;
    wire [7:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_6_tpl;
    wire [7:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_7_tpl;
    wire [7:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_8_tpl;
    wire [7:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_9_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_10_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_11_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_12_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_13_tpl;
    wire [31:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_14_tpl;
    wire [0:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_iord_bl_s2_o_fifoalmost_full;
    wire [0:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_iord_bl_s2_o_fifoready;
    wire [0:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_valid;
    wire [383:0] i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_iowr_bl_s0_o_fifodata;
    wire [0:0] i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_iowr_bl_s0_o_fifovalid;
    wire [0:0] i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_ack;
    wire [0:0] i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_stall;
    wire [0:0] i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_2_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_3_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_4_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_5_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_6_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_7_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_8_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_9_tpl;
    wire [7:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_10_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_11_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_12_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_13_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_14_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_15_tpl;
    wire [31:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount;
    wire [63:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write;
    wire [511:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_iowr_nb_return_streamer_o_fifovalid;
    wire [31:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_address;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_burstcount;
    wire [63:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_enable;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_read;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_write;
    wire [511:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_writedata;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_o_valid;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoalmost_full;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_iord_bl_call_streamer_o_fifoready;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall;
    wire [0:0] i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_iord_bl_return_projection_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_iord_bl_return_projection_o_fifoready;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_data;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_stall;
    wire [0:0] i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_valid;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_iord_bl_return_windowing_o_fifoalmost_full;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_iord_bl_return_windowing_o_fifoready;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_data;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_stall;
    wire [0:0] i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_valid;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_iowr_bl_call_projection_o_fifodata;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_iowr_bl_call_projection_o_fifovalid;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_ack;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_stall;
    wire [0:0] i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_valid;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_iowr_bl_call_windowing_o_fifodata;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_iowr_bl_call_windowing_o_fifovalid;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_ack;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_stall;
    wire [0:0] i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_valid;
    wire [0:0] streamer_B1_start_merge_reg_out_stall_out;
    wire [0:0] streamer_B1_start_merge_reg_out_valid_out;
    wire [0:0] redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_in;
    wire redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_in;
    wire redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_data_in;
    wire [0:0] redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_out;
    wire redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_out;
    wire redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_data_out;
    wire [335:0] bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q;
    wire [7:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_b;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_d;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_e;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_f;
    wire [7:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_g;
    wire [7:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_h;
    wire [7:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_i;
    wire [7:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_j;
    wire [7:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_k;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_l;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_m;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_n;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_o;
    wire [31:0] bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_p;
    wire [0:0] bubble_join_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_q;
    wire [0:0] bubble_select_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_b;
    wire [335:0] bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_f;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_g;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_h;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_i;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_j;
    wire [7:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_p;
    wire [0:0] bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q;
    wire [0:0] bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b;
    wire [0:0] bubble_join_i_iord_bl_return_projection_unnamed_streamer8_streamer10_q;
    wire [0:0] bubble_select_i_iord_bl_return_projection_unnamed_streamer8_streamer10_b;
    wire [0:0] bubble_join_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_q;
    wire [0:0] bubble_select_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_b;
    wire [0:0] bubble_join_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_q;
    wire [0:0] bubble_select_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_b;
    wire [0:0] bubble_join_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_q;
    wire [0:0] bubble_select_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_b;
    wire [0:0] bubble_join_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_q;
    wire [0:0] bubble_select_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_b;
    wire [0:0] SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_backStall;
    wire [0:0] SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_or0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0;
    wire [0:0] SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V1;
    wire [0:0] SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_wireValid;
    wire [0:0] SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_and0;
    wire [0:0] SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_and1;
    wire [0:0] SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_backStall;
    wire [0:0] SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_V0;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_wireValid;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_backStall;
    wire [0:0] SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_V0;
    wire [0:0] SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_V0;
    wire [0:0] SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_wireValid;
    wire [0:0] SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_backStall;
    wire [0:0] SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_streamer_B1_start_merge_reg_V0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_or0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_backStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_V0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_V1;


    // SE_stall_entry(STALLENABLE,124)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = streamer_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // streamer_B1_start_merge_reg(BLACKBOX,68)@0
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

    // SE_out_streamer_B1_start_merge_reg(STALLENABLE,127)
    // Valid signal propagation
    assign SE_out_streamer_B1_start_merge_reg_V0 = SE_out_streamer_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_streamer_B1_start_merge_reg_backStall = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_stall | ~ (SE_out_streamer_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_streamer_B1_start_merge_reg_wireValid = streamer_B1_start_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x(BLACKBOX,23)@1
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

    // SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x(STALLENABLE,109)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_backStall = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_stall | ~ (SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BITJOIN,85)
    assign bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data;

    // bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BITSELECT,86)
    assign bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b = $unsigned(bubble_join_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_q[0:0]);

    // bubble_join_i_iord_bl_return_windowing_unnamed_streamer5_streamer7(BITJOIN,91)
    assign bubble_join_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_q = i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_data;

    // bubble_select_i_iord_bl_return_windowing_unnamed_streamer5_streamer7(BITSELECT,92)
    assign bubble_select_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_b = $unsigned(bubble_join_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_q[0:0]);

    // i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x(BLACKBOX,21)@9
    // in in_i_stall@20000000
    // out out_iord_bl_s2_o_fifoalmost_full@20000000
    // out out_iord_bl_s2_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_s2_unnamed_7_streamer0 thei_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x (
        .in_i_dependence(bubble_select_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_b),
        .in_i_stall(SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_backStall),
        .in_i_valid(SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_V0),
        .in_iord_bl_s2_i_fifodata(in_iord_bl_s2_i_fifodata),
        .in_iord_bl_s2_i_fifovalid(in_iord_bl_s2_i_fifovalid),
        .out_o_data_0_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_14_tpl),
        .out_iord_bl_s2_o_fifoalmost_full(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_iord_bl_s2_o_fifoalmost_full),
        .out_iord_bl_s2_o_fifoready(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_iord_bl_s2_o_fifoready),
        .out_o_stall(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7(STALLENABLE,119)
    // Valid signal propagation
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_V0 = SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_backStall = i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_wireValid = i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_valid;

    // bubble_join_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5(BITJOIN,97)
    assign bubble_join_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_q = i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_ack;

    // bubble_select_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5(BITSELECT,98)
    assign bubble_select_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_b = $unsigned(bubble_join_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_q[0:0]);

    // i_iord_bl_return_windowing_unnamed_streamer5_streamer7(BLACKBOX,35)@9
    // in in_i_stall@20000000
    // out out_iord_bl_return_windowing_o_fifoalmost_full@20000000
    // out out_iord_bl_return_windowing_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_return_windowing_unnamed_5_streamer0 thei_iord_bl_return_windowing_unnamed_streamer5_streamer7 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_b),
        .in_i_stall(SE_out_i_iord_bl_return_windowing_unnamed_streamer5_streamer7_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_V0),
        .in_iord_bl_return_windowing_i_fifodata(in_iord_bl_return_windowing_i_fifodata),
        .in_iord_bl_return_windowing_i_fifovalid(in_iord_bl_return_windowing_i_fifovalid),
        .out_iord_bl_return_windowing_o_fifoalmost_full(i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_iord_bl_return_windowing_o_fifoalmost_full),
        .out_iord_bl_return_windowing_o_fifoready(i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_iord_bl_return_windowing_o_fifoready),
        .out_o_data(i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_data),
        .out_o_stall(i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_stall),
        .out_o_valid(i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5(STALLENABLE,123)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_V0 = SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_backStall = i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_o_stall | ~ (SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_wireValid = i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_valid;

    // bubble_join_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo(BITJOIN,102)
    assign bubble_join_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_q = redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_data_out;

    // bubble_select_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo(BITSELECT,103)
    assign bubble_select_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_b = $unsigned(bubble_join_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_q[0:0]);

    // i_iowr_bl_call_windowing_unnamed_streamer3_streamer5(BLACKBOX,37)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_call_windowing_o_fifodata@20000000
    // out out_iowr_bl_call_windowing_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_call_windowing_unnamed_3_streamer0 thei_iowr_bl_call_windowing_unnamed_streamer3_streamer5 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_b),
        .in_i_stall(SE_out_i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_backStall),
        .in_i_valid(SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_V1),
        .in_iowr_bl_call_windowing_i_fifoready(in_iowr_bl_call_windowing_i_fifoready),
        .out_iowr_bl_call_windowing_o_fifodata(i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_iowr_bl_call_windowing_o_fifodata),
        .out_iowr_bl_call_windowing_o_fifovalid(i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_iowr_bl_call_windowing_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_ack),
        .out_o_stall(i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_stall),
        .out_o_valid(i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x(STALLENABLE,113)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_V0 = SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_wireValid = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_o_valid;

    // bubble_join_i_iord_bl_return_projection_unnamed_streamer8_streamer10(BITJOIN,88)
    assign bubble_join_i_iord_bl_return_projection_unnamed_streamer8_streamer10_q = i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_data;

    // bubble_select_i_iord_bl_return_projection_unnamed_streamer8_streamer10(BITSELECT,89)
    assign bubble_select_i_iord_bl_return_projection_unnamed_streamer8_streamer10_b = $unsigned(bubble_join_i_iord_bl_return_projection_unnamed_streamer8_streamer10_q[0:0]);

    // bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x(BITJOIN,74)
    assign bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q = {i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_14_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_13_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_12_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_11_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_10_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_9_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_8_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_7_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_6_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_5_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_4_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_3_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_2_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_1_tpl, i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x(BITSELECT,75)
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[7:0]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[39:8]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[71:40]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[103:72]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[135:104]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[143:136]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[151:144]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_i = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[159:152]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_j = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[167:160]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_k = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[175:168]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_l = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[207:176]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_m = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[239:208]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_n = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[271:240]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_o = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[303:272]);
    assign bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_p = $unsigned(bubble_join_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_q[335:304]);

    // i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x(BLACKBOX,25)@9
    // in in_i_stall@20000000
    // out out_c2_exit_0_tpl@14
    // out out_iowr_nb_return_streamer_o_fifodata@20000000
    // out out_iowr_nb_return_streamer_o_fifovalid@20000000
    // out out_memdep_14_streamer_avm_address@20000000
    // out out_memdep_14_streamer_avm_burstcount@20000000
    // out out_memdep_14_streamer_avm_byteenable@20000000
    // out out_memdep_14_streamer_avm_enable@20000000
    // out out_memdep_14_streamer_avm_read@20000000
    // out out_memdep_14_streamer_avm_write@20000000
    // out out_memdep_14_streamer_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    streamer_i_sfc_s_c2_in_wt_entry_s_c2_enter_streamer12 thei_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x (
        .in_c2_eni3_0_tpl(GND_q),
        .in_c2_eni3_1_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_b),
        .in_c2_eni3_2_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_c),
        .in_c2_eni3_3_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_d),
        .in_c2_eni3_4_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_e),
        .in_c2_eni3_5_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_f),
        .in_c2_eni3_6_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_g),
        .in_c2_eni3_7_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_h),
        .in_c2_eni3_8_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_i),
        .in_c2_eni3_9_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_j),
        .in_c2_eni3_10_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_k),
        .in_c2_eni3_11_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_l),
        .in_c2_eni3_12_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_m),
        .in_c2_eni3_13_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_n),
        .in_c2_eni3_14_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_o),
        .in_c2_eni3_15_tpl(bubble_select_i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_p),
        .in_c2_eni3_16_tpl(bubble_select_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_b),
        .in_c2_eni3_17_tpl(bubble_select_i_iord_bl_return_projection_unnamed_streamer8_streamer10_b),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_V0),
        .in_memdep_14_streamer_avm_readdata(in_memdep_14_streamer_avm_readdata),
        .in_memdep_14_streamer_avm_readdatavalid(in_memdep_14_streamer_avm_readdatavalid),
        .in_memdep_14_streamer_avm_waitrequest(in_memdep_14_streamer_avm_waitrequest),
        .in_memdep_14_streamer_avm_writeack(in_memdep_14_streamer_avm_writeack),
        .in_tuple_out(in_tuple_out),
        .out_c2_exit_0_tpl(),
        .out_iowr_nb_return_streamer_o_fifodata(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_iowr_nb_return_streamer_o_fifovalid),
        .out_memdep_14_streamer_avm_address(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_address),
        .out_memdep_14_streamer_avm_burstcount(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_burstcount),
        .out_memdep_14_streamer_avm_byteenable(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_byteenable),
        .out_memdep_14_streamer_avm_enable(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_enable),
        .out_memdep_14_streamer_avm_read(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_read),
        .out_memdep_14_streamer_avm_write(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_write),
        .out_memdep_14_streamer_avm_writedata(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_writedata),
        .out_o_stall(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x(STALLENABLE,111)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_backStall = i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x(BITJOIN,81)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q = {i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_15_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_14_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_13_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_12_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_11_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_10_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_9_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_8_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_7_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_6_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_5_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_4_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x(BITSELECT,82)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[7:0]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[39:8]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[71:40]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[103:72]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[135:104]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[143:136]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[151:144]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[159:152]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[167:160]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[175:168]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[207:176]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[239:208]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[271:240]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[303:272]);
    assign bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_q[335:304]);

    // i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x(BLACKBOX,22)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_s0_o_fifodata@20000000
    // out out_iowr_bl_s0_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_s0_unnamed_4_streamer0 thei_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x (
        .in_i_data_0_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_b),
        .in_i_data_1_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_c),
        .in_i_data_2_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_d),
        .in_i_data_3_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_e),
        .in_i_data_4_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_f),
        .in_i_data_5_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_g),
        .in_i_data_6_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_h),
        .in_i_data_7_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_i),
        .in_i_data_8_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_j),
        .in_i_data_9_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_k),
        .in_i_data_10_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_l),
        .in_i_data_11_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_m),
        .in_i_data_12_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_n),
        .in_i_data_13_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_o),
        .in_i_data_14_tpl(bubble_select_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_p),
        .in_i_stall(SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_V0),
        .in_iowr_bl_s0_i_fifoready(in_iowr_bl_s0_i_fifoready),
        .out_iowr_bl_s0_o_fifodata(i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_iowr_bl_s0_o_fifodata),
        .out_iowr_bl_s0_o_fifovalid(i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_iowr_bl_s0_o_fifovalid),
        .out_o_ack(i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_ack),
        .out_o_stall(i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_stall),
        .out_o_valid(i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x(STALLENABLE,107)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_V0 = SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_backStall = i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_stall | ~ (SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_wireValid = i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_valid;

    // bubble_join_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x(BITJOIN,77)
    assign bubble_join_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_q = i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_o_ack;

    // bubble_select_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x(BITSELECT,78)
    assign bubble_select_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_b = $unsigned(bubble_join_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_q[0:0]);

    // i_iowr_bl_call_projection_unnamed_streamer6_streamer8(BLACKBOX,36)@9
    // in in_i_stall@20000000
    // out out_iowr_bl_call_projection_o_fifodata@20000000
    // out out_iowr_bl_call_projection_o_fifovalid@20000000
    // out out_o_stall@20000000
    streamer_i_iowr_bl_call_projection_unnamed_6_streamer0 thei_iowr_bl_call_projection_unnamed_streamer6_streamer8 (
        .in_i_data(GND_q),
        .in_i_dependence(bubble_select_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_backStall),
        .in_i_valid(SE_out_i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_V0),
        .in_iowr_bl_call_projection_i_fifoready(in_iowr_bl_call_projection_i_fifoready),
        .out_iowr_bl_call_projection_o_fifodata(i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_iowr_bl_call_projection_o_fifodata),
        .out_iowr_bl_call_projection_o_fifovalid(i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_iowr_bl_call_projection_o_fifovalid),
        .out_o_ack(i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_ack),
        .out_o_stall(i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_stall),
        .out_o_valid(i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8(STALLENABLE,121)
    // Valid signal propagation
    assign SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_V0 = SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_wireValid;
    // Backward Stall generation
    assign SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_backStall = i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_stall | ~ (SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_wireValid = i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_valid;

    // bubble_join_i_iowr_bl_call_projection_unnamed_streamer6_streamer8(BITJOIN,94)
    assign bubble_join_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_q = i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_o_ack;

    // bubble_select_i_iowr_bl_call_projection_unnamed_streamer6_streamer8(BITSELECT,95)
    assign bubble_select_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_b = $unsigned(bubble_join_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_q[0:0]);

    // i_iord_bl_return_projection_unnamed_streamer8_streamer10(BLACKBOX,34)@9
    // in in_i_stall@20000000
    // out out_iord_bl_return_projection_o_fifoalmost_full@20000000
    // out out_iord_bl_return_projection_o_fifoready@20000000
    // out out_o_stall@20000000
    streamer_i_iord_bl_return_projection_unnamed_8_streamer0 thei_iord_bl_return_projection_unnamed_streamer8_streamer10 (
        .in_i_dependence(bubble_select_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_b),
        .in_i_stall(SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_backStall),
        .in_i_valid(SE_out_i_iowr_bl_call_projection_unnamed_streamer6_streamer8_V0),
        .in_iord_bl_return_projection_i_fifodata(in_iord_bl_return_projection_i_fifodata),
        .in_iord_bl_return_projection_i_fifovalid(in_iord_bl_return_projection_i_fifovalid),
        .out_iord_bl_return_projection_o_fifoalmost_full(i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_iord_bl_return_projection_o_fifoalmost_full),
        .out_iord_bl_return_projection_o_fifoready(i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_iord_bl_return_projection_o_fifoready),
        .out_o_data(i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_data),
        .out_o_stall(i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_stall),
        .out_o_valid(i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10(STALLENABLE,117)
    // Valid signal propagation
    assign SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_V0 = SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_wireValid;
    // Backward Stall generation
    assign SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_backStall = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_o_stall | ~ (SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_and0 = i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_o_valid;
    assign SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_and1 = i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_o_valid & SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_and0;
    assign SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_wireValid = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_V0 & SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_and1;

    // SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo(STALLENABLE,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg0 <= '0;
            SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg0 <= SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg1 <= SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed0 = (~ (SE_out_i_iord_bl_return_projection_unnamed_streamer8_streamer10_backStall) & SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg0;
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed1 = (~ (i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_o_stall) & SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_StallValid = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_backStall & SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid;
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_toReg0 = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_StallValid & SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed0;
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_toReg1 = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_StallValid & SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_or0 = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed0;
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireStall = ~ (SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_consumed1 & SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_or0);
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_backStall = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_V0 = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg0);
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_V1 = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_wireValid = redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_out;

    // redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo(STALLFIFO,72)
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_in = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V1;
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_in = SE_out_redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_backStall;
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_data_in = bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b;
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_in_bitsignaltemp = redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_in[0];
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_in_bitsignaltemp = redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_in[0];
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_out[0] = redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_out_bitsignaltemp;
    assign redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_out[0] = redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(9),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo (
        .valid_in(redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b),
        .valid_out(redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x(BLACKBOX,24)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@9
    // out out_c1_exit_1_tpl@9
    // out out_c1_exit_2_tpl@9
    // out out_c1_exit_3_tpl@9
    // out out_c1_exit_4_tpl@9
    // out out_c1_exit_5_tpl@9
    // out out_c1_exit_6_tpl@9
    // out out_c1_exit_7_tpl@9
    // out out_c1_exit_8_tpl@9
    // out out_c1_exit_9_tpl@9
    // out out_c1_exit_10_tpl@9
    // out out_c1_exit_11_tpl@9
    // out out_c1_exit_12_tpl@9
    // out out_c1_exit_13_tpl@9
    // out out_c1_exit_14_tpl@9
    // out out_c1_exit_15_tpl@9
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    streamer_i_sfc_s_c1_in_wt_entry_s_c1_enter_streamer3 thei_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x (
        .in_c1_eni1_0_tpl(GND_q),
        .in_c1_eni1_1_tpl(bubble_select_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_b),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack),
        .in_tuple_in(in_tuple_in),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_3_tpl),
        .out_c1_exit_4_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_4_tpl),
        .out_c1_exit_5_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_5_tpl),
        .out_c1_exit_6_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_6_tpl),
        .out_c1_exit_7_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_7_tpl),
        .out_c1_exit_8_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_8_tpl),
        .out_c1_exit_9_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_9_tpl),
        .out_c1_exit_10_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_10_tpl),
        .out_c1_exit_11_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_11_tpl),
        .out_c1_exit_12_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_12_tpl),
        .out_c1_exit_13_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_13_tpl),
        .out_c1_exit_14_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_14_tpl),
        .out_c1_exit_15_tpl(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_c1_exit_15_tpl),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1(STALLENABLE,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0 <= '0;
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0 <= SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1 <= SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0 = (~ (i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_o_stall) & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid) | SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1 = (~ (redist0_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_data_8_fifo_stall_out) & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid) | SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1;
    // Consuming
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_toReg1 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_StallValid & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_or0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed0;
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireStall = ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_consumed1 & SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_or0);
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_backStall = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V0 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid & ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg0);
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_V1 = SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid & ~ (SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_streamer_unnamed_streamer2_streamer1_wireValid = i_iord_bl_call_streamer_unnamed_streamer2_streamer1_out_o_valid;

    // i_iord_bl_call_streamer_unnamed_streamer2_streamer1(BLACKBOX,33)@1
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

    // dupName_0_sync_out_x(GPOUT,4)@14
    assign out_valid_out = SE_out_i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount = i_sfc_s_c1_in_wt_entry_streamers_c1_enter_streamer3_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,8)
    assign out_iowr_bl_call_windowing_o_fifodata = i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_iowr_bl_call_windowing_o_fifodata;
    assign out_iowr_bl_call_windowing_o_fifovalid = i_iowr_bl_call_windowing_unnamed_streamer3_streamer5_out_iowr_bl_call_windowing_o_fifovalid;

    // dupName_3_ext_sig_sync_out_x(GPOUT,10)
    assign out_iowr_bl_s0_o_fifodata = i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_iowr_bl_s0_o_fifodata;
    assign out_iowr_bl_s0_o_fifovalid = i_iowr_bl_s0_unnamed_streamer4_streamer6_aunroll_x_out_iowr_bl_s0_o_fifovalid;

    // dupName_4_ext_sig_sync_out_x(GPOUT,12)
    assign out_iord_bl_return_windowing_o_fifoready = i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_iord_bl_return_windowing_o_fifoready;
    assign out_iord_bl_return_windowing_o_fifoalmost_full = i_iord_bl_return_windowing_unnamed_streamer5_streamer7_out_iord_bl_return_windowing_o_fifoalmost_full;

    // dupName_5_ext_sig_sync_out_x(GPOUT,14)
    assign out_iowr_bl_call_projection_o_fifodata = i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_iowr_bl_call_projection_o_fifodata;
    assign out_iowr_bl_call_projection_o_fifovalid = i_iowr_bl_call_projection_unnamed_streamer6_streamer8_out_iowr_bl_call_projection_o_fifovalid;

    // dupName_6_ext_sig_sync_out_x(GPOUT,16)
    assign out_iord_bl_s2_o_fifoready = i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_iord_bl_s2_o_fifoready;
    assign out_iord_bl_s2_o_fifoalmost_full = i_iord_bl_s2_unnamed_streamer7_streamer9_aunroll_x_out_iord_bl_s2_o_fifoalmost_full;

    // dupName_7_ext_sig_sync_out_x(GPOUT,18)
    assign out_iord_bl_return_projection_o_fifoready = i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_iord_bl_return_projection_o_fifoready;
    assign out_iord_bl_return_projection_o_fifoalmost_full = i_iord_bl_return_projection_unnamed_streamer8_streamer10_out_iord_bl_return_projection_o_fifoalmost_full;

    // dupName_8_ext_sig_sync_out_x(GPOUT,19)
    assign out_memdep_14_streamer_avm_address = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_address;
    assign out_memdep_14_streamer_avm_enable = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_enable;
    assign out_memdep_14_streamer_avm_read = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_read;
    assign out_memdep_14_streamer_avm_write = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_write;
    assign out_memdep_14_streamer_avm_writedata = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_writedata;
    assign out_memdep_14_streamer_avm_byteenable = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    assign out_memdep_14_streamer_avm_burstcount = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_memdep_14_streamer_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,20)
    assign out_iowr_nb_return_streamer_o_fifodata = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_iowr_nb_return_streamer_o_fifodata;
    assign out_iowr_nb_return_streamer_o_fifovalid = i_sfc_s_c2_in_wt_entry_streamers_c2_enter_streamer12_aunroll_x_out_iowr_nb_return_streamer_o_fifovalid;

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_streamer1_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,61)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_streamers_c0_enter1_streamer0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,69)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
