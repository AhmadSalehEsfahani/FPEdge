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
// SystemVerilog created on Sun Jan  1 13:31:30 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_function_wrapper (
    input wire [3:0] avs_cra_address,
    input wire [7:0] avs_cra_byteenable,
    input wire [0:0] avs_cra_enable,
    input wire [0:0] avs_cra_read,
    input wire [0:0] avs_cra_write,
    input wire [63:0] avs_cra_writedata,
    input wire [383:0] avst_iord_bl_call_streamer_data,
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
    output wire [63:0] avs_cra_readdata,
    output wire [0:0] avs_cra_readdatavalid,
    output wire [0:0] avst_iord_bl_call_streamer_almost_full,
    output wire [0:0] avst_iord_bl_call_streamer_ready,
    output wire [383:0] avst_iowr_nb_return_streamer_data,
    output wire [0:0] avst_iowr_nb_return_streamer_valid,
    output wire [0:0] done_irq,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] dupName_0_bitenable_lsb_x_b;
    wire [63:0] dupName_0_call_const_x_q;
    wire [61:0] dupName_0_const_status_pad_x_q;
    wire [63:0] dupName_0_data_and_enable_x_q;
    wire [63:0] dupName_0_next_reg_x_q;
    wire [63:0] dupName_0_not_bitenable_x_q;
    wire [3:0] dupName_0_reg_address_x_q;
    wire [63:0] dupName_0_reg_and_not_enable_x_q;
    wire [63:0] dupName_0_return_bits_x_b;
    wire [0:0] dupName_0_write_reg_x_q;
    wire [0:0] dupName_0_write_to_address_x_q;
    wire [0:0] dupName_0_writedata_lsb_x_b;
    wire [63:0] dupName_1_next_reg_x_q;
    wire [3:0] dupName_1_reg_address_x_q;
    wire [63:0] dupName_1_reg_and_not_enable_x_q;
    wire [63:0] dupName_1_return_bits_x_b;
    wire [0:0] dupName_1_write_reg_x_q;
    wire [0:0] dupName_1_write_to_address_x_q;
    wire [63:0] dupName_2_next_reg_x_q;
    wire [3:0] dupName_2_reg_address_x_q;
    wire [63:0] dupName_2_reg_and_not_enable_x_q;
    wire [63:0] dupName_2_return_bits_x_b;
    wire [0:0] dupName_2_write_reg_x_q;
    wire [0:0] dupName_2_write_to_address_x_q;
    wire [63:0] dupName_3_next_reg_x_q;
    wire [3:0] dupName_3_reg_address_x_q;
    wire [63:0] dupName_3_reg_and_not_enable_x_q;
    wire [63:0] dupName_3_return_bits_x_b;
    wire [0:0] dupName_3_write_reg_x_q;
    wire [0:0] dupName_3_write_to_address_x_q;
    wire [63:0] dupName_4_next_reg_x_q;
    wire [3:0] dupName_4_reg_address_x_q;
    wire [63:0] dupName_4_reg_and_not_enable_x_q;
    wire [63:0] dupName_4_return_bits_x_b;
    wire [0:0] dupName_4_write_reg_x_q;
    wire [0:0] dupName_4_write_to_address_x_q;
    wire [63:0] dupName_5_next_reg_x_q;
    wire [3:0] dupName_5_reg_address_x_q;
    wire [63:0] dupName_5_reg_and_not_enable_x_q;
    wire [0:0] dupName_5_write_reg_x_q;
    wire [0:0] dupName_5_write_to_address_x_q;
    reg [63:0] avs_cra_readdata_r_NO_SHIFT_REG_q;
    wire [3:0] avs_readdata_mux_s;
    reg [63:0] avs_readdata_mux_q;
    wire [0:0] avs_start_q;
    wire [63:0] bit_enable_q;
    wire [0:0] busy_and_q;
    wire [63:0] busy_join_q;
    wire [0:0] busy_or_q;
    wire [0:0] component_not_ready_q;
    wire [62:0] const_status_pad_q;
    wire [0:0] data_and_enable_q;
    wire [3:0] done_address_q;
    wire [0:0] done_and_q;
    wire [63:0] done_join_q;
    wire [0:0] done_or_q;
    reg [0:0] done_r_NO_SHIFT_REG_q;
    wire [0:0] hold_done_q;
    wire [383:0] implicit_input_q;
    wire [63:0] instmask_join_q;
    reg [0:0] interrupt_mask_r_NO_SHIFT_REG_q;
    reg [0:0] interrupt_r_NO_SHIFT_REG_q;
    reg [63:0] mm_slave_address_10_data_NO_SHIFT_REG_q;
    reg [63:0] mm_slave_address_11_data_NO_SHIFT_REG_q;
    reg [63:0] mm_slave_address_12_data_NO_SHIFT_REG_q;
    reg [63:0] mm_slave_address_13_data_NO_SHIFT_REG_q;
    reg [63:0] mm_slave_address_14_data_NO_SHIFT_REG_q;
    reg [63:0] mm_slave_address_15_data_NO_SHIFT_REG_q;
    wire [0:0] next_done_q;
    wire [0:0] next_reg_q;
    wire [0:0] next_start_q;
    wire [0:0] not_bitenable_q;
    wire [0:0] not_reset_done_q;
    wire [0:0] not_start_q;
    wire [0:0] pos_reset_q;
    wire [0:0] projection_function_out_iord_bl_call_projection_o_fifoready;
    wire [0:0] projection_function_out_iord_bl_s0_o_fifoready;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_return_projection_o_fifovalid;
    wire [383:0] projection_function_out_iowr_bl_s1_o_fifodata;
    wire [0:0] projection_function_out_iowr_bl_s1_o_fifovalid;
    wire [3:0] reg_address_q;
    wire [0:0] reg_and_not_enable_q;
    wire [0:0] reset_done_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [63:0] return_bits_b;
    reg [383:0] return_data_r_NO_SHIFT_REG_q;
    wire [0:0] select_0_b;
    wire [0:0] select_1_b;
    wire [0:0] select_2_b;
    wire [0:0] select_3_b;
    wire [0:0] select_4_b;
    wire [0:0] select_5_b;
    wire [0:0] select_6_b;
    wire [0:0] select_7_b;
    wire [383:0] slave_arg_register_join_q;
    wire [3:0] start_address_q;
    reg [0:0] start_r_NO_SHIFT_REG_q;
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
    wire [383:0] streamer_function_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] streamer_function_out_iowr_nb_return_streamer_o_fifovalid;
    wire [0:0] windowing_function_out_iord_bl_call_windowing_o_fifoready;
    wire [0:0] windowing_function_out_iord_bl_s1_o_fifoready;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_return_windowing_o_fifovalid;
    wire [383:0] windowing_function_out_iowr_bl_s2_o_fifodata;
    wire [0:0] windowing_function_out_iowr_bl_s2_o_fifovalid;
    wire [0:0] write_done_q;
    wire [0:0] write_reg_q;
    wire [0:0] write_start_reg_q;
    wire [0:0] write_to_address_q;
    wire [0:0] write_to_done_q;
    wire [0:0] write_to_start_address_q;


    // dupName_5_reg_address_x(CONSTANT,60)
    assign dupName_5_reg_address_x_q = $unsigned(4'b1111);

    // dupName_5_write_to_address_x(LOGICAL,63)
    assign dupName_5_write_to_address_x_q = $unsigned(avs_cra_address == dupName_5_reg_address_x_q ? 1'b1 : 1'b0);

    // dupName_5_write_reg_x(LOGICAL,62)
    assign dupName_5_write_reg_x_q = avs_cra_write & dupName_5_write_to_address_x_q;

    // select_7(BITSELECT,151)
    assign select_7_b = avs_cra_byteenable[7:7];

    // select_6(BITSELECT,150)
    assign select_6_b = avs_cra_byteenable[6:6];

    // select_5(BITSELECT,149)
    assign select_5_b = avs_cra_byteenable[5:5];

    // select_4(BITSELECT,148)
    assign select_4_b = avs_cra_byteenable[4:4];

    // select_3(BITSELECT,147)
    assign select_3_b = avs_cra_byteenable[3:3];

    // select_2(BITSELECT,146)
    assign select_2_b = avs_cra_byteenable[2:2];

    // select_1(BITSELECT,145)
    assign select_1_b = avs_cra_byteenable[1:1];

    // select_0(BITSELECT,144)
    assign select_0_b = avs_cra_byteenable[0:0];

    // bit_enable(BITJOIN,68)
    assign bit_enable_q = {select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b};

    // dupName_0_data_and_enable_x(LOGICAL,6)
    assign dupName_0_data_and_enable_x_q = avs_cra_writedata & bit_enable_q;

    // dupName_0_not_bitenable_x(LOGICAL,8)
    assign dupName_0_not_bitenable_x_q = ~ (bit_enable_q);

    // dupName_5_reg_and_not_enable_x(LOGICAL,61)
    assign dupName_5_reg_and_not_enable_x_q = mm_slave_address_15_data_NO_SHIFT_REG_q & dupName_0_not_bitenable_x_q;

    // dupName_5_next_reg_x(LOGICAL,58)
    assign dupName_5_next_reg_x_q = dupName_5_reg_and_not_enable_x_q | dupName_0_data_and_enable_x_q;

    // mm_slave_address_15_data_NO_SHIFT_REG(REG,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mm_slave_address_15_data_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (dupName_5_write_reg_x_q == 1'b1)
        begin
            mm_slave_address_15_data_NO_SHIFT_REG_q <= dupName_5_next_reg_x_q;
        end
    end

    // dupName_4_reg_address_x(CONSTANT,52)
    assign dupName_4_reg_address_x_q = $unsigned(4'b1110);

    // dupName_4_write_to_address_x(LOGICAL,56)
    assign dupName_4_write_to_address_x_q = $unsigned(avs_cra_address == dupName_4_reg_address_x_q ? 1'b1 : 1'b0);

    // dupName_4_write_reg_x(LOGICAL,55)
    assign dupName_4_write_reg_x_q = avs_cra_write & dupName_4_write_to_address_x_q;

    // dupName_4_reg_and_not_enable_x(LOGICAL,53)
    assign dupName_4_reg_and_not_enable_x_q = mm_slave_address_14_data_NO_SHIFT_REG_q & dupName_0_not_bitenable_x_q;

    // dupName_4_next_reg_x(LOGICAL,50)
    assign dupName_4_next_reg_x_q = dupName_4_reg_and_not_enable_x_q | dupName_0_data_and_enable_x_q;

    // mm_slave_address_14_data_NO_SHIFT_REG(REG,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mm_slave_address_14_data_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (dupName_4_write_reg_x_q == 1'b1)
        begin
            mm_slave_address_14_data_NO_SHIFT_REG_q <= dupName_4_next_reg_x_q;
        end
    end

    // dupName_3_reg_address_x(CONSTANT,43)
    assign dupName_3_reg_address_x_q = $unsigned(4'b1101);

    // dupName_3_write_to_address_x(LOGICAL,47)
    assign dupName_3_write_to_address_x_q = $unsigned(avs_cra_address == dupName_3_reg_address_x_q ? 1'b1 : 1'b0);

    // dupName_3_write_reg_x(LOGICAL,46)
    assign dupName_3_write_reg_x_q = avs_cra_write & dupName_3_write_to_address_x_q;

    // dupName_3_reg_and_not_enable_x(LOGICAL,44)
    assign dupName_3_reg_and_not_enable_x_q = mm_slave_address_13_data_NO_SHIFT_REG_q & dupName_0_not_bitenable_x_q;

    // dupName_3_next_reg_x(LOGICAL,41)
    assign dupName_3_next_reg_x_q = dupName_3_reg_and_not_enable_x_q | dupName_0_data_and_enable_x_q;

    // mm_slave_address_13_data_NO_SHIFT_REG(REG,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mm_slave_address_13_data_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (dupName_3_write_reg_x_q == 1'b1)
        begin
            mm_slave_address_13_data_NO_SHIFT_REG_q <= dupName_3_next_reg_x_q;
        end
    end

    // dupName_2_reg_address_x(CONSTANT,34)
    assign dupName_2_reg_address_x_q = $unsigned(4'b1100);

    // dupName_2_write_to_address_x(LOGICAL,38)
    assign dupName_2_write_to_address_x_q = $unsigned(avs_cra_address == dupName_2_reg_address_x_q ? 1'b1 : 1'b0);

    // dupName_2_write_reg_x(LOGICAL,37)
    assign dupName_2_write_reg_x_q = avs_cra_write & dupName_2_write_to_address_x_q;

    // dupName_2_reg_and_not_enable_x(LOGICAL,35)
    assign dupName_2_reg_and_not_enable_x_q = mm_slave_address_12_data_NO_SHIFT_REG_q & dupName_0_not_bitenable_x_q;

    // dupName_2_next_reg_x(LOGICAL,32)
    assign dupName_2_next_reg_x_q = dupName_2_reg_and_not_enable_x_q | dupName_0_data_and_enable_x_q;

    // mm_slave_address_12_data_NO_SHIFT_REG(REG,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mm_slave_address_12_data_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (dupName_2_write_reg_x_q == 1'b1)
        begin
            mm_slave_address_12_data_NO_SHIFT_REG_q <= dupName_2_next_reg_x_q;
        end
    end

    // dupName_1_reg_address_x(CONSTANT,24)
    assign dupName_1_reg_address_x_q = $unsigned(4'b1011);

    // dupName_1_write_to_address_x(LOGICAL,29)
    assign dupName_1_write_to_address_x_q = $unsigned(avs_cra_address == dupName_1_reg_address_x_q ? 1'b1 : 1'b0);

    // dupName_1_write_reg_x(LOGICAL,28)
    assign dupName_1_write_reg_x_q = avs_cra_write & dupName_1_write_to_address_x_q;

    // dupName_1_reg_and_not_enable_x(LOGICAL,25)
    assign dupName_1_reg_and_not_enable_x_q = mm_slave_address_11_data_NO_SHIFT_REG_q & dupName_0_not_bitenable_x_q;

    // dupName_1_next_reg_x(LOGICAL,22)
    assign dupName_1_next_reg_x_q = dupName_1_reg_and_not_enable_x_q | dupName_0_data_and_enable_x_q;

    // mm_slave_address_11_data_NO_SHIFT_REG(REG,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mm_slave_address_11_data_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (dupName_1_write_reg_x_q == 1'b1)
        begin
            mm_slave_address_11_data_NO_SHIFT_REG_q <= dupName_1_next_reg_x_q;
        end
    end

    // dupName_0_reg_address_x(CONSTANT,9)
    assign dupName_0_reg_address_x_q = $unsigned(4'b1010);

    // dupName_0_write_to_address_x(LOGICAL,17)
    assign dupName_0_write_to_address_x_q = $unsigned(avs_cra_address == dupName_0_reg_address_x_q ? 1'b1 : 1'b0);

    // dupName_0_write_reg_x(LOGICAL,16)
    assign dupName_0_write_reg_x_q = avs_cra_write & dupName_0_write_to_address_x_q;

    // dupName_0_reg_and_not_enable_x(LOGICAL,10)
    assign dupName_0_reg_and_not_enable_x_q = mm_slave_address_10_data_NO_SHIFT_REG_q & dupName_0_not_bitenable_x_q;

    // dupName_0_next_reg_x(LOGICAL,7)
    assign dupName_0_next_reg_x_q = dupName_0_reg_and_not_enable_x_q | dupName_0_data_and_enable_x_q;

    // mm_slave_address_10_data_NO_SHIFT_REG(REG,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            mm_slave_address_10_data_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (dupName_0_write_reg_x_q == 1'b1)
        begin
            mm_slave_address_10_data_NO_SHIFT_REG_q <= dupName_0_next_reg_x_q;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // windowing_function(BLACKBOX,158)
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

    // projection_function(BLACKBOX,132)
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

    // dupName_0_bitenable_lsb_x(BITSELECT,3)
    assign dupName_0_bitenable_lsb_x_b = bit_enable_q[0:0];

    // dupName_0_writedata_lsb_x(BITSELECT,18)
    assign dupName_0_writedata_lsb_x_b = avs_cra_writedata[0:0];

    // data_and_enable(LOGICAL,79)
    assign data_and_enable_q = dupName_0_writedata_lsb_x_b & dupName_0_bitenable_lsb_x_b;

    // start_address(CONSTANT,154)
    assign start_address_q = $unsigned(4'b0001);

    // write_to_start_address(LOGICAL,165)
    assign write_to_start_address_q = $unsigned(avs_cra_address == start_address_q ? 1'b1 : 1'b0);

    // write_start_reg(LOGICAL,162)
    assign write_start_reg_q = avs_cra_write & write_to_start_address_q;

    // avs_start(LOGICAL,67)
    assign avs_start_q = write_start_reg_q & data_and_enable_q;

    // component_not_ready(LOGICAL,74)
    assign component_not_ready_q = ~ (streamer_function_out_iord_bl_call_streamer_o_fifoready);

    // busy_and(LOGICAL,70)
    assign busy_and_q = component_not_ready_q & start_r_NO_SHIFT_REG_q;

    // next_start(LOGICAL,119)
    assign next_start_q = busy_and_q | avs_start_q;

    // start_r_NO_SHIFT_REG(REG,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            start_r_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            start_r_NO_SHIFT_REG_q <= next_start_q;
        end
    end

    // slave_arg_register_join(BITJOIN,153)
    assign slave_arg_register_join_q = {mm_slave_address_15_data_NO_SHIFT_REG_q, mm_slave_address_14_data_NO_SHIFT_REG_q, mm_slave_address_13_data_NO_SHIFT_REG_q, mm_slave_address_12_data_NO_SHIFT_REG_q, mm_slave_address_11_data_NO_SHIFT_REG_q, mm_slave_address_10_data_NO_SHIFT_REG_q};

    // implicit_input(BITJOIN,88)
    assign implicit_input_q = slave_arg_register_join_q;

    // streamer_function(BLACKBOX,157)
    streamer_function thestreamer_function (
        .in_arg_call(dupName_0_call_const_x_q),
        .in_arg_return(dupName_0_call_const_x_q),
        .in_arg_s0_global(dupName_0_call_const_x_q),
        .in_arg_s2_global(dupName_0_call_const_x_q),
        .in_iord_bl_call_streamer_i_fifodata(implicit_input_q),
        .in_iord_bl_call_streamer_i_fifovalid(start_r_NO_SHIFT_REG_q),
        .in_iord_bl_return_projection_i_fifodata(projection_function_out_iowr_bl_return_projection_o_fifodata),
        .in_iord_bl_return_projection_i_fifovalid(projection_function_out_iowr_bl_return_projection_o_fifovalid),
        .in_iord_bl_return_windowing_i_fifodata(windowing_function_out_iowr_bl_return_windowing_o_fifodata),
        .in_iord_bl_return_windowing_i_fifovalid(windowing_function_out_iowr_bl_return_windowing_o_fifovalid),
        .in_iord_bl_s2_i_fifodata(windowing_function_out_iowr_bl_s2_o_fifodata),
        .in_iord_bl_s2_i_fifovalid(windowing_function_out_iowr_bl_s2_o_fifovalid),
        .in_iowr_bl_call_projection_i_fifoready(projection_function_out_iord_bl_call_projection_o_fifoready),
        .in_iowr_bl_call_windowing_i_fifoready(windowing_function_out_iord_bl_call_windowing_o_fifoready),
        .in_iowr_bl_s0_i_fifoready(projection_function_out_iord_bl_s0_o_fifoready),
        .in_stall_in(GND_q),
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
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // return_data_r_NO_SHIFT_REG(REG,140)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            return_data_r_NO_SHIFT_REG_q <= $unsigned(384'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (streamer_function_out_iowr_nb_return_streamer_o_fifovalid == 1'b1)
        begin
            return_data_r_NO_SHIFT_REG_q <= streamer_function_out_iowr_nb_return_streamer_o_fifodata;
        end
    end

    // dupName_4_return_bits_x(BITSELECT,54)
    assign dupName_4_return_bits_x_b = return_data_r_NO_SHIFT_REG_q[383:320];

    // dupName_3_return_bits_x(BITSELECT,45)
    assign dupName_3_return_bits_x_b = return_data_r_NO_SHIFT_REG_q[319:256];

    // dupName_2_return_bits_x(BITSELECT,36)
    assign dupName_2_return_bits_x_b = return_data_r_NO_SHIFT_REG_q[255:192];

    // dupName_1_return_bits_x(BITSELECT,26)
    assign dupName_1_return_bits_x_b = return_data_r_NO_SHIFT_REG_q[191:128];

    // dupName_0_return_bits_x(BITSELECT,11)
    assign dupName_0_return_bits_x_b = return_data_r_NO_SHIFT_REG_q[127:64];

    // return_bits(BITSELECT,138)
    assign return_bits_b = return_data_r_NO_SHIFT_REG_q[63:0];

    // dupName_0_const_status_pad_x(CONSTANT,5)
    assign dupName_0_const_status_pad_x_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // not_start(LOGICAL,123)
    assign not_start_q = ~ (start_r_NO_SHIFT_REG_q);

    // done_and(LOGICAL,81)
    assign done_and_q = done_r_NO_SHIFT_REG_q & not_start_q;

    // done_or(LOGICAL,83)
    assign done_or_q = streamer_function_out_iowr_nb_return_streamer_o_fifovalid | done_and_q;

    // done_r_NO_SHIFT_REG(REG,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            done_r_NO_SHIFT_REG_q <= $unsigned(1'b1);
        end
        else
        begin
            done_r_NO_SHIFT_REG_q <= done_or_q;
        end
    end

    // done_address(CONSTANT,80)
    assign done_address_q = $unsigned(4'b0011);

    // write_to_done(LOGICAL,164)
    assign write_to_done_q = $unsigned(avs_cra_address == done_address_q ? 1'b1 : 1'b0);

    // write_done(LOGICAL,159)
    assign write_done_q = write_to_done_q & avs_cra_write;

    // reset_done(LOGICAL,136)
    assign reset_done_q = write_done_q & data_and_enable_q;

    // not_reset_done(LOGICAL,122)
    assign not_reset_done_q = ~ (reset_done_q);

    // hold_done(LOGICAL,86)
    assign hold_done_q = not_reset_done_q & interrupt_r_NO_SHIFT_REG_q;

    // next_done(LOGICAL,117)
    assign next_done_q = hold_done_q | streamer_function_out_iowr_nb_return_streamer_o_fifovalid;

    // interrupt_r_NO_SHIFT_REG(REG,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            interrupt_r_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            interrupt_r_NO_SHIFT_REG_q <= next_done_q;
        end
    end

    // done_join(BITJOIN,82)
    assign done_join_q = {dupName_0_const_status_pad_x_q, done_r_NO_SHIFT_REG_q, interrupt_r_NO_SHIFT_REG_q};

    // const_status_pad(CONSTANT,78)
    assign const_status_pad_q = $unsigned(63'b000000000000000000000000000000000000000000000000000000000000000);

    // reg_address(CONSTANT,133)
    assign reg_address_q = $unsigned(4'b0010);

    // write_to_address(LOGICAL,163)
    assign write_to_address_q = $unsigned(avs_cra_address == reg_address_q ? 1'b1 : 1'b0);

    // write_reg(LOGICAL,161)
    assign write_reg_q = avs_cra_write & write_to_address_q;

    // not_bitenable(LOGICAL,120)
    assign not_bitenable_q = ~ (dupName_0_bitenable_lsb_x_b);

    // reg_and_not_enable(LOGICAL,134)
    assign reg_and_not_enable_q = interrupt_mask_r_NO_SHIFT_REG_q & not_bitenable_q;

    // next_reg(LOGICAL,118)
    assign next_reg_q = reg_and_not_enable_q | data_and_enable_q;

    // interrupt_mask_r_NO_SHIFT_REG(REG,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            interrupt_mask_r_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else if (write_reg_q == 1'b1)
        begin
            interrupt_mask_r_NO_SHIFT_REG_q <= next_reg_q;
        end
    end

    // instmask_join(BITJOIN,108)
    assign instmask_join_q = {const_status_pad_q, interrupt_mask_r_NO_SHIFT_REG_q};

    // dupName_0_call_const_x(CONSTANT,4)
    assign dupName_0_call_const_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // reset_wire_inst(EXTIFACE,137)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,131)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,72)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy_join(BITJOIN,71)
    assign busy_join_q = {const_status_pad_q, busy_or_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // avs_readdata_mux(MUX,66)
    assign avs_readdata_mux_s = avs_cra_address;
    always @(avs_readdata_mux_s or busy_join_q or dupName_0_call_const_x_q or instmask_join_q or done_join_q or return_bits_b or dupName_0_return_bits_x_b or dupName_1_return_bits_x_b or dupName_2_return_bits_x_b or dupName_3_return_bits_x_b or dupName_4_return_bits_x_b or mm_slave_address_10_data_NO_SHIFT_REG_q or mm_slave_address_11_data_NO_SHIFT_REG_q or mm_slave_address_12_data_NO_SHIFT_REG_q or mm_slave_address_13_data_NO_SHIFT_REG_q or mm_slave_address_14_data_NO_SHIFT_REG_q or mm_slave_address_15_data_NO_SHIFT_REG_q)
    begin
        unique case (avs_readdata_mux_s)
            4'b0000 : avs_readdata_mux_q = busy_join_q;
            4'b0001 : avs_readdata_mux_q = dupName_0_call_const_x_q;
            4'b0010 : avs_readdata_mux_q = instmask_join_q;
            4'b0011 : avs_readdata_mux_q = done_join_q;
            4'b0100 : avs_readdata_mux_q = return_bits_b;
            4'b0101 : avs_readdata_mux_q = dupName_0_return_bits_x_b;
            4'b0110 : avs_readdata_mux_q = dupName_1_return_bits_x_b;
            4'b0111 : avs_readdata_mux_q = dupName_2_return_bits_x_b;
            4'b1000 : avs_readdata_mux_q = dupName_3_return_bits_x_b;
            4'b1001 : avs_readdata_mux_q = dupName_4_return_bits_x_b;
            4'b1010 : avs_readdata_mux_q = mm_slave_address_10_data_NO_SHIFT_REG_q;
            4'b1011 : avs_readdata_mux_q = mm_slave_address_11_data_NO_SHIFT_REG_q;
            4'b1100 : avs_readdata_mux_q = mm_slave_address_12_data_NO_SHIFT_REG_q;
            4'b1101 : avs_readdata_mux_q = mm_slave_address_13_data_NO_SHIFT_REG_q;
            4'b1110 : avs_readdata_mux_q = mm_slave_address_14_data_NO_SHIFT_REG_q;
            4'b1111 : avs_readdata_mux_q = mm_slave_address_15_data_NO_SHIFT_REG_q;
            default : avs_readdata_mux_q = 64'b0;
        endcase
    end

    // avs_cra_readdata_r_NO_SHIFT_REG(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            avs_cra_readdata_r_NO_SHIFT_REG_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            avs_cra_readdata_r_NO_SHIFT_REG_q <= avs_readdata_mux_q;
        end
    end

    // avs_cra_readdata(GPOUT,124)
    assign avs_cra_readdata = avs_cra_readdata_r_NO_SHIFT_REG_q;

    // avs_cra_readdatavalid(GPOUT,125)
    assign avs_cra_readdatavalid = GND_q;

    // avst_iord_bl_call_streamer_almost_full(GPOUT,126)
    assign avst_iord_bl_call_streamer_almost_full = streamer_function_out_iord_bl_call_streamer_o_fifoalmost_full;

    // avst_iord_bl_call_streamer_ready(GPOUT,127)
    assign avst_iord_bl_call_streamer_ready = streamer_function_out_iord_bl_call_streamer_o_fifoready;

    // avst_iowr_nb_return_streamer_data(GPOUT,128)
    assign avst_iowr_nb_return_streamer_data = streamer_function_out_iowr_nb_return_streamer_o_fifodata;

    // avst_iowr_nb_return_streamer_valid(GPOUT,129)
    assign avst_iowr_nb_return_streamer_valid = streamer_function_out_iowr_nb_return_streamer_o_fifovalid;

    // done_irq(GPOUT,130)
    assign done_irq = interrupt_r_NO_SHIFT_REG_q;

endmodule
