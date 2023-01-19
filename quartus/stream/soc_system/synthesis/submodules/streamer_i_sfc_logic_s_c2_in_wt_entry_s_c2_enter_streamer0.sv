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

// SystemVerilog created from i_sfc_logic_s_c2_in_wt_entry_streamers_c2_enter_streamer0
// Created for function/kernel streamer
// SystemVerilog created on Thu Jan 19 21:02:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c2_in_wt_entry_s_c2_enter_streamer0 (
    output wire [0:0] out_iowr_nb_return_streamer_o_fifodata,
    output wire [0:0] out_iowr_nb_return_streamer_o_fifovalid,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_streamer1,
    output wire [0:0] out_unnamed_streamer10_0_tpl,
    input wire [0:0] in_c2_eni3_0_tpl,
    input wire [7:0] in_c2_eni3_1_tpl,
    input wire [31:0] in_c2_eni3_2_tpl,
    input wire [31:0] in_c2_eni3_3_tpl,
    input wire [31:0] in_c2_eni3_4_tpl,
    input wire [31:0] in_c2_eni3_5_tpl,
    input wire [7:0] in_c2_eni3_6_tpl,
    input wire [7:0] in_c2_eni3_7_tpl,
    input wire [7:0] in_c2_eni3_8_tpl,
    input wire [7:0] in_c2_eni3_9_tpl,
    input wire [7:0] in_c2_eni3_10_tpl,
    input wire [31:0] in_c2_eni3_11_tpl,
    input wire [31:0] in_c2_eni3_12_tpl,
    input wire [31:0] in_c2_eni3_13_tpl,
    input wire [31:0] in_c2_eni3_14_tpl,
    input wire [31:0] in_c2_eni3_15_tpl,
    input wire [0:0] in_c2_eni3_16_tpl,
    input wire [0:0] in_c2_eni3_17_tpl,
    input wire [0:0] in_i_valid,
    input wire [511:0] in_memdep_14_streamer_avm_readdata,
    input wire [0:0] in_memdep_14_streamer_avm_writeack,
    input wire [0:0] in_memdep_14_streamer_avm_waitrequest,
    input wire [0:0] in_memdep_14_streamer_avm_readdatavalid,
    output wire [31:0] out_memdep_14_streamer_avm_address,
    output wire [0:0] out_memdep_14_streamer_avm_enable,
    output wire [0:0] out_memdep_14_streamer_avm_read,
    output wire [0:0] out_memdep_14_streamer_avm_write,
    output wire [511:0] out_memdep_14_streamer_avm_writedata,
    output wire [63:0] out_memdep_14_streamer_avm_byteenable,
    output wire [0:0] out_memdep_14_streamer_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_tuple_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_o_writeack;
    wire [15:0] c_i16_029_q;
    wire [63:0] c_i64_032_q;
    wire [7:0] c_i8_028_q;
    wire [0:0] i_iowr_nb_return_streamer_unnamed_streamer9_streamer22_out_iowr_nb_return_streamer_o_fifodata;
    wire [0:0] i_iowr_nb_return_streamer_unnamed_streamer9_streamer22_out_iowr_nb_return_streamer_o_fifovalid;
    wire [63:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_out_buffer_out;
    wire [5:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_const_5_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_join_q;
    wire [57:0] i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_join_q;
    wire [57:0] i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_select_63_b;
    wire [0:0] i_or56_streamer21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    reg [7:0] redist0_sync_together36_aunroll_x_in_c2_eni3_1_tpl_1_q;
    reg [31:0] redist1_sync_together36_aunroll_x_in_c2_eni3_2_tpl_1_q;
    reg [31:0] redist2_sync_together36_aunroll_x_in_c2_eni3_3_tpl_1_q;
    reg [31:0] redist3_sync_together36_aunroll_x_in_c2_eni3_4_tpl_1_q;
    reg [31:0] redist4_sync_together36_aunroll_x_in_c2_eni3_5_tpl_1_q;
    reg [7:0] redist5_sync_together36_aunroll_x_in_c2_eni3_6_tpl_1_q;
    reg [7:0] redist6_sync_together36_aunroll_x_in_c2_eni3_7_tpl_1_q;
    reg [7:0] redist7_sync_together36_aunroll_x_in_c2_eni3_8_tpl_1_q;
    reg [7:0] redist8_sync_together36_aunroll_x_in_c2_eni3_9_tpl_1_q;
    reg [7:0] redist9_sync_together36_aunroll_x_in_c2_eni3_10_tpl_1_q;
    reg [31:0] redist10_sync_together36_aunroll_x_in_c2_eni3_11_tpl_1_q;
    reg [31:0] redist11_sync_together36_aunroll_x_in_c2_eni3_12_tpl_1_q;
    reg [31:0] redist12_sync_together36_aunroll_x_in_c2_eni3_13_tpl_1_q;
    reg [31:0] redist13_sync_together36_aunroll_x_in_c2_eni3_14_tpl_1_q;
    reg [31:0] redist14_sync_together36_aunroll_x_in_c2_eni3_15_tpl_1_q;
    reg [0:0] redist15_sync_together36_aunroll_x_in_c2_eni3_16_tpl_1_q;
    reg [0:0] redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_q;
    reg [0:0] redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_delay_0;
    reg [0:0] redist17_sync_together36_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist17_sync_together36_aunroll_x_in_i_valid_1(DELAY,48)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together36_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist17_sync_together36_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg3(REG,30)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist17_sync_together36_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2(DELAY,47)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_delay_0 <= '0;
            redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_delay_0 <= $unsigned(in_c2_eni3_17_tpl);
            redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_q <= redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg2(REG,29)@9 + 1
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

    // valid_fanout_reg1(REG,28)@9 + 1
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

    // redist15_sync_together36_aunroll_x_in_c2_eni3_16_tpl_1(DELAY,46)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together36_aunroll_x_in_c2_eni3_16_tpl_1_q <= '0;
        end
        else
        begin
            redist15_sync_together36_aunroll_x_in_c2_eni3_16_tpl_1_q <= $unsigned(in_c2_eni3_16_tpl);
        end
    end

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18(BLACKBOX,16)@0
    // in in_i_dependence@10
    // in in_valid_in@10
    // out out_buffer_out@10
    // out out_valid_out@10
    streamer_i_llvm_fpga_sync_buffer_p65s_st0000le_out_sync_buffer_0 thei_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18 (
        .in_buffer_in(in_tuple_out),
        .in_i_dependence(redist15_sync_together36_aunroll_x_in_c2_eni3_16_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_select_63(BITSELECT,19)@10
    assign i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_select_63_b = i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_out_buffer_out[63:6];

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_join(BITJOIN,18)@10
    assign i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_join_q = {i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_select_63_b, i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_const_5_q};

    // i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_select_63(BITSELECT,22)@10
    assign i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_select_63_b = i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_join_q[63:6];

    // i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_const_5(CONSTANT,17)
    assign i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_const_5_q = $unsigned(6'b000000);

    // i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_join(BITJOIN,21)@10
    assign i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_join_q = {i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_select_63_b, i_llvm_fpga_sync_buffer_p65s_struct_tuples_tuple_out_sync_buffer_streamer18_vt_const_5_q};

    // c_i64_032(CONSTANT,11)
    assign c_i64_032_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // redist14_sync_together36_aunroll_x_in_c2_eni3_15_tpl_1(DELAY,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together36_aunroll_x_in_c2_eni3_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together36_aunroll_x_in_c2_eni3_15_tpl_1_q <= $unsigned(in_c2_eni3_15_tpl);
        end
    end

    // redist13_sync_together36_aunroll_x_in_c2_eni3_14_tpl_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together36_aunroll_x_in_c2_eni3_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together36_aunroll_x_in_c2_eni3_14_tpl_1_q <= $unsigned(in_c2_eni3_14_tpl);
        end
    end

    // redist12_sync_together36_aunroll_x_in_c2_eni3_13_tpl_1(DELAY,43)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together36_aunroll_x_in_c2_eni3_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together36_aunroll_x_in_c2_eni3_13_tpl_1_q <= $unsigned(in_c2_eni3_13_tpl);
        end
    end

    // redist11_sync_together36_aunroll_x_in_c2_eni3_12_tpl_1(DELAY,42)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together36_aunroll_x_in_c2_eni3_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together36_aunroll_x_in_c2_eni3_12_tpl_1_q <= $unsigned(in_c2_eni3_12_tpl);
        end
    end

    // redist10_sync_together36_aunroll_x_in_c2_eni3_11_tpl_1(DELAY,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together36_aunroll_x_in_c2_eni3_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together36_aunroll_x_in_c2_eni3_11_tpl_1_q <= $unsigned(in_c2_eni3_11_tpl);
        end
    end

    // redist9_sync_together36_aunroll_x_in_c2_eni3_10_tpl_1(DELAY,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together36_aunroll_x_in_c2_eni3_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together36_aunroll_x_in_c2_eni3_10_tpl_1_q <= $unsigned(in_c2_eni3_10_tpl);
        end
    end

    // redist8_sync_together36_aunroll_x_in_c2_eni3_9_tpl_1(DELAY,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together36_aunroll_x_in_c2_eni3_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together36_aunroll_x_in_c2_eni3_9_tpl_1_q <= $unsigned(in_c2_eni3_9_tpl);
        end
    end

    // redist7_sync_together36_aunroll_x_in_c2_eni3_8_tpl_1(DELAY,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together36_aunroll_x_in_c2_eni3_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together36_aunroll_x_in_c2_eni3_8_tpl_1_q <= $unsigned(in_c2_eni3_8_tpl);
        end
    end

    // redist6_sync_together36_aunroll_x_in_c2_eni3_7_tpl_1(DELAY,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together36_aunroll_x_in_c2_eni3_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together36_aunroll_x_in_c2_eni3_7_tpl_1_q <= $unsigned(in_c2_eni3_7_tpl);
        end
    end

    // redist5_sync_together36_aunroll_x_in_c2_eni3_6_tpl_1(DELAY,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together36_aunroll_x_in_c2_eni3_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together36_aunroll_x_in_c2_eni3_6_tpl_1_q <= $unsigned(in_c2_eni3_6_tpl);
        end
    end

    // redist4_sync_together36_aunroll_x_in_c2_eni3_5_tpl_1(DELAY,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together36_aunroll_x_in_c2_eni3_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together36_aunroll_x_in_c2_eni3_5_tpl_1_q <= $unsigned(in_c2_eni3_5_tpl);
        end
    end

    // redist3_sync_together36_aunroll_x_in_c2_eni3_4_tpl_1(DELAY,34)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together36_aunroll_x_in_c2_eni3_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together36_aunroll_x_in_c2_eni3_4_tpl_1_q <= $unsigned(in_c2_eni3_4_tpl);
        end
    end

    // redist2_sync_together36_aunroll_x_in_c2_eni3_3_tpl_1(DELAY,33)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together36_aunroll_x_in_c2_eni3_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together36_aunroll_x_in_c2_eni3_3_tpl_1_q <= $unsigned(in_c2_eni3_3_tpl);
        end
    end

    // redist1_sync_together36_aunroll_x_in_c2_eni3_2_tpl_1(DELAY,32)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together36_aunroll_x_in_c2_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together36_aunroll_x_in_c2_eni3_2_tpl_1_q <= $unsigned(in_c2_eni3_2_tpl);
        end
    end

    // c_i16_029(CONSTANT,6)
    assign c_i16_029_q = $unsigned(16'b0000000000000000);

    // c_i8_028(CONSTANT,12)
    assign c_i8_028_q = $unsigned(8'b00000000);

    // redist0_sync_together36_aunroll_x_in_c2_eni3_1_tpl_1(DELAY,31)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together36_aunroll_x_in_c2_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together36_aunroll_x_in_c2_eni3_1_tpl_1_q <= $unsigned(in_c2_eni3_1_tpl);
        end
    end

    // i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x(BLACKBOX,3)@10
    // out out_memdep_14_streamer_avm_address@20000000
    // out out_memdep_14_streamer_avm_burstcount@20000000
    // out out_memdep_14_streamer_avm_byteenable@20000000
    // out out_memdep_14_streamer_avm_enable@20000000
    // out out_memdep_14_streamer_avm_read@20000000
    // out out_memdep_14_streamer_avm_write@20000000
    // out out_memdep_14_streamer_avm_writedata@20000000
    // out out_o_stall@11
    // out out_o_valid@11
    // out out_o_writeack@11
    streamer_i_llvm_fpga_mem_memdep_14_0 thei_llvm_fpga_mem_memdep_14_streamer20_aunroll_x (
        .in_i_writedata_0_tpl(redist0_sync_together36_aunroll_x_in_c2_eni3_1_tpl_1_q),
        .in_i_writedata_1_tpl(c_i8_028_q),
        .in_i_writedata_2_tpl(c_i16_029_q),
        .in_i_writedata_3_tpl(redist1_sync_together36_aunroll_x_in_c2_eni3_2_tpl_1_q),
        .in_i_writedata_4_tpl(redist2_sync_together36_aunroll_x_in_c2_eni3_3_tpl_1_q),
        .in_i_writedata_5_tpl(redist3_sync_together36_aunroll_x_in_c2_eni3_4_tpl_1_q),
        .in_i_writedata_6_tpl(redist4_sync_together36_aunroll_x_in_c2_eni3_5_tpl_1_q),
        .in_i_writedata_7_tpl(redist5_sync_together36_aunroll_x_in_c2_eni3_6_tpl_1_q),
        .in_i_writedata_8_tpl(redist6_sync_together36_aunroll_x_in_c2_eni3_7_tpl_1_q),
        .in_i_writedata_9_tpl(redist7_sync_together36_aunroll_x_in_c2_eni3_8_tpl_1_q),
        .in_i_writedata_10_tpl(redist8_sync_together36_aunroll_x_in_c2_eni3_9_tpl_1_q),
        .in_i_writedata_11_tpl(redist9_sync_together36_aunroll_x_in_c2_eni3_10_tpl_1_q),
        .in_i_writedata_12_tpl(c_i8_028_q),
        .in_i_writedata_13_tpl(c_i16_029_q),
        .in_i_writedata_14_tpl(redist10_sync_together36_aunroll_x_in_c2_eni3_11_tpl_1_q),
        .in_i_writedata_15_tpl(redist11_sync_together36_aunroll_x_in_c2_eni3_12_tpl_1_q),
        .in_i_writedata_16_tpl(redist12_sync_together36_aunroll_x_in_c2_eni3_13_tpl_1_q),
        .in_i_writedata_17_tpl(redist13_sync_together36_aunroll_x_in_c2_eni3_14_tpl_1_q),
        .in_i_writedata_18_tpl(redist14_sync_together36_aunroll_x_in_c2_eni3_15_tpl_1_q),
        .in_i_writedata_19_tpl(c_i64_032_q),
        .in_i_writedata_20_tpl(c_i64_032_q),
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_streamer_fpgaunique_20_streamer19_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_memdep_14_streamer_avm_readdata(in_memdep_14_streamer_avm_readdata),
        .in_memdep_14_streamer_avm_readdatavalid(in_memdep_14_streamer_avm_readdatavalid),
        .in_memdep_14_streamer_avm_waitrequest(in_memdep_14_streamer_avm_waitrequest),
        .in_memdep_14_streamer_avm_writeack(in_memdep_14_streamer_avm_writeack),
        .out_memdep_14_streamer_avm_address(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_address),
        .out_memdep_14_streamer_avm_burstcount(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_burstcount),
        .out_memdep_14_streamer_avm_byteenable(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_byteenable),
        .out_memdep_14_streamer_avm_enable(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_enable),
        .out_memdep_14_streamer_avm_read(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_read),
        .out_memdep_14_streamer_avm_write(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_write),
        .out_memdep_14_streamer_avm_writedata(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_or56_streamer21(LOGICAL,23)@11
    assign i_or56_streamer21_q = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_o_writeack | redist16_sync_together36_aunroll_x_in_c2_eni3_17_tpl_2_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_iowr_nb_return_streamer_unnamed_streamer9_streamer22(BLACKBOX,15)@11
    // out out_iowr_nb_return_streamer_o_fifodata@20000000
    // out out_iowr_nb_return_streamer_o_fifovalid@20000000
    streamer_i_iowr_nb_return_unnamed_streamer9_streamer0 thei_iowr_nb_return_streamer_unnamed_streamer9_streamer22 (
        .in_i_data(GND_q),
        .in_i_dependence(i_or56_streamer21_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .out_iowr_nb_return_streamer_o_fifodata(i_iowr_nb_return_streamer_unnamed_streamer9_streamer22_out_iowr_nb_return_streamer_o_fifodata),
        .out_iowr_nb_return_streamer_o_fifovalid(i_iowr_nb_return_streamer_unnamed_streamer9_streamer22_out_iowr_nb_return_streamer_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_iowr_nb_return_streamer_o_fifodata = i_iowr_nb_return_streamer_unnamed_streamer9_streamer22_out_iowr_nb_return_streamer_o_fifodata;
    assign out_iowr_nb_return_streamer_o_fifovalid = i_iowr_nb_return_streamer_unnamed_streamer9_streamer22_out_iowr_nb_return_streamer_o_fifovalid;

    // valid_fanout_reg0(REG,27)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together36_aunroll_x_in_i_valid_1_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,4)@11
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_streamer1 = GND_q;
    assign out_unnamed_streamer10_0_tpl = GND_q;

    // ext_sig_sync_out(GPOUT,14)
    assign out_memdep_14_streamer_avm_address = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_address;
    assign out_memdep_14_streamer_avm_enable = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_enable;
    assign out_memdep_14_streamer_avm_read = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_read;
    assign out_memdep_14_streamer_avm_write = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_write;
    assign out_memdep_14_streamer_avm_writedata = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_writedata;
    assign out_memdep_14_streamer_avm_byteenable = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_byteenable;
    assign out_memdep_14_streamer_avm_burstcount = i_llvm_fpga_mem_memdep_14_streamer20_aunroll_x_out_memdep_14_streamer_avm_burstcount;

endmodule
