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

// SystemVerilog created from i_sfc_logic_s_c1_in_wt_entry_projections_c1_enter_projection0
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_i_sfc_logic_s_c1_in_wt_entry_pr0000c1_enter_projection0 (
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
    output wire [0:0] out_unnamed_projection1,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [7:0] in_c1_eni1_1_tpl,
    input wire [31:0] in_c1_eni1_2_tpl,
    input wire [31:0] in_c1_eni1_3_tpl,
    input wire [31:0] in_c1_eni1_4_tpl,
    input wire [31:0] in_c1_eni1_5_tpl,
    input wire [7:0] in_c1_eni1_6_tpl,
    input wire [7:0] in_c1_eni1_7_tpl,
    input wire [7:0] in_c1_eni1_8_tpl,
    input wire [7:0] in_c1_eni1_9_tpl,
    input wire [7:0] in_c1_eni1_10_tpl,
    input wire [31:0] in_c1_eni1_11_tpl,
    input wire [31:0] in_c1_eni1_12_tpl,
    input wire [31:0] in_c1_eni1_13_tpl,
    input wire [31:0] in_c1_eni1_14_tpl,
    input wire [31:0] in_c1_eni1_15_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] i_conv8_projection19_sel_x_b;
    wire [0:0] i_tobool_projection17_sel_x_b;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_s;
    reg [7:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_q;
    wire [0:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_s;
    reg [31:0] i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_q;
    wire [31:0] c_float_4_500000e_0139_q;
    wire [7:0] i_and9_projection20_q;
    wire [6:0] i_and9_projection20_vt_const_7_q;
    wire [7:0] i_and9_projection20_vt_join_q;
    wire [0:0] i_and9_projection20_vt_select_0_b;
    wire [7:0] i_conv8_projection19_vt_join_q;
    wire [0:0] i_conv8_projection19_vt_select_0_b;
    wire [7:0] cstAllOWE_uid37_i_cmp_i_projection18_q;
    wire [22:0] cstZeroWF_uid38_i_cmp_i_projection18_q;
    wire [7:0] cstAllZWE_uid39_i_cmp_i_projection18_q;
    wire [7:0] exp_x_uid40_i_cmp_i_projection18_b;
    wire [22:0] frac_x_uid41_i_cmp_i_projection18_b;
    wire [0:0] expXIsZero_uid42_i_cmp_i_projection18_qi;
    reg [0:0] expXIsZero_uid42_i_cmp_i_projection18_q;
    wire [0:0] expXIsMax_uid43_i_cmp_i_projection18_qi;
    reg [0:0] expXIsMax_uid43_i_cmp_i_projection18_q;
    wire [0:0] fracXIsZero_uid44_i_cmp_i_projection18_qi;
    reg [0:0] fracXIsZero_uid44_i_cmp_i_projection18_q;
    wire [0:0] fracXIsNotZero_uid45_i_cmp_i_projection18_q;
    wire [0:0] excZ_x_uid46_i_cmp_i_projection18_q;
    wire [0:0] excN_x_uid48_i_cmp_i_projection18_q;
    wire [7:0] exp_y_uid57_i_cmp_i_projection18_b;
    wire [22:0] frac_y_uid58_i_cmp_i_projection18_b;
    wire [0:0] expXIsZero_uid59_i_cmp_i_projection18_qi;
    reg [0:0] expXIsZero_uid59_i_cmp_i_projection18_q;
    wire [0:0] expXIsMax_uid60_i_cmp_i_projection18_qi;
    reg [0:0] expXIsMax_uid60_i_cmp_i_projection18_q;
    wire [0:0] fracXIsZero_uid61_i_cmp_i_projection18_qi;
    reg [0:0] fracXIsZero_uid61_i_cmp_i_projection18_q;
    wire [0:0] fracXIsNotZero_uid62_i_cmp_i_projection18_q;
    wire [0:0] excZ_y_uid63_i_cmp_i_projection18_q;
    wire [0:0] excN_y_uid65_i_cmp_i_projection18_q;
    wire [0:0] oneIsNaN_uid71_i_cmp_i_projection18_qi;
    reg [0:0] oneIsNaN_uid71_i_cmp_i_projection18_q;
    wire [30:0] expFracX_uid76_i_cmp_i_projection18_q;
    wire [30:0] expFracY_uid78_i_cmp_i_projection18_q;
    wire [32:0] efxGTefy_uid80_i_cmp_i_projection18_a;
    wire [32:0] efxGTefy_uid80_i_cmp_i_projection18_b;
    logic [32:0] efxGTefy_uid80_i_cmp_i_projection18_o;
    wire [0:0] efxGTefy_uid80_i_cmp_i_projection18_c;
    wire [32:0] efxLTefy_uid81_i_cmp_i_projection18_a;
    wire [32:0] efxLTefy_uid81_i_cmp_i_projection18_b;
    logic [32:0] efxLTefy_uid81_i_cmp_i_projection18_o;
    wire [0:0] efxLTefy_uid81_i_cmp_i_projection18_c;
    wire [0:0] signX_uid85_i_cmp_i_projection18_b;
    wire [0:0] signY_uid86_i_cmp_i_projection18_b;
    wire [1:0] two_uid87_i_cmp_i_projection18_q;
    wire [1:0] concSXSY_uid88_i_cmp_i_projection18_q;
    wire [0:0] sxLTsy_uid89_i_cmp_i_projection18_qi;
    reg [0:0] sxLTsy_uid89_i_cmp_i_projection18_q;
    wire [0:0] xorSigns_uid90_i_cmp_i_projection18_q;
    wire [0:0] sxEQsy_uid91_i_cmp_i_projection18_q;
    wire [0:0] expFracCompMux_uid92_i_cmp_i_projection18_s;
    reg [0:0] expFracCompMux_uid92_i_cmp_i_projection18_q;
    wire [0:0] invExcYZ_uid93_i_cmp_i_projection18_q;
    wire [0:0] invExcXZ_uid94_i_cmp_i_projection18_q;
    wire [0:0] oneNonZero_uid95_i_cmp_i_projection18_qi;
    reg [0:0] oneNonZero_uid95_i_cmp_i_projection18_q;
    wire [0:0] rc2_uid96_i_cmp_i_projection18_q;
    wire [0:0] sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_qi;
    reg [0:0] sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_q;
    wire [0:0] r_uid98_i_cmp_i_projection18_qi;
    reg [0:0] r_uid98_i_cmp_i_projection18_q;
    wire [0:0] rPostExc_uid99_i_cmp_i_projection18_s;
    reg [0:0] rPostExc_uid99_i_cmp_i_projection18_q;
    reg [0:0] redist0_oneIsNaN_uid71_i_cmp_i_projection18_q_2_q;
    reg [0:0] redist1_i_and9_projection20_vt_select_0_b_1_q;
    reg [7:0] redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_q;
    reg [7:0] redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_0;
    reg [7:0] redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_1;
    reg [7:0] redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4_q;
    reg [31:0] redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_q;
    reg [31:0] redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_delay_0;
    reg [31:0] redist5_sync_together48_aunroll_x_in_c1_eni1_3_tpl_1_q;
    reg [31:0] redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_q;
    reg [31:0] redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_delay_0;
    reg [31:0] redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_q;
    reg [31:0] redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_delay_0;
    reg [31:0] redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_q;
    reg [31:0] redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_delay_0;
    reg [7:0] redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_q;
    reg [7:0] redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_0;
    reg [7:0] redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_1;
    reg [7:0] redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_2;
    reg [7:0] redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_q;
    reg [7:0] redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_0;
    reg [7:0] redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_1;
    reg [7:0] redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_2;
    reg [7:0] redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_q;
    reg [7:0] redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_0;
    reg [7:0] redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_1;
    reg [7:0] redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_2;
    reg [7:0] redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_q;
    reg [7:0] redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_0;
    reg [7:0] redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_1;
    reg [7:0] redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_2;
    reg [7:0] redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_q;
    reg [7:0] redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_0;
    reg [7:0] redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_1;
    reg [7:0] redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_2;
    reg [31:0] redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_q;
    reg [31:0] redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_delay_0;
    reg [31:0] redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_q;
    reg [31:0] redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_delay_0;
    reg [31:0] redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_q;
    reg [31:0] redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_delay_0;
    reg [31:0] redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_q;
    reg [31:0] redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_delay_0;
    reg [31:0] redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_q;
    reg [31:0] redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_delay_0;
    reg [0:0] redist19_sync_together48_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist19_sync_together48_aunroll_x_in_i_valid_4_delay_0;
    reg [0:0] redist19_sync_together48_aunroll_x_in_i_valid_4_delay_1;
    reg [0:0] redist19_sync_together48_aunroll_x_in_i_valid_4_delay_2;
    reg [31:0] redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_inputreg0_q;
    reg [31:0] redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0_q;
    reg [31:0] redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_inputreg0_q;
    reg [31:0] redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_inputreg0_q;
    reg [31:0] redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0_q;
    reg [31:0] redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_inputreg0_q;
    reg [31:0] redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0_q;
    reg [31:0] redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_inputreg0_q;
    reg [31:0] redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0_q;
    reg [31:0] redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_inputreg0_q;
    reg [31:0] redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0_q;
    reg [31:0] redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_inputreg0_q;
    reg [31:0] redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0_q;
    reg [31:0] redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_inputreg0_q;
    reg [31:0] redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0_q;
    reg [31:0] redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_inputreg0_q;
    reg [31:0] redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist19_sync_together48_aunroll_x_in_i_valid_4(DELAY,121)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together48_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist19_sync_together48_aunroll_x_in_i_valid_4_delay_1 <= '0;
            redist19_sync_together48_aunroll_x_in_i_valid_4_delay_2 <= '0;
            redist19_sync_together48_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist19_sync_together48_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(in_i_valid);
            redist19_sync_together48_aunroll_x_in_i_valid_4_delay_1 <= redist19_sync_together48_aunroll_x_in_i_valid_4_delay_0;
            redist19_sync_together48_aunroll_x_in_i_valid_4_delay_2 <= redist19_sync_together48_aunroll_x_in_i_valid_4_delay_1;
            redist19_sync_together48_aunroll_x_in_i_valid_4_q <= redist19_sync_together48_aunroll_x_in_i_valid_4_delay_2;
        end
    end

    // redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_inputreg0(DELAY,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_15_tpl);
        end
    end

    // redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4(DELAY,120)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_delay_0 <= '0;
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_q <= '0;
        end
        else
        begin
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_delay_0 <= $unsigned(redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_inputreg0_q);
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_q <= redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_delay_0;
        end
    end

    // redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0(DELAY,138)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0_q <= $unsigned(redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_q);
        end
    end

    // redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_0 <= '0;
            redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_1 <= '0;
            redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_0 <= $unsigned(in_c1_eni1_1_tpl);
            redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_1 <= redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_0;
            redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_q <= redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_delay_1;
        end
    end

    // redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4_q <= '0;
        end
        else
        begin
            redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4_q <= $unsigned(redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_q);
        end
    end

    // i_tobool_projection17_sel_x(BITSELECT,3)@5
    assign i_tobool_projection17_sel_x_b = redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4_q[0:0];

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x(MUX,18)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_s or redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_q = redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_q = redist18_sync_together48_aunroll_x_in_c1_eni1_15_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_q = 32'b0;
        endcase
    end

    // redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_inputreg0(DELAY,135)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_14_tpl);
        end
    end

    // redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4(DELAY,119)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_delay_0 <= '0;
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_q <= '0;
        end
        else
        begin
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_delay_0 <= $unsigned(redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_inputreg0_q);
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_q <= redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_delay_0;
        end
    end

    // redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0(DELAY,136)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0_q <= $unsigned(redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x(MUX,17)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_s or redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_q = redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_q = redist17_sync_together48_aunroll_x_in_c1_eni1_14_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_q = 32'b0;
        endcase
    end

    // redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_inputreg0(DELAY,133)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_13_tpl);
        end
    end

    // redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4(DELAY,118)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_delay_0 <= '0;
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_q <= '0;
        end
        else
        begin
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_delay_0 <= $unsigned(redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_inputreg0_q);
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_q <= redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_delay_0;
        end
    end

    // redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0(DELAY,134)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0_q <= $unsigned(redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x(MUX,16)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_s or redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_q = redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_q = redist16_sync_together48_aunroll_x_in_c1_eni1_13_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_q = 32'b0;
        endcase
    end

    // redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_inputreg0(DELAY,131)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_12_tpl);
        end
    end

    // redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4(DELAY,117)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_delay_0 <= '0;
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_q <= '0;
        end
        else
        begin
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_delay_0 <= $unsigned(redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_inputreg0_q);
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_q <= redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_delay_0;
        end
    end

    // redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0(DELAY,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0_q <= $unsigned(redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x(MUX,15)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_s or redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_q = redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_q = redist15_sync_together48_aunroll_x_in_c1_eni1_12_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_q = 32'b0;
        endcase
    end

    // redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_inputreg0(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_11_tpl);
        end
    end

    // redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4(DELAY,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_delay_0 <= '0;
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_q <= '0;
        end
        else
        begin
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_delay_0 <= $unsigned(redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_inputreg0_q);
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_q <= redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_delay_0;
        end
    end

    // redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0(DELAY,130)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0_q <= $unsigned(redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x(MUX,14)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_s or redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_q = redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_q = redist14_sync_together48_aunroll_x_in_c1_eni1_11_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_q = 32'b0;
        endcase
    end

    // redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4(DELAY,115)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_0 <= '0;
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_1 <= '0;
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_2 <= '0;
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_q <= '0;
        end
        else
        begin
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_0 <= $unsigned(in_c1_eni1_10_tpl);
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_1 <= redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_0;
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_2 <= redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_1;
            redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_q <= redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_delay_2;
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x(MUX,13)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_s or redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_q = redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_q = redist13_sync_together48_aunroll_x_in_c1_eni1_10_tpl_4_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_q = 8'b0;
        endcase
    end

    // redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4(DELAY,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_0 <= '0;
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_1 <= '0;
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_2 <= '0;
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_q <= '0;
        end
        else
        begin
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_0 <= $unsigned(in_c1_eni1_9_tpl);
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_1 <= redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_0;
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_2 <= redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_1;
            redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_q <= redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_delay_2;
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x(MUX,12)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_s or redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_q = redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_q = redist12_sync_together48_aunroll_x_in_c1_eni1_9_tpl_4_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_q = 8'b0;
        endcase
    end

    // redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4(DELAY,113)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_0 <= '0;
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_1 <= '0;
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_2 <= '0;
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_q <= '0;
        end
        else
        begin
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_0 <= $unsigned(in_c1_eni1_8_tpl);
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_1 <= redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_0;
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_2 <= redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_1;
            redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_q <= redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_delay_2;
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x(MUX,11)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_s or redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_q = redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_q = redist11_sync_together48_aunroll_x_in_c1_eni1_8_tpl_4_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_q = 8'b0;
        endcase
    end

    // redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4(DELAY,112)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_0 <= '0;
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_1 <= '0;
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_2 <= '0;
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_q <= '0;
        end
        else
        begin
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_0 <= $unsigned(in_c1_eni1_7_tpl);
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_1 <= redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_0;
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_2 <= redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_1;
            redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_q <= redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_delay_2;
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x(MUX,10)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_s or redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_q = redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_q = redist10_sync_together48_aunroll_x_in_c1_eni1_7_tpl_4_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_q = 8'b0;
        endcase
    end

    // redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4(DELAY,111)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_0 <= '0;
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_1 <= '0;
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_2 <= '0;
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_q <= '0;
        end
        else
        begin
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_0 <= $unsigned(in_c1_eni1_6_tpl);
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_1 <= redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_0;
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_2 <= redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_1;
            redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_q <= redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_delay_2;
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x(MUX,9)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_s or redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_q = redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_q = redist9_sync_together48_aunroll_x_in_c1_eni1_6_tpl_4_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_q = 8'b0;
        endcase
    end

    // redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_inputreg0(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_5_tpl);
        end
    end

    // redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4(DELAY,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_delay_0 <= '0;
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_q <= '0;
        end
        else
        begin
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_delay_0 <= $unsigned(redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_inputreg0_q);
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_q <= redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_delay_0;
        end
    end

    // redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0_q <= $unsigned(redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x(MUX,8)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_s or redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_q = redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_q = redist8_sync_together48_aunroll_x_in_c1_eni1_5_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_q = 32'b0;
        endcase
    end

    // redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_inputreg0(DELAY,125)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_4_tpl);
        end
    end

    // redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_delay_0 <= '0;
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_q <= '0;
        end
        else
        begin
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_delay_0 <= $unsigned(redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_inputreg0_q);
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_q <= redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_delay_0;
        end
    end

    // redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0(DELAY,126)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0_q <= $unsigned(redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x(MUX,7)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_s or redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_q = redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_q = redist7_sync_together48_aunroll_x_in_c1_eni1_4_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_q = 32'b0;
        endcase
    end

    // redist5_sync_together48_aunroll_x_in_c1_eni1_3_tpl_1(DELAY,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together48_aunroll_x_in_c1_eni1_3_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together48_aunroll_x_in_c1_eni1_3_tpl_1_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_inputreg0(DELAY,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_inputreg0_q <= $unsigned(redist5_sync_together48_aunroll_x_in_c1_eni1_3_tpl_1_q);
        end
    end

    // redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_delay_0 <= '0;
            redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_q <= '0;
        end
        else
        begin
            redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_delay_0 <= $unsigned(redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_inputreg0_q);
            redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_q <= redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_delay_0;
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x(MUX,6)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_s or redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_q = redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_q = redist6_sync_together48_aunroll_x_in_c1_eni1_3_tpl_4_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_q = 32'b0;
        endcase
    end

    // redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_inputreg0(DELAY,122)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_inputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_inputreg0_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_delay_0 <= '0;
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_q <= '0;
        end
        else
        begin
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_delay_0 <= $unsigned(redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_inputreg0_q);
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_q <= redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_delay_0;
        end
    end

    // redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0(DELAY,123)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0_q <= '0;
        end
        else
        begin
            redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0_q <= $unsigned(redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_q);
        end
    end

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x(MUX,5)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_s or redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_q = redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_q = redist4_sync_together48_aunroll_x_in_c1_eni1_2_tpl_4_outputreg0_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_q = 32'b0;
        endcase
    end

    // i_and9_projection20_vt_const_7(CONSTANT,26)
    assign i_and9_projection20_vt_const_7_q = $unsigned(7'b0000000);

    // frac_y_uid58_i_cmp_i_projection18(BITSELECT,57)@1
    assign frac_y_uid58_i_cmp_i_projection18_b = in_c1_eni1_3_tpl[22:0];

    // cstZeroWF_uid38_i_cmp_i_projection18(CONSTANT,37)
    assign cstZeroWF_uid38_i_cmp_i_projection18_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid61_i_cmp_i_projection18(LOGICAL,60)@1 + 1
    assign fracXIsZero_uid61_i_cmp_i_projection18_qi = $unsigned(cstZeroWF_uid38_i_cmp_i_projection18_q == frac_y_uid58_i_cmp_i_projection18_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid61_i_cmp_i_projection18_delay ( .xin(fracXIsZero_uid61_i_cmp_i_projection18_qi), .xout(fracXIsZero_uid61_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid39_i_cmp_i_projection18(CONSTANT,38)
    assign cstAllZWE_uid39_i_cmp_i_projection18_q = $unsigned(8'b00000000);

    // exp_y_uid57_i_cmp_i_projection18(BITSELECT,56)@1
    assign exp_y_uid57_i_cmp_i_projection18_b = in_c1_eni1_3_tpl[30:23];

    // expXIsZero_uid59_i_cmp_i_projection18(LOGICAL,58)@1 + 1
    assign expXIsZero_uid59_i_cmp_i_projection18_qi = $unsigned(exp_y_uid57_i_cmp_i_projection18_b == cstAllZWE_uid39_i_cmp_i_projection18_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid59_i_cmp_i_projection18_delay ( .xin(expXIsZero_uid59_i_cmp_i_projection18_qi), .xout(expXIsZero_uid59_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_y_uid63_i_cmp_i_projection18(LOGICAL,62)@2
    assign excZ_y_uid63_i_cmp_i_projection18_q = expXIsZero_uid59_i_cmp_i_projection18_q & fracXIsZero_uid61_i_cmp_i_projection18_q;

    // invExcYZ_uid93_i_cmp_i_projection18(LOGICAL,92)@2
    assign invExcYZ_uid93_i_cmp_i_projection18_q = ~ (excZ_y_uid63_i_cmp_i_projection18_q);

    // c_float_4_500000e_0139(FLOATCONSTANT,22)
    assign c_float_4_500000e_0139_q = $unsigned(32'b01000010001101000000000000000000);

    // frac_x_uid41_i_cmp_i_projection18(BITSELECT,40)@1
    assign frac_x_uid41_i_cmp_i_projection18_b = c_float_4_500000e_0139_q[22:0];

    // fracXIsZero_uid44_i_cmp_i_projection18(LOGICAL,43)@1 + 1
    assign fracXIsZero_uid44_i_cmp_i_projection18_qi = $unsigned(cstZeroWF_uid38_i_cmp_i_projection18_q == frac_x_uid41_i_cmp_i_projection18_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid44_i_cmp_i_projection18_delay ( .xin(fracXIsZero_uid44_i_cmp_i_projection18_qi), .xout(fracXIsZero_uid44_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // exp_x_uid40_i_cmp_i_projection18(BITSELECT,39)@1
    assign exp_x_uid40_i_cmp_i_projection18_b = c_float_4_500000e_0139_q[30:23];

    // expXIsZero_uid42_i_cmp_i_projection18(LOGICAL,41)@1 + 1
    assign expXIsZero_uid42_i_cmp_i_projection18_qi = $unsigned(exp_x_uid40_i_cmp_i_projection18_b == cstAllZWE_uid39_i_cmp_i_projection18_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsZero_uid42_i_cmp_i_projection18_delay ( .xin(expXIsZero_uid42_i_cmp_i_projection18_qi), .xout(expXIsZero_uid42_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excZ_x_uid46_i_cmp_i_projection18(LOGICAL,45)@2
    assign excZ_x_uid46_i_cmp_i_projection18_q = expXIsZero_uid42_i_cmp_i_projection18_q & fracXIsZero_uid44_i_cmp_i_projection18_q;

    // invExcXZ_uid94_i_cmp_i_projection18(LOGICAL,93)@2
    assign invExcXZ_uid94_i_cmp_i_projection18_q = ~ (excZ_x_uid46_i_cmp_i_projection18_q);

    // oneNonZero_uid95_i_cmp_i_projection18(LOGICAL,94)@2 + 1
    assign oneNonZero_uid95_i_cmp_i_projection18_qi = invExcXZ_uid94_i_cmp_i_projection18_q | invExcYZ_uid93_i_cmp_i_projection18_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneNonZero_uid95_i_cmp_i_projection18_delay ( .xin(oneNonZero_uid95_i_cmp_i_projection18_qi), .xout(oneNonZero_uid95_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // two_uid87_i_cmp_i_projection18(CONSTANT,86)
    assign two_uid87_i_cmp_i_projection18_q = $unsigned(2'b10);

    // signX_uid85_i_cmp_i_projection18(BITSELECT,84)@2
    assign signX_uid85_i_cmp_i_projection18_b = $unsigned(c_float_4_500000e_0139_q[31:31]);

    // signY_uid86_i_cmp_i_projection18(BITSELECT,85)@2
    assign signY_uid86_i_cmp_i_projection18_b = $unsigned(redist5_sync_together48_aunroll_x_in_c1_eni1_3_tpl_1_q[31:31]);

    // concSXSY_uid88_i_cmp_i_projection18(BITJOIN,87)@2
    assign concSXSY_uid88_i_cmp_i_projection18_q = {signX_uid85_i_cmp_i_projection18_b, signY_uid86_i_cmp_i_projection18_b};

    // sxLTsy_uid89_i_cmp_i_projection18(LOGICAL,88)@2 + 1
    assign sxLTsy_uid89_i_cmp_i_projection18_qi = $unsigned(concSXSY_uid88_i_cmp_i_projection18_q == two_uid87_i_cmp_i_projection18_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxLTsy_uid89_i_cmp_i_projection18_delay ( .xin(sxLTsy_uid89_i_cmp_i_projection18_qi), .xout(sxLTsy_uid89_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rc2_uid96_i_cmp_i_projection18(LOGICAL,95)@3
    assign rc2_uid96_i_cmp_i_projection18_q = sxLTsy_uid89_i_cmp_i_projection18_q & oneNonZero_uid95_i_cmp_i_projection18_q;

    // expFracX_uid76_i_cmp_i_projection18(BITJOIN,75)@1
    assign expFracX_uid76_i_cmp_i_projection18_q = {exp_x_uid40_i_cmp_i_projection18_b, frac_x_uid41_i_cmp_i_projection18_b};

    // expFracY_uid78_i_cmp_i_projection18(BITJOIN,77)@1
    assign expFracY_uid78_i_cmp_i_projection18_q = {exp_y_uid57_i_cmp_i_projection18_b, frac_y_uid58_i_cmp_i_projection18_b};

    // efxGTefy_uid80_i_cmp_i_projection18(COMPARE,79)@1 + 1
    assign efxGTefy_uid80_i_cmp_i_projection18_a = {2'b00, expFracY_uid78_i_cmp_i_projection18_q};
    assign efxGTefy_uid80_i_cmp_i_projection18_b = {2'b00, expFracX_uid76_i_cmp_i_projection18_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxGTefy_uid80_i_cmp_i_projection18_o <= 33'b0;
        end
        else
        begin
            efxGTefy_uid80_i_cmp_i_projection18_o <= $unsigned(efxGTefy_uid80_i_cmp_i_projection18_a) - $unsigned(efxGTefy_uid80_i_cmp_i_projection18_b);
        end
    end
    assign efxGTefy_uid80_i_cmp_i_projection18_c[0] = efxGTefy_uid80_i_cmp_i_projection18_o[32];

    // efxLTefy_uid81_i_cmp_i_projection18(COMPARE,80)@1 + 1
    assign efxLTefy_uid81_i_cmp_i_projection18_a = {2'b00, expFracX_uid76_i_cmp_i_projection18_q};
    assign efxLTefy_uid81_i_cmp_i_projection18_b = {2'b00, expFracY_uid78_i_cmp_i_projection18_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            efxLTefy_uid81_i_cmp_i_projection18_o <= 33'b0;
        end
        else
        begin
            efxLTefy_uid81_i_cmp_i_projection18_o <= $unsigned(efxLTefy_uid81_i_cmp_i_projection18_a) - $unsigned(efxLTefy_uid81_i_cmp_i_projection18_b);
        end
    end
    assign efxLTefy_uid81_i_cmp_i_projection18_c[0] = efxLTefy_uid81_i_cmp_i_projection18_o[32];

    // expFracCompMux_uid92_i_cmp_i_projection18(MUX,91)@2
    assign expFracCompMux_uid92_i_cmp_i_projection18_s = signX_uid85_i_cmp_i_projection18_b;
    always @(expFracCompMux_uid92_i_cmp_i_projection18_s or efxLTefy_uid81_i_cmp_i_projection18_c or efxGTefy_uid80_i_cmp_i_projection18_c)
    begin
        unique case (expFracCompMux_uid92_i_cmp_i_projection18_s)
            1'b0 : expFracCompMux_uid92_i_cmp_i_projection18_q = efxLTefy_uid81_i_cmp_i_projection18_c;
            1'b1 : expFracCompMux_uid92_i_cmp_i_projection18_q = efxGTefy_uid80_i_cmp_i_projection18_c;
            default : expFracCompMux_uid92_i_cmp_i_projection18_q = 1'b0;
        endcase
    end

    // xorSigns_uid90_i_cmp_i_projection18(LOGICAL,89)@2
    assign xorSigns_uid90_i_cmp_i_projection18_q = signX_uid85_i_cmp_i_projection18_b ^ signY_uid86_i_cmp_i_projection18_b;

    // sxEQsy_uid91_i_cmp_i_projection18(LOGICAL,90)@2
    assign sxEQsy_uid91_i_cmp_i_projection18_q = ~ (xorSigns_uid90_i_cmp_i_projection18_q);

    // sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18(LOGICAL,96)@2 + 1
    assign sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_qi = sxEQsy_uid91_i_cmp_i_projection18_q & expFracCompMux_uid92_i_cmp_i_projection18_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_delay ( .xin(sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_qi), .xout(sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // r_uid98_i_cmp_i_projection18(LOGICAL,97)@3 + 1
    assign r_uid98_i_cmp_i_projection18_qi = sxEQsyExpFracCompMux_uid97_i_cmp_i_projection18_q | rc2_uid96_i_cmp_i_projection18_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    r_uid98_i_cmp_i_projection18_delay ( .xin(r_uid98_i_cmp_i_projection18_qi), .xout(r_uid98_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid62_i_cmp_i_projection18(LOGICAL,61)@2
    assign fracXIsNotZero_uid62_i_cmp_i_projection18_q = ~ (fracXIsZero_uid61_i_cmp_i_projection18_q);

    // cstAllOWE_uid37_i_cmp_i_projection18(CONSTANT,36)
    assign cstAllOWE_uid37_i_cmp_i_projection18_q = $unsigned(8'b11111111);

    // expXIsMax_uid60_i_cmp_i_projection18(LOGICAL,59)@1 + 1
    assign expXIsMax_uid60_i_cmp_i_projection18_qi = $unsigned(exp_y_uid57_i_cmp_i_projection18_b == cstAllOWE_uid37_i_cmp_i_projection18_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid60_i_cmp_i_projection18_delay ( .xin(expXIsMax_uid60_i_cmp_i_projection18_qi), .xout(expXIsMax_uid60_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_y_uid65_i_cmp_i_projection18(LOGICAL,64)@2
    assign excN_y_uid65_i_cmp_i_projection18_q = expXIsMax_uid60_i_cmp_i_projection18_q & fracXIsNotZero_uid62_i_cmp_i_projection18_q;

    // fracXIsNotZero_uid45_i_cmp_i_projection18(LOGICAL,44)@2
    assign fracXIsNotZero_uid45_i_cmp_i_projection18_q = ~ (fracXIsZero_uid44_i_cmp_i_projection18_q);

    // expXIsMax_uid43_i_cmp_i_projection18(LOGICAL,42)@1 + 1
    assign expXIsMax_uid43_i_cmp_i_projection18_qi = $unsigned(exp_x_uid40_i_cmp_i_projection18_b == cstAllOWE_uid37_i_cmp_i_projection18_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid43_i_cmp_i_projection18_delay ( .xin(expXIsMax_uid43_i_cmp_i_projection18_qi), .xout(expXIsMax_uid43_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excN_x_uid48_i_cmp_i_projection18(LOGICAL,47)@2
    assign excN_x_uid48_i_cmp_i_projection18_q = expXIsMax_uid43_i_cmp_i_projection18_q & fracXIsNotZero_uid45_i_cmp_i_projection18_q;

    // oneIsNaN_uid71_i_cmp_i_projection18(LOGICAL,70)@2 + 1
    assign oneIsNaN_uid71_i_cmp_i_projection18_qi = excN_x_uid48_i_cmp_i_projection18_q | excN_y_uid65_i_cmp_i_projection18_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    oneIsNaN_uid71_i_cmp_i_projection18_delay ( .xin(oneIsNaN_uid71_i_cmp_i_projection18_qi), .xout(oneIsNaN_uid71_i_cmp_i_projection18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist0_oneIsNaN_uid71_i_cmp_i_projection18_q_2(DELAY,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_oneIsNaN_uid71_i_cmp_i_projection18_q_2_q <= '0;
        end
        else
        begin
            redist0_oneIsNaN_uid71_i_cmp_i_projection18_q_2_q <= $unsigned(oneIsNaN_uid71_i_cmp_i_projection18_q);
        end
    end

    // rPostExc_uid99_i_cmp_i_projection18(MUX,98)@4
    assign rPostExc_uid99_i_cmp_i_projection18_s = redist0_oneIsNaN_uid71_i_cmp_i_projection18_q_2_q;
    always @(rPostExc_uid99_i_cmp_i_projection18_s or r_uid98_i_cmp_i_projection18_q or GND_q)
    begin
        unique case (rPostExc_uid99_i_cmp_i_projection18_s)
            1'b0 : rPostExc_uid99_i_cmp_i_projection18_q = r_uid98_i_cmp_i_projection18_q;
            1'b1 : rPostExc_uid99_i_cmp_i_projection18_q = GND_q;
            default : rPostExc_uid99_i_cmp_i_projection18_q = 1'b0;
        endcase
    end

    // i_conv8_projection19_sel_x(BITSELECT,2)@4
    assign i_conv8_projection19_sel_x_b = {7'b0000000, rPostExc_uid99_i_cmp_i_projection18_q[0:0]};

    // i_conv8_projection19_vt_select_0(BITSELECT,33)@4
    assign i_conv8_projection19_vt_select_0_b = i_conv8_projection19_sel_x_b[0:0];

    // i_conv8_projection19_vt_join(BITJOIN,32)@4
    assign i_conv8_projection19_vt_join_q = {i_and9_projection20_vt_const_7_q, i_conv8_projection19_vt_select_0_b};

    // i_and9_projection20(LOGICAL,25)@4
    assign i_and9_projection20_q = redist2_sync_together48_aunroll_x_in_c1_eni1_1_tpl_3_q & i_conv8_projection19_vt_join_q;

    // i_and9_projection20_vt_select_0(BITSELECT,28)@4
    assign i_and9_projection20_vt_select_0_b = i_and9_projection20_q[0:0];

    // redist1_i_and9_projection20_vt_select_0_b_1(DELAY,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_and9_projection20_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist1_i_and9_projection20_vt_select_0_b_1_q <= $unsigned(i_and9_projection20_vt_select_0_b);
        end
    end

    // i_and9_projection20_vt_join(BITJOIN,27)@5
    assign i_and9_projection20_vt_join_q = {i_and9_projection20_vt_const_7_q, redist1_i_and9_projection20_vt_select_0_b_1_q};

    // i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x(MUX,4)@5
    assign i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_s = i_tobool_projection17_sel_x_b;
    always @(i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_s or redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4_q or i_and9_projection20_vt_join_q)
    begin
        unique case (i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_s)
            1'b0 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_q = redist3_sync_together48_aunroll_x_in_c1_eni1_1_tpl_4_q;
            1'b1 : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_q = i_and9_projection20_vt_join_q;
            default : i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_q = 8'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,19)@5
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_0_x_q;
    assign out_c1_exi1_2_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_1_x_q;
    assign out_c1_exi1_3_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_2_x_q;
    assign out_c1_exi1_4_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_3_x_q;
    assign out_c1_exi1_5_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_4_x_q;
    assign out_c1_exi1_6_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_5_x_q;
    assign out_c1_exi1_7_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_6_x_q;
    assign out_c1_exi1_8_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_7_x_q;
    assign out_c1_exi1_9_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_8_x_q;
    assign out_c1_exi1_10_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_9_x_q;
    assign out_c1_exi1_11_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_10_x_q;
    assign out_c1_exi1_12_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_11_x_q;
    assign out_c1_exi1_13_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_12_x_q;
    assign out_c1_exi1_14_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_13_x_q;
    assign out_c1_exi1_15_tpl = i_writedata6_fca_3_4_insert_or_writedata_fca_3_4_insert_projection36_14_x_q;
    assign out_o_valid = redist19_sync_together48_aunroll_x_in_i_valid_4_q;
    assign out_unnamed_projection1 = GND_q;

endmodule
