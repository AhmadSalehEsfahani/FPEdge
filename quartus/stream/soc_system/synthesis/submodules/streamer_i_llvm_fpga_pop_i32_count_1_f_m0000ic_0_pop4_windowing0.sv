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

// SystemVerilog created from i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing0
// Created for function/kernel streamer
// SystemVerilog created on Sun Jan  1 13:31:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_llvm_fpga_pop_i32_count_1_f_m0000ic_0_pop4_windowing0 (
    output wire [31:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_feedback_in_4,
    input wire [0:0] in_feedback_valid_in_4,
    output wire [0:0] out_feedback_stall_out_4,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [31:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_data_in;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_dir;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_dir_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_in;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_valid_in;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_predicate;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_in;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_in;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_in_bitsignaltemp;
    wire [31:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_stall_out;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_out;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_out;
    wire i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_out_bitsignaltemp;


    // i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1(EXTIFACE,5)@31
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_data_in = in_data_in;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_dir = in_dir;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_in = in_feedback_in_4;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_valid_in = in_feedback_valid_in_4;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_predicate = in_predicate;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_in = in_stall_in;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_dir_bitsignaltemp = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_dir[0];
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_predicate_bitsignaltemp = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_predicate[0];
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_in_bitsignaltemp = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_in[0];
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_in_bitsignaltemp = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_in[0];
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_stall_out[0] = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_out[0] = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_out[0] = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(32),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1 (
        .data_in(in_data_in),
        .dir(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_4),
        .feedback_valid_in(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_x(GPOUT,2)@31
    assign out_data_out = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_data_out;
    assign out_valid_out = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_valid_out;

    // feedback_sync_out(GPOUT,4)
    assign out_feedback_stall_out_4 = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_feedback_stall_out;

    // sync_out(GPOUT,8)@31
    assign out_stall_out = i_llvm_fpga_pop_i32_count_1_f_m_avg_struct_samm_n_z_4ha_static_0_pop4_windowing1_stall_out;

endmodule
