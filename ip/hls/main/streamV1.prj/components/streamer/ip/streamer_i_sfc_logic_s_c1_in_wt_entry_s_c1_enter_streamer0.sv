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
// SystemVerilog created on Thu Jan 19 21:02:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_streamer0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [7:0] out_c1_exi1_1_tpl,
    output wire [31:0] out_c1_exi1_2_tpl,
    output wire [31:0] out_c1_exi1_3_tpl,
    output wire [31:0] out_c1_exi1_4_tpl,
    output wire [31:0] out_c1_exi1_5_tpl,
    output wire [7:0] out_c1_exi1_6_tpl,
    output wire [7:0] out_c1_exi1_7_tpl,
    output wire [7:0] out_c1_exi1_8_tpl,
    output wire [7:0] out_c1_exi1_9_tpl,
    output wire [7:0] out_c1_exi1_10_tpl,
    output wire [31:0] out_c1_exi1_11_tpl,
    output wire [31:0] out_c1_exi1_12_tpl,
    output wire [31:0] out_c1_exi1_13_tpl,
    output wire [31:0] out_c1_exi1_14_tpl,
    output wire [31:0] out_c1_exi1_15_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_streamer1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [0:0] in_c1_eni1_1_tpl,
    input wire [0:0] in_i_valid,
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
    input wire [63:0] in_tuple_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl;
    wire [127:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl;
    wire [31:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read;
    wire [0:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write;
    wire [511:0] i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata;
    wire [7:0] i_normls_or8_shr11_trunc_trunc_streamer17_sel_x_b;
    wire [31:0] i_normls_or8_shr15_trunc_shr16_trunc_streamer34_sel_x_b;
    wire [31:0] i_normls_or8_shr15_trunc_shr17_trunc_streamer37_sel_x_b;
    wire [31:0] i_normls_or8_shr15_trunc_shr18_trunc_streamer40_sel_x_b;
    wire [31:0] i_normls_or8_shr15_trunc_shr_trunc_streamer31_sel_x_b;
    wire [31:0] i_normls_or8_shr15_trunc_trunc_streamer28_sel_x_b;
    wire [31:0] i_normls_or8_shr_trunc_shr10_trunc_streamer15_sel_x_b;
    wire [31:0] i_normls_or8_shr_trunc_trunc_streamer9_sel_x_b;
    wire [7:0] i_normls_or8_trunc_streamer6_sel_x_b;
    wire [31:0] i_unnamed_streamer12_sel_x_b;
    wire [31:0] i_unnamed_streamer14_sel_x_b;
    wire [7:0] i_unnamed_streamer20_sel_x_b;
    wire [7:0] i_unnamed_streamer22_sel_x_b;
    wire [7:0] i_unnamed_streamer24_sel_x_b;
    wire [7:0] i_unnamed_streamer26_sel_x_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_out_buffer_out;
    wire [5:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_const_5_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_join_q;
    wire [57:0] i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_select_63_b;
    wire [63:0] i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_join_q;
    wire [57:0] i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_select_63_b;
    wire [31:0] i_normls_or8_shr11_streamer16_vt_const_127_q;
    wire [127:0] i_normls_or8_shr11_streamer16_vt_join_q;
    wire [95:0] i_normls_or8_shr11_streamer16_vt_select_95_b;
    wire [47:0] i_normls_or8_shr11_trunc_shr1227_streamer21_vt_const_127_q;
    wire [127:0] i_normls_or8_shr11_trunc_shr1227_streamer21_vt_join_q;
    wire [79:0] i_normls_or8_shr11_trunc_shr1227_streamer21_vt_select_79_b;
    wire [55:0] i_normls_or8_shr11_trunc_shr1329_streamer23_vt_const_127_q;
    wire [127:0] i_normls_or8_shr11_trunc_shr1329_streamer23_vt_join_q;
    wire [71:0] i_normls_or8_shr11_trunc_shr1329_streamer23_vt_select_71_b;
    wire [63:0] i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q;
    wire [127:0] i_normls_or8_shr11_trunc_shr1431_streamer25_vt_join_q;
    wire [63:0] i_normls_or8_shr11_trunc_shr1431_streamer25_vt_select_63_b;
    wire [39:0] i_normls_or8_shr11_trunc_shr25_streamer19_vt_const_127_q;
    wire [127:0] i_normls_or8_shr11_trunc_shr25_streamer19_vt_join_q;
    wire [87:0] i_normls_or8_shr11_trunc_shr25_streamer19_vt_select_87_b;
    wire [127:0] i_normls_or8_shr15_trunc_shr1635_streamer33_vt_join_q;
    wire [95:0] i_normls_or8_shr15_trunc_shr1635_streamer33_vt_select_95_b;
    wire [127:0] i_normls_or8_shr15_trunc_shr1737_streamer36_vt_join_q;
    wire [63:0] i_normls_or8_shr15_trunc_shr1737_streamer36_vt_select_63_b;
    wire [95:0] i_normls_or8_shr15_trunc_shr1839_streamer39_vt_const_127_q;
    wire [127:0] i_normls_or8_shr15_trunc_shr1839_streamer39_vt_join_q;
    wire [31:0] i_normls_or8_shr15_trunc_shr1839_streamer39_vt_select_31_b;
    wire [127:0] i_normls_or8_shr_trunc_shr19_streamer11_vt_join_q;
    wire [63:0] i_normls_or8_shr_trunc_shr19_streamer11_vt_select_63_b;
    wire [127:0] i_normls_or8_shr_trunc_shr921_streamer13_vt_join_q;
    wire [31:0] i_normls_or8_shr_trunc_shr921_streamer13_vt_select_31_b;
    wire [127:0] i_unnamed_streamer27_vt_join_q;
    wire [31:0] i_unnamed_streamer27_vt_select_31_b;
    wire [127:0] i_unnamed_streamer8_vt_join_q;
    wire [95:0] i_unnamed_streamer8_vt_select_95_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [95:0] rightShiftStage0Idx1Rng32_uid177_dupName_0_i_unnamed_streamer0_shift_x_b;
    wire [127:0] rightShiftStage0Idx1_uid179_dupName_0_i_unnamed_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q;
    wire [63:0] rightShiftStage1Idx1Rng64_uid182_dupName_0_i_unnamed_streamer0_shift_x_b;
    wire [127:0] rightShiftStage1Idx1_uid184_dupName_0_i_unnamed_streamer0_shift_x_q;
    wire [0:0] rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_s;
    reg [127:0] rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_q;
    wire [111:0] rightShiftStage0Idx1Rng16_uid198_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_b;
    wire [15:0] rightShiftStage0Idx1Pad16_uid199_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
    wire [127:0] rightShiftStage0Idx1_uid200_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
    wire [95:0] rightShiftStage1Idx1Rng32_uid203_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_b;
    wire [127:0] rightShiftStage1Idx1_uid205_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
    wire [0:0] rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s;
    reg [127:0] rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
    wire [119:0] rightShiftStage0Idx1Rng8_uid211_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b;
    wire [7:0] rightShiftStage0Idx1Pad8_uid212_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [127:0] rightShiftStage0Idx1_uid213_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [111:0] rightShiftStage1Idx1Rng16_uid216_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b;
    wire [127:0] rightShiftStage1Idx1_uid218_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [0:0] rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s;
    reg [127:0] rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [95:0] rightShiftStage2Idx1Rng32_uid221_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b;
    wire [127:0] rightShiftStage2Idx1_uid223_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [0:0] rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s;
    reg [127:0] rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
    wire [63:0] rightShiftStage0Idx1Rng64_uid229_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_b;
    wire [127:0] rightShiftStage0Idx1_uid231_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q;
    wire [95:0] rightShiftStage1Idx1Rng32_uid242_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_b;
    wire [127:0] rightShiftStage1Idx1_uid244_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q;
    wire [0:0] rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_s;
    reg [127:0] rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q;
    wire [95:0] rightShiftStage0Idx1Rng32_uid250_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_b;
    wire [127:0] rightShiftStage0Idx1_uid252_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q;
    wire [63:0] rightShiftStage0Idx1Rng64_uid258_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_b;
    wire [127:0] rightShiftStage0Idx1_uid260_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q;
    wire [63:0] rightShiftStage1Idx1Rng64_uid271_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_b;
    wire [127:0] rightShiftStage1Idx1_uid273_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q;
    wire [0:0] rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_s;
    reg [127:0] rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q;
    wire [63:0] rightShiftStage0Idx1Rng64_uid279_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_b;
    wire [127:0] rightShiftStage0Idx1_uid281_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q;
    wire [95:0] rightShiftStage0Idx1Rng32_uid287_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_b;
    wire [127:0] rightShiftStage0Idx1_uid289_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
    wire [0:0] rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s;
    reg [127:0] rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
    wire [63:0] rightShiftStage1Idx1Rng64_uid292_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_b;
    wire [127:0] rightShiftStage1Idx1_uid294_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
    wire [0:0] rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s;
    reg [127:0] rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_q;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_0;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_1;
    reg [0:0] redist0_valid_fanout_reg0_q_4_delay_2;
    reg [0:0] redist1_sync_together65_aunroll_x_in_c1_eni1_1_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,144)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist0_valid_fanout_reg0_q_4(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_1 <= '0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= '0;
            redist0_valid_fanout_reg0_q_4_q <= '0;
        end
        else
        begin
            redist0_valid_fanout_reg0_q_4_delay_0 <= $unsigned(valid_fanout_reg0_q);
            redist0_valid_fanout_reg0_q_4_delay_1 <= redist0_valid_fanout_reg0_q_4_delay_0;
            redist0_valid_fanout_reg0_q_4_delay_2 <= redist0_valid_fanout_reg0_q_4_delay_1;
            redist0_valid_fanout_reg0_q_4_q <= redist0_valid_fanout_reg0_q_4_delay_2;
        end
    end

    // i_normls_or8_shr15_trunc_shr1839_streamer39_vt_const_127(CONSTANT,111)
    assign i_normls_or8_shr15_trunc_shr1839_streamer39_vt_const_127_q = $unsigned(96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);

    // i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127(CONSTANT,94)
    assign i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng64_uid271_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x(BITSELECT,270)@6
    assign rightShiftStage1Idx1Rng64_uid271_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_b = rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q[127:64];

    // rightShiftStage1Idx1_uid273_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x(BITJOIN,272)@6
    assign rightShiftStage1Idx1_uid273_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, rightShiftStage1Idx1Rng64_uid271_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_b};

    // i_normls_or8_shr11_streamer16_vt_const_127(CONSTANT,85)
    assign i_normls_or8_shr11_streamer16_vt_const_127_q = $unsigned(32'b00000000000000000000000000000000);

    // rightShiftStage0Idx1Rng32_uid250_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x(BITSELECT,249)@6
    assign rightShiftStage0Idx1Rng32_uid250_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl[127:32];

    // rightShiftStage0Idx1_uid252_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x(BITJOIN,251)@6
    assign rightShiftStage0Idx1_uid252_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, rightShiftStage0Idx1Rng32_uid250_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_b};

    // valid_fanout_reg2(REG,146)@1 + 1
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

    // valid_fanout_reg1(REG,145)@1 + 1
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

    // redist1_sync_together65_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together65_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together65_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2(BLACKBOX,78)@0
    // in in_i_dependence@2
    // in in_valid_in@2
    // out out_buffer_out@2
    // out out_valid_out@2
    streamer_i_llvm_fpga_sync_buffer_p64s_st0000ple_in_sync_buffer_0 thei_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2 (
        .in_buffer_in(in_tuple_in),
        .in_i_dependence(redist1_sync_together65_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_out_buffer_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_select_63(BITSELECT,81)@2
    assign i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_select_63_b = i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_out_buffer_out[63:6];

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_join(BITJOIN,80)@2
    assign i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_join_q = {i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_select_63_b, i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_const_5_q};

    // i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_select_63(BITSELECT,84)@2
    assign i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_select_63_b = i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_join_q[63:6];

    // i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_const_5(CONSTANT,79)
    assign i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_const_5_q = $unsigned(6'b000000);

    // i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_join(BITJOIN,83)@2
    assign i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_join_q = {i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_select_63_b, i_llvm_fpga_sync_buffer_p64s_struct_tuples_tuple_in_sync_buffer_streamer2_vt_const_5_q};

    // i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x(BLACKBOX,6)@2
    // in in_i_stall@20000000
    // out out_o_readdata_0_tpl@6
    // out out_o_readdata_1_tpl@6
    // out out_o_readdata_2_tpl@6
    // out out_o_readdata_3_tpl@6
    // out out_o_readdata_4_tpl@6
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write@20000000
    // out out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata@20000000
    // out out_o_stall@5
    // out out_o_valid@6
    streamer_i_llvm_fpga_mem_memcoalesce_loa0000aunique_53_streamer0 thei_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x (
        .in_flush(in_flush),
        .in_i_address(i_memcoalesce_bitcast_streamer_fpgaunique_19_streamer3_vt_join_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg2_q),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdata),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_readdatavalid),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_waitrequest),
        .in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack(in_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writeack),
        .out_o_readdata_0_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl),
        .out_o_readdata_1_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl),
        .out_o_readdata_2_tpl(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl),
        .out_o_readdata_3_tpl(),
        .out_o_readdata_4_tpl(),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write),
        .out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata(i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x(MUX,253)@6
    assign rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl or rightShiftStage0Idx1_uid252_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl;
            1'b1 : rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q = rightShiftStage0Idx1_uid252_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q;
            default : rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x(MUX,274)@6
    assign rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_s or rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q or rightShiftStage1Idx1_uid273_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_s)
            1'b0 : rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q = rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q;
            1'b1 : rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q = rightShiftStage1Idx1_uid273_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q;
            default : rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr15_trunc_shr1839_streamer39_vt_select_31(BITSELECT,113)@6
    assign i_normls_or8_shr15_trunc_shr1839_streamer39_vt_select_31_b = rightShiftStage1_uid275_i_normls_or8_shr15_trunc_shr1839_streamer0_shift_x_q[31:0];

    // i_normls_or8_shr15_trunc_shr1839_streamer39_vt_join(BITJOIN,112)@6
    assign i_normls_or8_shr15_trunc_shr1839_streamer39_vt_join_q = {i_normls_or8_shr15_trunc_shr1839_streamer39_vt_const_127_q, i_normls_or8_shr15_trunc_shr1839_streamer39_vt_select_31_b};

    // i_normls_or8_shr15_trunc_shr18_trunc_streamer40_sel_x(BITSELECT,42)@6
    assign i_normls_or8_shr15_trunc_shr18_trunc_streamer40_sel_x_b = i_normls_or8_shr15_trunc_shr1839_streamer39_vt_join_q[31:0];

    // rightShiftStage0Idx1Rng64_uid258_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x(BITSELECT,257)@6
    assign rightShiftStage0Idx1Rng64_uid258_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl[127:64];

    // rightShiftStage0Idx1_uid260_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x(BITJOIN,259)@6
    assign rightShiftStage0Idx1_uid260_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, rightShiftStage0Idx1Rng64_uid258_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_b};

    // rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x(MUX,261)@6
    assign rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl or rightShiftStage0Idx1_uid260_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl;
            1'b1 : rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q = rightShiftStage0Idx1_uid260_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q;
            default : rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr15_trunc_shr1737_streamer36_vt_select_63(BITSELECT,108)@6
    assign i_normls_or8_shr15_trunc_shr1737_streamer36_vt_select_63_b = rightShiftStage0_uid262_i_normls_or8_shr15_trunc_shr1737_streamer0_shift_x_q[63:0];

    // i_normls_or8_shr15_trunc_shr1737_streamer36_vt_join(BITJOIN,107)@6
    assign i_normls_or8_shr15_trunc_shr1737_streamer36_vt_join_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, i_normls_or8_shr15_trunc_shr1737_streamer36_vt_select_63_b};

    // i_normls_or8_shr15_trunc_shr17_trunc_streamer37_sel_x(BITSELECT,37)@6
    assign i_normls_or8_shr15_trunc_shr17_trunc_streamer37_sel_x_b = i_normls_or8_shr15_trunc_shr1737_streamer36_vt_join_q[31:0];

    // i_normls_or8_shr15_trunc_shr1635_streamer33_vt_select_95(BITSELECT,103)@6
    assign i_normls_or8_shr15_trunc_shr1635_streamer33_vt_select_95_b = rightShiftStage0_uid254_i_normls_or8_shr15_trunc_shr1635_streamer0_shift_x_q[95:0];

    // i_normls_or8_shr15_trunc_shr1635_streamer33_vt_join(BITJOIN,102)@6
    assign i_normls_or8_shr15_trunc_shr1635_streamer33_vt_join_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, i_normls_or8_shr15_trunc_shr1635_streamer33_vt_select_95_b};

    // i_normls_or8_shr15_trunc_shr16_trunc_streamer34_sel_x(BITSELECT,32)@6
    assign i_normls_or8_shr15_trunc_shr16_trunc_streamer34_sel_x_b = i_normls_or8_shr15_trunc_shr1635_streamer33_vt_join_q[31:0];

    // i_normls_or8_shr15_trunc_shr_trunc_streamer31_sel_x(BITSELECT,43)@6
    assign i_normls_or8_shr15_trunc_shr_trunc_streamer31_sel_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_2_tpl[31:0];

    // rightShiftStage1Idx1Rng64_uid182_dupName_0_i_unnamed_streamer0_shift_x(BITSELECT,181)@6
    assign rightShiftStage1Idx1Rng64_uid182_dupName_0_i_unnamed_streamer0_shift_x_b = rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q[127:64];

    // rightShiftStage1Idx1_uid184_dupName_0_i_unnamed_streamer0_shift_x(BITJOIN,183)@6
    assign rightShiftStage1Idx1_uid184_dupName_0_i_unnamed_streamer0_shift_x_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, rightShiftStage1Idx1Rng64_uid182_dupName_0_i_unnamed_streamer0_shift_x_b};

    // rightShiftStage0Idx1Rng32_uid177_dupName_0_i_unnamed_streamer0_shift_x(BITSELECT,176)@6
    assign rightShiftStage0Idx1Rng32_uid177_dupName_0_i_unnamed_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl[127:32];

    // rightShiftStage0Idx1_uid179_dupName_0_i_unnamed_streamer0_shift_x(BITJOIN,178)@6
    assign rightShiftStage0Idx1_uid179_dupName_0_i_unnamed_streamer0_shift_x_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, rightShiftStage0Idx1Rng32_uid177_dupName_0_i_unnamed_streamer0_shift_x_b};

    // rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x(MUX,180)@6
    assign rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl or rightShiftStage0Idx1_uid179_dupName_0_i_unnamed_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl;
            1'b1 : rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q = rightShiftStage0Idx1_uid179_dupName_0_i_unnamed_streamer0_shift_x_q;
            default : rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x(MUX,185)@6
    assign rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_s or rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q or rightShiftStage1Idx1_uid184_dupName_0_i_unnamed_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_s)
            1'b0 : rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_q = rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q;
            1'b1 : rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_q = rightShiftStage1Idx1_uid184_dupName_0_i_unnamed_streamer0_shift_x_q;
            default : rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_unnamed_streamer27_vt_select_31(BITSELECT,137)@6
    assign i_unnamed_streamer27_vt_select_31_b = rightShiftStage1_uid186_dupName_0_i_unnamed_streamer0_shift_x_q[31:0];

    // i_unnamed_streamer27_vt_join(BITJOIN,136)@6
    assign i_unnamed_streamer27_vt_join_q = {i_normls_or8_shr15_trunc_shr1839_streamer39_vt_const_127_q, i_unnamed_streamer27_vt_select_31_b};

    // i_normls_or8_shr15_trunc_trunc_streamer28_sel_x(BITSELECT,44)@6
    assign i_normls_or8_shr15_trunc_trunc_streamer28_sel_x_b = i_unnamed_streamer27_vt_join_q[31:0];

    // rightShiftStage0Idx1Rng64_uid229_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x(BITSELECT,228)@6
    assign rightShiftStage0Idx1Rng64_uid229_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl[127:64];

    // rightShiftStage0Idx1_uid231_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x(BITJOIN,230)@6
    assign rightShiftStage0Idx1_uid231_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, rightShiftStage0Idx1Rng64_uid229_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_b};

    // rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x(MUX,232)@6
    assign rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl or rightShiftStage0Idx1_uid231_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl;
            1'b1 : rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q = rightShiftStage0Idx1_uid231_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q;
            default : rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr11_trunc_shr1431_streamer25_vt_select_63(BITSELECT,96)@6
    assign i_normls_or8_shr11_trunc_shr1431_streamer25_vt_select_63_b = rightShiftStage0_uid233_i_normls_or8_shr11_trunc_shr1431_streamer0_shift_x_q[63:0];

    // i_normls_or8_shr11_trunc_shr1431_streamer25_vt_join(BITJOIN,95)@6
    assign i_normls_or8_shr11_trunc_shr1431_streamer25_vt_join_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, i_normls_or8_shr11_trunc_shr1431_streamer25_vt_select_63_b};

    // i_unnamed_streamer26_sel_x(BITSELECT,65)@6
    assign i_unnamed_streamer26_sel_x_b = i_normls_or8_shr11_trunc_shr1431_streamer25_vt_join_q[7:0];

    // i_normls_or8_shr11_trunc_shr1329_streamer23_vt_const_127(CONSTANT,91)
    assign i_normls_or8_shr11_trunc_shr1329_streamer23_vt_const_127_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // rightShiftStage2Idx1Rng32_uid221_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(BITSELECT,220)@6
    assign rightShiftStage2Idx1Rng32_uid221_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b = rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q[127:32];

    // rightShiftStage2Idx1_uid223_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(BITJOIN,222)@6
    assign rightShiftStage2Idx1_uid223_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, rightShiftStage2Idx1Rng32_uid221_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b};

    // rightShiftStage0Idx1Pad16_uid199_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(CONSTANT,198)
    assign rightShiftStage0Idx1Pad16_uid199_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = $unsigned(16'b0000000000000000);

    // rightShiftStage1Idx1Rng16_uid216_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(BITSELECT,215)@6
    assign rightShiftStage1Idx1Rng16_uid216_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b = rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q[127:16];

    // rightShiftStage1Idx1_uid218_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(BITJOIN,217)@6
    assign rightShiftStage1Idx1_uid218_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = {rightShiftStage0Idx1Pad16_uid199_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q, rightShiftStage1Idx1Rng16_uid216_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b};

    // rightShiftStage0Idx1Pad8_uid212_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(CONSTANT,211)
    assign rightShiftStage0Idx1Pad8_uid212_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = $unsigned(8'b00000000);

    // rightShiftStage0Idx1Rng8_uid211_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(BITSELECT,210)@6
    assign rightShiftStage0Idx1Rng8_uid211_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl[127:8];

    // rightShiftStage0Idx1_uid213_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(BITJOIN,212)@6
    assign rightShiftStage0Idx1_uid213_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = {rightShiftStage0Idx1Pad8_uid212_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q, rightShiftStage0Idx1Rng8_uid211_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_b};

    // rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(MUX,214)@6
    assign rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl or rightShiftStage0Idx1_uid213_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl;
            1'b1 : rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = rightShiftStage0Idx1_uid213_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
            default : rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(MUX,219)@6
    assign rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s or rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q or rightShiftStage1Idx1_uid218_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s)
            1'b0 : rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
            1'b1 : rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = rightShiftStage1Idx1_uid218_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
            default : rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x(MUX,224)@6
    assign rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s or rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q or rightShiftStage2Idx1_uid223_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_s)
            1'b0 : rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = rightShiftStage1_uid220_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
            1'b1 : rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = rightShiftStage2Idx1_uid223_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
            default : rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr11_trunc_shr1329_streamer23_vt_select_71(BITSELECT,93)@6
    assign i_normls_or8_shr11_trunc_shr1329_streamer23_vt_select_71_b = rightShiftStage2_uid225_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q[71:0];

    // i_normls_or8_shr11_trunc_shr1329_streamer23_vt_join(BITJOIN,92)@6
    assign i_normls_or8_shr11_trunc_shr1329_streamer23_vt_join_q = {i_normls_or8_shr11_trunc_shr1329_streamer23_vt_const_127_q, i_normls_or8_shr11_trunc_shr1329_streamer23_vt_select_71_b};

    // i_unnamed_streamer24_sel_x(BITSELECT,64)@6
    assign i_unnamed_streamer24_sel_x_b = i_normls_or8_shr11_trunc_shr1329_streamer23_vt_join_q[7:0];

    // i_normls_or8_shr11_trunc_shr1227_streamer21_vt_const_127(CONSTANT,88)
    assign i_normls_or8_shr11_trunc_shr1227_streamer21_vt_const_127_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid203_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(BITSELECT,202)@6
    assign rightShiftStage1Idx1Rng32_uid203_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_b = rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q[127:32];

    // rightShiftStage1Idx1_uid205_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(BITJOIN,204)@6
    assign rightShiftStage1Idx1_uid205_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, rightShiftStage1Idx1Rng32_uid203_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_b};

    // rightShiftStage0Idx1Rng16_uid198_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(BITSELECT,197)@6
    assign rightShiftStage0Idx1Rng16_uid198_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl[127:16];

    // rightShiftStage0Idx1_uid200_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(BITJOIN,199)@6
    assign rightShiftStage0Idx1_uid200_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = {rightShiftStage0Idx1Pad16_uid199_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q, rightShiftStage0Idx1Rng16_uid198_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_b};

    // rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(MUX,201)@6
    assign rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl or rightShiftStage0Idx1_uid200_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl;
            1'b1 : rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = rightShiftStage0Idx1_uid200_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
            default : rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x(MUX,206)@6
    assign rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s or rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q or rightShiftStage1Idx1_uid205_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_s)
            1'b0 : rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = rightShiftStage0_uid202_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
            1'b1 : rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = rightShiftStage1Idx1_uid205_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q;
            default : rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr11_trunc_shr1227_streamer21_vt_select_79(BITSELECT,90)@6
    assign i_normls_or8_shr11_trunc_shr1227_streamer21_vt_select_79_b = rightShiftStage1_uid207_i_normls_or8_shr11_trunc_shr1227_streamer0_shift_x_q[79:0];

    // i_normls_or8_shr11_trunc_shr1227_streamer21_vt_join(BITJOIN,89)@6
    assign i_normls_or8_shr11_trunc_shr1227_streamer21_vt_join_q = {i_normls_or8_shr11_trunc_shr1227_streamer21_vt_const_127_q, i_normls_or8_shr11_trunc_shr1227_streamer21_vt_select_79_b};

    // i_unnamed_streamer22_sel_x(BITSELECT,63)@6
    assign i_unnamed_streamer22_sel_x_b = i_normls_or8_shr11_trunc_shr1227_streamer21_vt_join_q[7:0];

    // i_normls_or8_shr11_trunc_shr25_streamer19_vt_const_127(CONSTANT,97)
    assign i_normls_or8_shr11_trunc_shr25_streamer19_vt_const_127_q = $unsigned(40'b0000000000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid242_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x(BITSELECT,241)@6
    assign rightShiftStage1Idx1Rng32_uid242_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_b = rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q[127:32];

    // rightShiftStage1Idx1_uid244_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x(BITJOIN,243)@6
    assign rightShiftStage1Idx1_uid244_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, rightShiftStage1Idx1Rng32_uid242_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_b};

    // rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x(MUX,245)@6
    assign rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_s or rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q or rightShiftStage1Idx1_uid244_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_s)
            1'b0 : rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q = rightShiftStage0_uid215_i_normls_or8_shr11_trunc_shr1329_streamer0_shift_x_q;
            1'b1 : rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q = rightShiftStage1Idx1_uid244_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q;
            default : rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr11_trunc_shr25_streamer19_vt_select_87(BITSELECT,99)@6
    assign i_normls_or8_shr11_trunc_shr25_streamer19_vt_select_87_b = rightShiftStage1_uid246_i_normls_or8_shr11_trunc_shr25_streamer0_shift_x_q[87:0];

    // i_normls_or8_shr11_trunc_shr25_streamer19_vt_join(BITJOIN,98)@6
    assign i_normls_or8_shr11_trunc_shr25_streamer19_vt_join_q = {i_normls_or8_shr11_trunc_shr25_streamer19_vt_const_127_q, i_normls_or8_shr11_trunc_shr25_streamer19_vt_select_87_b};

    // i_unnamed_streamer20_sel_x(BITSELECT,62)@6
    assign i_unnamed_streamer20_sel_x_b = i_normls_or8_shr11_trunc_shr25_streamer19_vt_join_q[7:0];

    // i_normls_or8_shr11_streamer16_vt_select_95(BITSELECT,87)@6
    assign i_normls_or8_shr11_streamer16_vt_select_95_b = rightShiftStage0_uid181_dupName_0_i_unnamed_streamer0_shift_x_q[95:0];

    // i_normls_or8_shr11_streamer16_vt_join(BITJOIN,86)@6
    assign i_normls_or8_shr11_streamer16_vt_join_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, i_normls_or8_shr11_streamer16_vt_select_95_b};

    // i_normls_or8_shr11_trunc_trunc_streamer17_sel_x(BITSELECT,27)@6
    assign i_normls_or8_shr11_trunc_trunc_streamer17_sel_x_b = i_normls_or8_shr11_streamer16_vt_join_q[7:0];

    // i_normls_or8_shr_trunc_shr10_trunc_streamer15_sel_x(BITSELECT,45)@6
    assign i_normls_or8_shr_trunc_shr10_trunc_streamer15_sel_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_1_tpl[31:0];

    // rightShiftStage1Idx1Rng64_uid292_i_normls_or8_shr_trunc_shr921_streamer0_shift_x(BITSELECT,291)@6
    assign rightShiftStage1Idx1Rng64_uid292_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_b = rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q[127:64];

    // rightShiftStage1Idx1_uid294_i_normls_or8_shr_trunc_shr921_streamer0_shift_x(BITJOIN,293)@6
    assign rightShiftStage1Idx1_uid294_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, rightShiftStage1Idx1Rng64_uid292_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_b};

    // rightShiftStage0Idx1Rng32_uid287_i_normls_or8_shr_trunc_shr921_streamer0_shift_x(BITSELECT,286)@6
    assign rightShiftStage0Idx1Rng32_uid287_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl[127:32];

    // rightShiftStage0Idx1_uid289_i_normls_or8_shr_trunc_shr921_streamer0_shift_x(BITJOIN,288)@6
    assign rightShiftStage0Idx1_uid289_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, rightShiftStage0Idx1Rng32_uid287_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_b};

    // rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x(MUX,290)@6
    assign rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl or rightShiftStage0Idx1_uid289_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl;
            1'b1 : rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = rightShiftStage0Idx1_uid289_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
            default : rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x(MUX,295)@6
    assign rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s or rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q or rightShiftStage1Idx1_uid294_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_s)
            1'b0 : rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
            1'b1 : rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = rightShiftStage1Idx1_uid294_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q;
            default : rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr_trunc_shr921_streamer13_vt_select_31(BITSELECT,126)@6
    assign i_normls_or8_shr_trunc_shr921_streamer13_vt_select_31_b = rightShiftStage1_uid296_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q[31:0];

    // i_normls_or8_shr_trunc_shr921_streamer13_vt_join(BITJOIN,125)@6
    assign i_normls_or8_shr_trunc_shr921_streamer13_vt_join_q = {i_normls_or8_shr15_trunc_shr1839_streamer39_vt_const_127_q, i_normls_or8_shr_trunc_shr921_streamer13_vt_select_31_b};

    // i_unnamed_streamer14_sel_x(BITSELECT,61)@6
    assign i_unnamed_streamer14_sel_x_b = i_normls_or8_shr_trunc_shr921_streamer13_vt_join_q[31:0];

    // rightShiftStage0Idx1Rng64_uid279_i_normls_or8_shr_trunc_shr19_streamer0_shift_x(BITSELECT,278)@6
    assign rightShiftStage0Idx1Rng64_uid279_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl[127:64];

    // rightShiftStage0Idx1_uid281_i_normls_or8_shr_trunc_shr19_streamer0_shift_x(BITJOIN,280)@6
    assign rightShiftStage0Idx1_uid281_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, rightShiftStage0Idx1Rng64_uid279_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_b};

    // rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x(MUX,282)@6
    assign rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_s or i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl or rightShiftStage0Idx1_uid281_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_s)
            1'b0 : rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl;
            1'b1 : rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q = rightShiftStage0Idx1_uid281_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q;
            default : rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q = 128'b0;
        endcase
    end

    // i_normls_or8_shr_trunc_shr19_streamer11_vt_select_63(BITSELECT,123)@6
    assign i_normls_or8_shr_trunc_shr19_streamer11_vt_select_63_b = rightShiftStage0_uid283_i_normls_or8_shr_trunc_shr19_streamer0_shift_x_q[63:0];

    // i_normls_or8_shr_trunc_shr19_streamer11_vt_join(BITJOIN,122)@6
    assign i_normls_or8_shr_trunc_shr19_streamer11_vt_join_q = {i_normls_or8_shr11_trunc_shr1431_streamer25_vt_const_127_q, i_normls_or8_shr_trunc_shr19_streamer11_vt_select_63_b};

    // i_unnamed_streamer12_sel_x(BITSELECT,60)@6
    assign i_unnamed_streamer12_sel_x_b = i_normls_or8_shr_trunc_shr19_streamer11_vt_join_q[31:0];

    // i_unnamed_streamer8_vt_select_95(BITSELECT,140)@6
    assign i_unnamed_streamer8_vt_select_95_b = rightShiftStage0_uid291_i_normls_or8_shr_trunc_shr921_streamer0_shift_x_q[95:0];

    // i_unnamed_streamer8_vt_join(BITJOIN,139)@6
    assign i_unnamed_streamer8_vt_join_q = {i_normls_or8_shr11_streamer16_vt_const_127_q, i_unnamed_streamer8_vt_select_95_b};

    // i_normls_or8_shr_trunc_trunc_streamer9_sel_x(BITSELECT,54)@6
    assign i_normls_or8_shr_trunc_trunc_streamer9_sel_x_b = i_unnamed_streamer8_vt_join_q[31:0];

    // i_normls_or8_trunc_streamer6_sel_x(BITSELECT,55)@6
    assign i_normls_or8_trunc_streamer6_sel_x_b = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_o_readdata_0_tpl[7:0];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,66)@6
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_normls_or8_trunc_streamer6_sel_x_b;
    assign out_c1_exi1_2_tpl = i_normls_or8_shr_trunc_trunc_streamer9_sel_x_b;
    assign out_c1_exi1_3_tpl = i_unnamed_streamer12_sel_x_b;
    assign out_c1_exi1_4_tpl = i_unnamed_streamer14_sel_x_b;
    assign out_c1_exi1_5_tpl = i_normls_or8_shr_trunc_shr10_trunc_streamer15_sel_x_b;
    assign out_c1_exi1_6_tpl = i_normls_or8_shr11_trunc_trunc_streamer17_sel_x_b;
    assign out_c1_exi1_7_tpl = i_unnamed_streamer20_sel_x_b;
    assign out_c1_exi1_8_tpl = i_unnamed_streamer22_sel_x_b;
    assign out_c1_exi1_9_tpl = i_unnamed_streamer24_sel_x_b;
    assign out_c1_exi1_10_tpl = i_unnamed_streamer26_sel_x_b;
    assign out_c1_exi1_11_tpl = i_normls_or8_shr15_trunc_trunc_streamer28_sel_x_b;
    assign out_c1_exi1_12_tpl = i_normls_or8_shr15_trunc_shr_trunc_streamer31_sel_x_b;
    assign out_c1_exi1_13_tpl = i_normls_or8_shr15_trunc_shr16_trunc_streamer34_sel_x_b;
    assign out_c1_exi1_14_tpl = i_normls_or8_shr15_trunc_shr17_trunc_streamer37_sel_x_b;
    assign out_c1_exi1_15_tpl = i_normls_or8_shr15_trunc_shr18_trunc_streamer40_sel_x_b;
    assign out_o_valid = redist0_valid_fanout_reg0_q_4_q;
    assign out_unnamed_streamer1 = GND_q;

    // ext_sig_sync_out(GPOUT,77)
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_address;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_enable;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_read;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_write;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_writedata;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_byteenable;
    assign out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount = i_llvm_fpga_mem_memcoalesce_load_streamer_fpgaunique_53_streamer4_aunroll_x_out_memcoalesce_load_streamer_fpgaunique_53_streamer_avm_burstcount;

endmodule
