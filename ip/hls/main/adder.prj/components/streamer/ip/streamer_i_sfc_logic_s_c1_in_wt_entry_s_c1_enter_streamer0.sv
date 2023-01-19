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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_streamers_c1_enter_streamer0
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 19:47:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_streamer0 (
    input wire [127:0] in_memdep_14_streamer_avm_readdata,
    input wire [0:0] in_memdep_14_streamer_avm_writeack,
    input wire [0:0] in_memdep_14_streamer_avm_waitrequest,
    input wire [0:0] in_memdep_14_streamer_avm_readdatavalid,
    output wire [31:0] out_memdep_14_streamer_avm_address,
    output wire [0:0] out_memdep_14_streamer_avm_enable,
    output wire [0:0] out_memdep_14_streamer_avm_read,
    output wire [0:0] out_memdep_14_streamer_avm_write,
    output wire [127:0] out_memdep_14_streamer_avm_writedata,
    output wire [15:0] out_memdep_14_streamer_avm_byteenable,
    output wire [0:0] out_memdep_14_streamer_avm_burstcount,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifodata,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifovalid,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_streamer1,
    output wire [0:0] out_unnamed_streamer4_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire [63:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest,
    input wire [0:0] in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid,
    output wire [31:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write,
    output wire [63:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata,
    output wire [7:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable,
    output wire [0:0] out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_in0,
    input wire [63:0] in_out0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_streamer7_sel_x_b;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_0_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_1_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_burstcount;
    wire [15:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_write;
    wire [127:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_o_writeack;
    wire [31:0] c_i32_019_q;
    wire [32:0] i_add_streamer7_a;
    wire [32:0] i_add_streamer7_b;
    logic [32:0] i_add_streamer7_o;
    wire [32:0] i_add_streamer7_q;
    wire [0:0] i_iowr_nb_return_streamer_unnamed_streamer3_streamer11_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] i_iowr_nb_return_streamer_unnamed_streamer3_streamer11_out_iowr_nb_return_streamer_o_fifovalid;
    wire [63:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_out_buffer_out;
    wire [3:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_join_q;
    wire [59:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_out_buffer_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_join_q;
    wire [59:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_join_q;
    wire [59:0] i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_join_q;
    wire [59:0] i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_select_63_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    reg [0:0] redist0_sync_together24_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_q;
    reg [0:0] redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_0;
    reg [0:0] redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_1;
    reg [0:0] redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_2;
    reg [0:0] redist2_sync_together24_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist2_sync_together24_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist2_sync_together24_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist2_sync_together24_aunroll_x_in_i_valid_4_delay_2;
    reg [0:0] redist3_sync_together24_aunroll_x_in_i_valid_5_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together24_aunroll_x_in_i_valid_4(DELAY,49)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together24_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist2_sync_together24_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist2_sync_together24_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist2_sync_together24_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist2_sync_together24_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist2_sync_together24_aunroll_x_in_i_valid_4_delay_1 <= redist2_sync_together24_aunroll_x_in_i_valid_4_delay_0;
            redist2_sync_together24_aunroll_x_in_i_valid_4_delay_2 <= redist2_sync_together24_aunroll_x_in_i_valid_4_delay_1;
            redist2_sync_together24_aunroll_x_in_i_valid_4_q <= redist2_sync_together24_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // valid_fanout_reg4(REG,44)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together24_aunroll_x_in_i_valid_4_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg3(REG,43)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together24_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist0_sync_together24_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together24_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together24_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5(DELAY,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_0 <= '0;
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_1 <= '0;
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_2 <= '0;
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_q <= '0;
        end
        else
        begin
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_0 <= $unsigned(redist0_sync_together24_aunroll_x_in_c1_eni1_1_tpl_1_q);
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_1 <= redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_0;
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_2 <= redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_1;
            redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_q <= redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_delay_2;
        end
    end

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8(BLACKBOX,26)@0
    // in in_i_dependence@6
    // in in_valid_in@6
    // out out_buffer_out@6
    // out out_valid_out@6
    streamer_i_llvm_fpga_sync_buffer_p65s_st0000s_out0_sync_buffer_0 thei_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8 (
        .in_buffer_in(in_out0),
        .in_i_dependence(redist1_sync_together24_aunroll_x_in_c1_eni1_1_tpl_5_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_select_63(BITSELECT,29)@6
    assign i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_select_63_b = i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_out_buffer_out[63:4];

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_join(BITJOIN,28)@6
    assign i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_join_q = {i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_select_63_b, i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3_q};

    // i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_select_63(BITSELECT,35)@6
    assign i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_select_63_b = i_llvm_fpga_sync_buffer_p65s_struct_tuples_out0_sync_buffer_streamer8_vt_join_q[63:4];

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3(CONSTANT,23)
    assign i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3_q = $unsigned(4'b0000);

    // i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_join(BITJOIN,34)@6
    assign i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_join_q = {i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_select_63_b, i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3_q};

    // c_i32_019(CONSTANT,17)
    assign c_i32_019_q = $unsigned(32'b00000000000000000000000000000000);

    // i_add_streamer7(ADD,20)@6
    assign i_add_streamer7_a = {1'b0, i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_1_tpl};
    assign i_add_streamer7_b = {1'b0, i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_0_tpl};
    assign i_add_streamer7_o = $unsigned(i_add_streamer7_a) + $unsigned(i_add_streamer7_b);
    assign i_add_streamer7_q = i_add_streamer7_o[32:0];

    // bgTrunc_i_add_streamer7_sel_x(BITSELECT,2)@6
    assign bgTrunc_i_add_streamer7_sel_x_b = i_add_streamer7_q[31:0];

    // valid_fanout_reg2(REG,42)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg1(REG,41)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2(BLACKBOX,22)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    streamer_i_llvm_fpga_sync_buffer_p64s_st0000es_in0_sync_buffer_0 thei_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2 (
        .in_buffer_in(in_in0),
        .in_i_dependence(redist0_sync_together24_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_select_63(BITSELECT,25)@2
    assign i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_select_63_b = i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_out_buffer_out[63:4];

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_join(BITJOIN,24)@2
    assign i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_join_q = {i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_select_63_b, i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3_q};

    // i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_select_63(BITSELECT,32)@2
    assign i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_select_63_b = i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_join_q[63:4];

    // i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_join(BITJOIN,31)@2
    assign i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_join_q = {i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_select_63_b, i_llvm_fpga_sync_buffer_p64s_struct_tuples_in0_sync_buffer_streamer2_vt_const_3_q};

    // i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x(BLACKBOX,6)@2
    // in in_i_stall@20000000
    // out out_o_readdata_0_tpl@6
    // out out_o_readdata_1_tpl@6
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata@20000000
    // out out_o_stall@5
    // out out_o_valid@6
    streamer_i_llvm_fpga_mem_memcoalesce_loa0000aunique_33_streamer0 thei_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_streamer_fpgaunique_6_streamer3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdata),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_readdatavalid),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_waitrequest),
        .in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack(in_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writeack),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_1_tpl),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write),
        .out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x(BLACKBOX,7)@6
    // out out_memdep_14_streamer_avm_address@20000000
    // out out_memdep_14_streamer_avm_burstcount@20000000
    // out out_memdep_14_streamer_avm_byteenable@20000000
    // out out_memdep_14_streamer_avm_enable@20000000
    // out out_memdep_14_streamer_avm_read@20000000
    // out out_memdep_14_streamer_avm_write@20000000
    // out out_memdep_14_streamer_avm_writedata@20000000
    // out out_o_stall@7
    // out out_o_valid@7
    // out out_o_writeack@7
    streamer_i_llvm_fpga_mem_memdep_14_0 thei_llvm_fpga_mem_memdep_14_streamer10_aunroll_x (
        .in_i_writedata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_0_tpl),
        .in_i_writedata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_o_readdata_1_tpl),
        .in_i_writedata_2_tpl(bgTrunc_i_add_streamer7_sel_x_b),
        .in_i_writedata_3_tpl(c_i32_019_q),
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_streamer_fpgaunique_7_streamer9_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_memdep_14_streamer_avm_readdata(in_memdep_14_streamer_avm_readdata),
        .in_memdep_14_streamer_avm_readdatavalid(in_memdep_14_streamer_avm_readdatavalid),
        .in_memdep_14_streamer_avm_waitrequest(in_memdep_14_streamer_avm_waitrequest),
        .in_memdep_14_streamer_avm_writeack(in_memdep_14_streamer_avm_writeack),
        .out_memdep_14_streamer_avm_address(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_address),
        .out_memdep_14_streamer_avm_burstcount(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_burstcount),
        .out_memdep_14_streamer_avm_byteenable(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_byteenable),
        .out_memdep_14_streamer_avm_enable(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_enable),
        .out_memdep_14_streamer_avm_read(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_read),
        .out_memdep_14_streamer_avm_write(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_write),
        .out_memdep_14_streamer_avm_writedata(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_memdep_14_streamer_avm_address = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_address;
    assign out_memdep_14_streamer_avm_enable = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_enable;
    assign out_memdep_14_streamer_avm_read = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_read;
    assign out_memdep_14_streamer_avm_write = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_write;
    assign out_memdep_14_streamer_avm_writedata = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_writedata;
    assign out_memdep_14_streamer_avm_byteenable = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    assign out_memdep_14_streamer_avm_burstcount = i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_memdep_14_streamer_avm_burstcount;

    // redist3_sync_together24_aunroll_x_in_i_valid_5(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together24_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist3_sync_together24_aunroll_x_in_i_valid_5_q <= $unsigned(redist2_sync_together24_aunroll_x_in_i_valid_4_q);
        end
    end

    // valid_fanout_reg5(REG,45)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist3_sync_together24_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_iowr_nb_return_streamer_unnamed_streamer3_streamer11(BLACKBOX,21)@7
    // out out_iowr_nb_return_streamer_o_fifodata@20000000
    // out out_iowr_nb_return_streamer_o_fifovalid@20000000
    streamer_i_iowr_nb_return_unnamed_streamer3_streamer0 thei_iowr_nb_return_streamer_unnamed_streamer3_streamer11 (
        .in_i_data(GND_q),
        .in_i_dependence(i_llvm_fpga_mem_memdep_14_streamer10_aunroll_x_out_o_writeack),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg5_q),
        .out_iowr_nb_return_streamer_o_fifodata(i_iowr_nb_return_streamer_unnamed_streamer3_streamer11_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(i_iowr_nb_return_streamer_unnamed_streamer3_streamer11_out_iowr_nb_return_streamer_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_iowr_nb_return_streamer_o_fifodata = i_iowr_nb_return_streamer_unnamed_streamer3_streamer11_out_iowr_nb_return_streamer_o_fifodata;
    assign out_iowr_nb_return_streamer_o_fifovalid = i_iowr_nb_return_streamer_unnamed_streamer3_streamer11_out_iowr_nb_return_streamer_o_fifovalid;

    // valid_fanout_reg0(REG,40)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together24_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,8)@7
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_streamer1 = GND_q;
    assign out_unnamed_streamer4_0_tpl = GND_q;

    // ext_sig_sync_out(GPOUT,19)
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_address;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_enable;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_read;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_write;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_writedata;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_byteenable;
    assign out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_33_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_33_streamer_avm_burstcount;

endmodule
