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

// SystemVerilog created from flt_i_sfc_logic_s_c1_in_wt_entry_windowings_c1_enter_windowing0_divideBlock_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_faithfulRounding_3f1ot88jeekgewgqygwzc36if8il9klli4010i10u10j10k10w10f10x10g10h10770p70q70m70ie03d0ld0xf0cj0uj07l0rj0aj0mk0dp054cz5iwt7hrliwt7ztlcx26154c2463b0c2463a0054c2a6355y
// Created for function/kernel streamer
// SystemVerilog created on Fri Jan 20 22:48:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000b0c2463a0054c2a6355y (
    input wire [31:0] in_0,
    input wire [31:0] in_1,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] cstBiasM1_uid7_block_rsrvd_fix_q;
    wire [7:0] expX_uid10_block_rsrvd_fix_b;
    wire [22:0] fracX_uid11_block_rsrvd_fix_b;
    wire [0:0] signX_uid12_block_rsrvd_fix_b;
    wire [7:0] expY_uid13_block_rsrvd_fix_b;
    wire [22:0] fracY_uid14_block_rsrvd_fix_b;
    wire [0:0] signY_uid15_block_rsrvd_fix_b;
    wire [22:0] paddingY_uid16_block_rsrvd_fix_q;
    wire [23:0] updatedY_uid17_block_rsrvd_fix_q;
    wire [7:0] cstAllOWE_uid19_block_rsrvd_fix_q;
    wire [7:0] cstAllZWE_uid21_block_rsrvd_fix_q;
    wire [0:0] excZ_x_uid24_block_rsrvd_fix_qi;
    reg [0:0] excZ_x_uid24_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid25_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid25_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid26_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid26_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid27_block_rsrvd_fix_q;
    wire [0:0] excI_x_uid28_block_rsrvd_fix_qi;
    reg [0:0] excI_x_uid28_block_rsrvd_fix_q;
    wire [0:0] excN_x_uid29_block_rsrvd_fix_qi;
    reg [0:0] excN_x_uid29_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid30_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid31_block_rsrvd_fix_q;
    wire [0:0] excR_x_uid32_block_rsrvd_fix_qi;
    reg [0:0] excR_x_uid32_block_rsrvd_fix_q;
    wire [0:0] excZ_y_uid38_block_rsrvd_fix_qi;
    reg [0:0] excZ_y_uid38_block_rsrvd_fix_q;
    wire [0:0] expXIsMax_uid39_block_rsrvd_fix_qi;
    reg [0:0] expXIsMax_uid39_block_rsrvd_fix_q;
    wire [0:0] fracXIsZero_uid40_block_rsrvd_fix_qi;
    reg [0:0] fracXIsZero_uid40_block_rsrvd_fix_q;
    wire [0:0] fracXIsNotZero_uid41_block_rsrvd_fix_q;
    wire [0:0] excI_y_uid42_block_rsrvd_fix_qi;
    reg [0:0] excI_y_uid42_block_rsrvd_fix_q;
    wire [0:0] excN_y_uid43_block_rsrvd_fix_qi;
    reg [0:0] excN_y_uid43_block_rsrvd_fix_q;
    wire [0:0] invExpXIsMax_uid44_block_rsrvd_fix_qi;
    reg [0:0] invExpXIsMax_uid44_block_rsrvd_fix_q;
    wire [0:0] InvExpXIsZero_uid45_block_rsrvd_fix_q;
    wire [0:0] excR_y_uid46_block_rsrvd_fix_qi;
    reg [0:0] excR_y_uid46_block_rsrvd_fix_q;
    wire [0:0] signR_uid47_block_rsrvd_fix_qi;
    reg [0:0] signR_uid47_block_rsrvd_fix_q;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_a;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_b;
    logic [8:0] expXmY_uid48_block_rsrvd_fix_o;
    wire [8:0] expXmY_uid48_block_rsrvd_fix_q;
    wire [10:0] expR_uid49_block_rsrvd_fix_a;
    wire [10:0] expR_uid49_block_rsrvd_fix_b;
    logic [10:0] expR_uid49_block_rsrvd_fix_o;
    wire [9:0] expR_uid49_block_rsrvd_fix_q;
    wire [8:0] yAddr_uid52_block_rsrvd_fix_b;
    wire [13:0] yPE_uid53_block_rsrvd_fix_b;
    wire [0:0] fracYPostZ_uid57_block_rsrvd_fix_qi;
    reg [0:0] fracYPostZ_uid57_block_rsrvd_fix_q;
    wire [23:0] lOAdded_uid59_block_rsrvd_fix_q;
    wire [1:0] oFracXSE_bottomExtension_uid62_block_rsrvd_fix_q;
    wire [25:0] oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q;
    wire [0:0] divValPreNormTrunc_uid67_block_rsrvd_fix_s;
    reg [25:0] divValPreNormTrunc_uid67_block_rsrvd_fix_q;
    wire [0:0] norm_uid68_block_rsrvd_fix_b;
    wire [24:0] divValPreNormHigh_uid69_block_rsrvd_fix_in;
    wire [23:0] divValPreNormHigh_uid69_block_rsrvd_fix_b;
    wire [23:0] divValPreNormLow_uid70_block_rsrvd_fix_in;
    wire [23:0] divValPreNormLow_uid70_block_rsrvd_fix_b;
    wire [0:0] normFracRnd_uid71_block_rsrvd_fix_s;
    reg [23:0] normFracRnd_uid71_block_rsrvd_fix_q;
    wire [33:0] expFracRnd_uid72_block_rsrvd_fix_q;
    wire [24:0] rndOp_uid76_block_rsrvd_fix_q;
    wire [35:0] expFracPostRnd_uid77_block_rsrvd_fix_a;
    wire [35:0] expFracPostRnd_uid77_block_rsrvd_fix_b;
    logic [35:0] expFracPostRnd_uid77_block_rsrvd_fix_o;
    wire [34:0] expFracPostRnd_uid77_block_rsrvd_fix_q;
    wire [23:0] fracRPreExc_uid79_block_rsrvd_fix_in;
    wire [22:0] fracRPreExc_uid79_block_rsrvd_fix_b;
    wire [31:0] excRPreExc_uid80_block_rsrvd_fix_in;
    wire [7:0] excRPreExc_uid80_block_rsrvd_fix_b;
    wire [10:0] expRExt_uid81_block_rsrvd_fix_b;
    wire [12:0] expUdf_uid82_block_rsrvd_fix_a;
    wire [12:0] expUdf_uid82_block_rsrvd_fix_b;
    logic [12:0] expUdf_uid82_block_rsrvd_fix_o;
    wire [0:0] expUdf_uid82_block_rsrvd_fix_n;
    wire [12:0] expOvf_uid85_block_rsrvd_fix_a;
    wire [12:0] expOvf_uid85_block_rsrvd_fix_b;
    logic [12:0] expOvf_uid85_block_rsrvd_fix_o;
    wire [0:0] expOvf_uid85_block_rsrvd_fix_n;
    wire [0:0] zeroOverReg_uid86_block_rsrvd_fix_q;
    wire [0:0] regOverRegWithUf_uid87_block_rsrvd_fix_q;
    wire [0:0] xRegOrZero_uid88_block_rsrvd_fix_q;
    wire [0:0] regOrZeroOverInf_uid89_block_rsrvd_fix_qi;
    reg [0:0] regOrZeroOverInf_uid89_block_rsrvd_fix_q;
    wire [0:0] excRZero_uid90_block_rsrvd_fix_qi;
    reg [0:0] excRZero_uid90_block_rsrvd_fix_q;
    wire [0:0] excXRYZ_uid91_block_rsrvd_fix_q;
    wire [0:0] excXRYROvf_uid92_block_rsrvd_fix_q;
    wire [0:0] excXIYZ_uid93_block_rsrvd_fix_q;
    wire [0:0] excXIYR_uid94_block_rsrvd_fix_q;
    wire [0:0] excRInf_uid95_block_rsrvd_fix_qi;
    reg [0:0] excRInf_uid95_block_rsrvd_fix_q;
    wire [0:0] excXZYZ_uid96_block_rsrvd_fix_q;
    wire [0:0] excXIYI_uid97_block_rsrvd_fix_q;
    wire [0:0] excRNaN_uid98_block_rsrvd_fix_qi;
    reg [0:0] excRNaN_uid98_block_rsrvd_fix_q;
    wire [2:0] concExc_uid99_block_rsrvd_fix_q;
    reg [1:0] excREnc_uid100_block_rsrvd_fix_q;
    wire [22:0] oneFracRPostExc2_uid101_block_rsrvd_fix_q;
    wire [1:0] fracRPostExc_uid104_block_rsrvd_fix_s;
    reg [22:0] fracRPostExc_uid104_block_rsrvd_fix_q;
    wire [1:0] expRPostExc_uid108_block_rsrvd_fix_s;
    reg [7:0] expRPostExc_uid108_block_rsrvd_fix_q;
    wire [0:0] invExcRNaN_uid109_block_rsrvd_fix_q;
    wire [0:0] sRPostExc_uid110_block_rsrvd_fix_q;
    wire [31:0] divR_uid111_block_rsrvd_fix_q;
    wire [30:0] os_uid115_invTables_q;
    wire [20:0] os_uid119_invTables_q;
    wire [11:0] yT1_uid127_invPolyEval_b;
    wire [0:0] lowRangeB_uid129_invPolyEval_in;
    wire [0:0] lowRangeB_uid129_invPolyEval_b;
    wire [11:0] highBBits_uid130_invPolyEval_b;
    wire [21:0] s1sumAHighB_uid131_invPolyEval_a;
    wire [21:0] s1sumAHighB_uid131_invPolyEval_b;
    logic [21:0] s1sumAHighB_uid131_invPolyEval_o;
    wire [21:0] s1sumAHighB_uid131_invPolyEval_q;
    wire [22:0] s1_uid132_invPolyEval_q;
    wire [1:0] lowRangeB_uid135_invPolyEval_in;
    wire [1:0] lowRangeB_uid135_invPolyEval_b;
    wire [21:0] highBBits_uid136_invPolyEval_b;
    wire [31:0] s2sumAHighB_uid137_invPolyEval_a;
    wire [31:0] s2sumAHighB_uid137_invPolyEval_b;
    logic [31:0] s2sumAHighB_uid137_invPolyEval_o;
    wire [31:0] s2sumAHighB_uid137_invPolyEval_q;
    wire [33:0] s2_uid138_invPolyEval_q;
    wire [49:0] osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_in;
    wire [25:0] osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b;
    wire [12:0] osig_uid144_pT1_uid128_invPolyEval_b;
    wire [36:0] osig_uid147_pT2_uid134_invPolyEval_in;
    wire [23:0] osig_uid147_pT2_uid134_invPolyEval_b;
    wire [0:0] memoryC1_uid118_invTables_q_const_q;
    wire [11:0] x0_uid150_fracYZero_uid16_block_rsrvd_fix_in;
    wire [11:0] x0_uid150_fracYZero_uid16_block_rsrvd_fix_b;
    wire [0:0] eq0_uid152_fracYZero_uid16_block_rsrvd_fix_qi;
    reg [0:0] eq0_uid152_fracYZero_uid16_block_rsrvd_fix_q;
    wire [10:0] x1_uid153_fracYZero_uid16_block_rsrvd_fix_b;
    wire [11:0] eq1_uid155_fracYZero_uid16_block_rsrvd_fix_a;
    wire [0:0] eq1_uid155_fracYZero_uid16_block_rsrvd_fix_qi;
    reg [0:0] eq1_uid155_fracYZero_uid16_block_rsrvd_fix_q;
    wire [0:0] andEq_uid156_fracYZero_uid16_block_rsrvd_fix_qi;
    reg [0:0] andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q;
    wire memoryC0_uid113_invTables_lutmem_reset0;
    wire [19:0] memoryC0_uid113_invTables_lutmem_ia;
    wire [8:0] memoryC0_uid113_invTables_lutmem_aa;
    wire [8:0] memoryC0_uid113_invTables_lutmem_ab;
    wire [19:0] memoryC0_uid113_invTables_lutmem_ir;
    wire [19:0] memoryC0_uid113_invTables_lutmem_r;
    wire memoryC0_uid114_invTables_lutmem_reset0;
    wire [10:0] memoryC0_uid114_invTables_lutmem_ia;
    wire [8:0] memoryC0_uid114_invTables_lutmem_aa;
    wire [8:0] memoryC0_uid114_invTables_lutmem_ab;
    wire [10:0] memoryC0_uid114_invTables_lutmem_ir;
    wire [10:0] memoryC0_uid114_invTables_lutmem_r;
    wire memoryC1_uid117_invTables_lutmem_reset0;
    wire [19:0] memoryC1_uid117_invTables_lutmem_ia;
    wire [8:0] memoryC1_uid117_invTables_lutmem_aa;
    wire [8:0] memoryC1_uid117_invTables_lutmem_ab;
    wire [19:0] memoryC1_uid117_invTables_lutmem_ir;
    wire [19:0] memoryC1_uid117_invTables_lutmem_r;
    wire memoryC2_uid121_invTables_lutmem_reset0;
    wire [11:0] memoryC2_uid121_invTables_lutmem_ia;
    wire [8:0] memoryC2_uid121_invTables_lutmem_aa;
    wire [8:0] memoryC2_uid121_invTables_lutmem_ab;
    wire [11:0] memoryC2_uid121_invTables_lutmem_ir;
    wire [11:0] memoryC2_uid121_invTables_lutmem_r;
    reg [7:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_a0;
    reg [5:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_b0;
    reg [13:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_s1;
    wire [13:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_pr;
    reg [13:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q;
    wire [49:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_join_0_q;
    wire [44:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1_q;
    wire [44:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1_qint;
    wire [50:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_a;
    wire [50:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_b;
    logic [50:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_o;
    wire [50:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_q;
    wire [36:0] prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_q;
    wire [36:0] prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_qint;
    wire [38:0] prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_a;
    wire [38:0] prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_b;
    logic [38:0] prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_o;
    wire [37:0] prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_q;
    wire prodXY_uid143_pT1_uid128_invPolyEval_cma_reset;
    (* preserve *) reg [11:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_a0 [0:0];
    (* preserve *) reg signed [11:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_c0 [0:0];
    wire signed [12:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_l [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_p [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_u [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_w [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_x [0:0];
    wire signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_y [0:0];
    reg signed [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_s [0:0];
    wire [24:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_qq;
    wire [23:0] prodXY_uid143_pT1_uid128_invPolyEval_cma_q;
    wire prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0;
    wire prodXY_uid143_pT1_uid128_invPolyEval_cma_ena1;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_c0 [0:0];
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_p [0:0];
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_u [0:0];
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_w [0:0];
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_x [0:0];
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_y [0:0];
    reg [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_s [0:0];
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_qq;
    wire [35:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena0;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena1;
    wire prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_reset;
    (* preserve *) reg [17:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_a0 [0:0];
    (* preserve *) reg [13:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_c0 [0:0];
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_p [0:0];
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_u [0:0];
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_w [0:0];
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_x [0:0];
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_y [0:0];
    reg [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_s [0:0];
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_qq;
    wire [31:0] prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q;
    wire prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena0;
    wire prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena1;
    wire prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_reset;
    (* preserve *) reg [13:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_a0 [0:0];
    (* preserve *) reg signed [10:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_c0 [0:0];
    wire signed [14:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_l [0:0];
    wire signed [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_p [0:0];
    wire signed [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_u [0:0];
    wire signed [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_w [0:0];
    wire signed [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_x [0:0];
    wire signed [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_y [0:0];
    reg signed [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_s [0:0];
    wire [25:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_qq;
    wire [18:0] prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q;
    wire prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena0;
    wire prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena1;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_reset;
    (* preserve *) reg [7:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_c0 [0:1];
    wire [25:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_p [0:1];
    wire [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_u [0:1];
    wire [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_w [0:0];
    wire [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_x [0:0];
    wire [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_y [0:0];
    reg [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_s [0:0];
    wire [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_qq;
    wire [26:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena0;
    wire prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena1;
    wire [11:0] y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select_b;
    wire [11:0] y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select_c;
    wire [17:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_b;
    wire [7:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_c;
    wire [17:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_b;
    wire [5:0] prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_c;
    wire [17:0] prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_b;
    wire [4:0] prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_c;
    wire [31:0] invY_uid55_block_rsrvd_fix_merged_bit_select_in;
    wire [25:0] invY_uid55_block_rsrvd_fix_merged_bit_select_b;
    wire [0:0] invY_uid55_block_rsrvd_fix_merged_bit_select_c;
    reg [25:0] redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q;
    reg [0:0] redist1_invY_uid55_block_rsrvd_fix_merged_bit_select_c_1_q;
    reg [26:0] redist2_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q_1_q;
    reg [18:0] redist3_prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q_1_q;
    reg [31:0] redist4_prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q_1_q;
    reg [35:0] redist5_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q_1_q;
    reg [13:0] redist6_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q_1_q;
    reg [11:0] redist7_memoryC2_uid121_invTables_lutmem_r_1_q;
    reg [19:0] redist8_memoryC1_uid117_invTables_lutmem_r_1_q;
    reg [10:0] redist9_memoryC0_uid114_invTables_lutmem_r_1_q;
    reg [19:0] redist10_memoryC0_uid113_invTables_lutmem_r_1_q;
    reg [0:0] redist11_andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q_11_q;
    reg [25:0] redist12_osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b_1_q;
    reg [21:0] redist13_highBBits_uid136_invPolyEval_b_1_q;
    reg [1:0] redist14_lowRangeB_uid135_invPolyEval_b_1_q;
    reg [11:0] redist15_highBBits_uid130_invPolyEval_b_1_q;
    reg [0:0] redist16_lowRangeB_uid129_invPolyEval_b_2_q;
    reg [0:0] redist16_lowRangeB_uid129_invPolyEval_b_2_delay_0;
    reg [0:0] redist17_excRNaN_uid98_block_rsrvd_fix_q_2_q;
    reg [7:0] redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_q;
    reg [7:0] redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_delay_0;
    reg [22:0] redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_q;
    reg [22:0] redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_delay_0;
    reg [0:0] redist20_norm_uid68_block_rsrvd_fix_b_1_q;
    reg [23:0] redist21_lOAdded_uid59_block_rsrvd_fix_q_4_q;
    reg [23:0] redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_0;
    reg [23:0] redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_q;
    reg [0:0] redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_0;
    reg [0:0] redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_1;
    reg [13:0] redist23_yPE_uid53_block_rsrvd_fix_b_3_q;
    reg [13:0] redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_0;
    reg [13:0] redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_1;
    reg [13:0] redist24_yPE_uid53_block_rsrvd_fix_b_7_q;
    reg [13:0] redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_0;
    reg [13:0] redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_1;
    reg [8:0] redist25_yAddr_uid52_block_rsrvd_fix_b_3_q;
    reg [8:0] redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_0;
    reg [8:0] redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_1;
    reg [8:0] redist26_yAddr_uid52_block_rsrvd_fix_b_8_q;
    reg [8:0] redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_0;
    reg [8:0] redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_1;
    reg [8:0] redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_2;
    reg [8:0] redist27_expXmY_uid48_block_rsrvd_fix_q_4_q;
    reg [8:0] redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_0;
    reg [8:0] redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_1;
    reg [0:0] redist28_signR_uid47_block_rsrvd_fix_q_8_q;
    reg [0:0] redist29_fracXIsZero_uid40_block_rsrvd_fix_q_17_q;
    reg [0:0] redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_q;
    reg [0:0] redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist31_excZ_y_uid38_block_rsrvd_fix_q_6_q;
    reg [0:0] redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_0;
    reg [0:0] redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_1;
    reg [0:0] redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_2;
    reg [0:0] redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_3;
    reg [0:0] redist32_excZ_y_uid38_block_rsrvd_fix_q_7_q;
    reg [0:0] redist33_excR_x_uid32_block_rsrvd_fix_q_2_q;
    reg [0:0] redist34_excI_x_uid28_block_rsrvd_fix_q_2_q;
    reg [0:0] redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_q;
    reg [0:0] redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_q;
    reg [0:0] redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist37_excZ_x_uid24_block_rsrvd_fix_q_5_q;
    reg [0:0] redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_0;
    reg [0:0] redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_1;
    reg [0:0] redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_2;
    reg [0:0] redist38_excZ_x_uid24_block_rsrvd_fix_q_6_q;
    reg [0:0] redist39_excZ_x_uid24_block_rsrvd_fix_q_7_q;
    reg [0:0] redist40_signY_uid15_block_rsrvd_fix_b_12_q;
    reg [23:0] redist21_lOAdded_uid59_block_rsrvd_fix_q_4_inputreg0_q;
    reg [13:0] redist24_yPE_uid53_block_rsrvd_fix_b_7_inputreg0_q;
    reg [8:0] redist26_yAddr_uid52_block_rsrvd_fix_b_8_inputreg0_q;
    reg [7:0] redist41_expY_uid13_block_rsrvd_fix_b_12_inputreg0_q;
    reg [7:0] redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0_q;
    wire redist41_expY_uid13_block_rsrvd_fix_b_12_mem_reset0;
    wire [7:0] redist41_expY_uid13_block_rsrvd_fix_b_12_mem_ia;
    wire [3:0] redist41_expY_uid13_block_rsrvd_fix_b_12_mem_aa;
    wire [3:0] redist41_expY_uid13_block_rsrvd_fix_b_12_mem_ab;
    wire [7:0] redist41_expY_uid13_block_rsrvd_fix_b_12_mem_iq;
    wire [7:0] redist41_expY_uid13_block_rsrvd_fix_b_12_mem_q;
    wire [3:0] redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_q;
    (* preserve *) reg [3:0] redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i;
    (* preserve *) reg redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_eq;
    reg [3:0] redist41_expY_uid13_block_rsrvd_fix_b_12_wraddr_q;
    wire [3:0] redist41_expY_uid13_block_rsrvd_fix_b_12_mem_last_q;
    wire [0:0] redist41_expY_uid13_block_rsrvd_fix_b_12_cmp_q;
    (* dont_merge *) reg [0:0] redist41_expY_uid13_block_rsrvd_fix_b_12_cmpReg_q;
    wire [0:0] redist41_expY_uid13_block_rsrvd_fix_b_12_notEnable_q;
    wire [0:0] redist41_expY_uid13_block_rsrvd_fix_b_12_nor_q;
    (* dont_merge *) reg [0:0] redist41_expY_uid13_block_rsrvd_fix_b_12_sticky_ena_q;
    wire [0:0] redist41_expY_uid13_block_rsrvd_fix_b_12_enaAnd_q;


    // fracY_uid14_block_rsrvd_fix(BITSELECT,13)@0
    assign fracY_uid14_block_rsrvd_fix_b = in_1[22:0];

    // paddingY_uid16_block_rsrvd_fix(CONSTANT,15)
    assign paddingY_uid16_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000000);

    // fracXIsZero_uid40_block_rsrvd_fix(LOGICAL,39)@0 + 1
    assign fracXIsZero_uid40_block_rsrvd_fix_qi = $unsigned(paddingY_uid16_block_rsrvd_fix_q == fracY_uid14_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid40_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid40_block_rsrvd_fix_qi), .xout(fracXIsZero_uid40_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist29_fracXIsZero_uid40_block_rsrvd_fix_q_17(DELAY,224)
    dspba_delay_ver #( .width(1), .depth(16), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_fracXIsZero_uid40_block_rsrvd_fix_q_17 ( .xin(fracXIsZero_uid40_block_rsrvd_fix_q), .xout(redist29_fracXIsZero_uid40_block_rsrvd_fix_q_17_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllOWE_uid19_block_rsrvd_fix(CONSTANT,18)
    assign cstAllOWE_uid19_block_rsrvd_fix_q = $unsigned(8'b11111111);

    // redist41_expY_uid13_block_rsrvd_fix_b_12_notEnable(LOGICAL,248)
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_notEnable_q = $unsigned(~ (VCC_q));

    // redist41_expY_uid13_block_rsrvd_fix_b_12_nor(LOGICAL,249)
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_nor_q = ~ (redist41_expY_uid13_block_rsrvd_fix_b_12_notEnable_q | redist41_expY_uid13_block_rsrvd_fix_b_12_sticky_ena_q);

    // redist41_expY_uid13_block_rsrvd_fix_b_12_mem_last(CONSTANT,245)
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_mem_last_q = $unsigned(4'b0111);

    // redist41_expY_uid13_block_rsrvd_fix_b_12_cmp(LOGICAL,246)
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_cmp_q = $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_last_q == redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_q ? 1'b1 : 1'b0);

    // redist41_expY_uid13_block_rsrvd_fix_b_12_cmpReg(REG,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_cmpReg_q <= $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_cmp_q);
        end
    end

    // redist41_expY_uid13_block_rsrvd_fix_b_12_sticky_ena(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist41_expY_uid13_block_rsrvd_fix_b_12_nor_q == 1'b1)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_sticky_ena_q <= $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_cmpReg_q);
        end
    end

    // redist41_expY_uid13_block_rsrvd_fix_b_12_enaAnd(LOGICAL,251)
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_enaAnd_q = redist41_expY_uid13_block_rsrvd_fix_b_12_sticky_ena_q & VCC_q;

    // redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt(COUNTER,243)
    // low=0, high=8, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i <= 4'd0;
            redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i == 4'd7)
            begin
                redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_eq <= 1'b0;
            end
            if (redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_eq == 1'b1)
            begin
                redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i <= $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i) + $unsigned(4'd8);
            end
            else
            begin
                redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i <= $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i) + $unsigned(4'd1);
            end
        end
    end
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_q = redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_i[3:0];

    // expY_uid13_block_rsrvd_fix(BITSELECT,12)@0
    assign expY_uid13_block_rsrvd_fix_b = in_1[30:23];

    // redist41_expY_uid13_block_rsrvd_fix_b_12_inputreg0(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_inputreg0_q <= '0;
        end
        else
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_inputreg0_q <= $unsigned(expY_uid13_block_rsrvd_fix_b);
        end
    end

    // redist41_expY_uid13_block_rsrvd_fix_b_12_wraddr(REG,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_wraddr_q <= $unsigned(4'b1000);
        end
        else
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_wraddr_q <= $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_q);
        end
    end

    // redist41_expY_uid13_block_rsrvd_fix_b_12_mem(DUALMEM,242)
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_mem_ia = $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_inputreg0_q);
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_mem_aa = redist41_expY_uid13_block_rsrvd_fix_b_12_wraddr_q;
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_mem_ab = redist41_expY_uid13_block_rsrvd_fix_b_12_rdcnt_q;
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(8),
        .widthad_a(4),
        .numwords_a(9),
        .width_b(8),
        .widthad_b(4),
        .numwords_b(9),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist41_expY_uid13_block_rsrvd_fix_b_12_mem_dmem (
        .clocken1(redist41_expY_uid13_block_rsrvd_fix_b_12_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_reset0),
        .clock1(clock),
        .address_a(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_aa),
        .data_a(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_ab),
        .q_b(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist41_expY_uid13_block_rsrvd_fix_b_12_mem_q = redist41_expY_uid13_block_rsrvd_fix_b_12_mem_iq[7:0];

    // redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0_q <= '0;
        end
        else
        begin
            redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0_q <= $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_mem_q);
        end
    end

    // expXIsMax_uid39_block_rsrvd_fix(LOGICAL,38)@12 + 1
    assign expXIsMax_uid39_block_rsrvd_fix_qi = $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0_q == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid39_block_rsrvd_fix_delay ( .xin(expXIsMax_uid39_block_rsrvd_fix_qi), .xout(expXIsMax_uid39_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist30_expXIsMax_uid39_block_rsrvd_fix_q_5(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_0 <= $unsigned(expXIsMax_uid39_block_rsrvd_fix_q);
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_1 <= redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_0;
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_2 <= redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_1;
            redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_q <= redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // excI_y_uid42_block_rsrvd_fix(LOGICAL,41)@17 + 1
    assign excI_y_uid42_block_rsrvd_fix_qi = redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_q & redist29_fracXIsZero_uid40_block_rsrvd_fix_q_17_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_y_uid42_block_rsrvd_fix_delay ( .xin(excI_y_uid42_block_rsrvd_fix_qi), .xout(excI_y_uid42_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracX_uid11_block_rsrvd_fix(BITSELECT,10)@12
    assign fracX_uid11_block_rsrvd_fix_b = in_0[22:0];

    // fracXIsZero_uid26_block_rsrvd_fix(LOGICAL,25)@12 + 1
    assign fracXIsZero_uid26_block_rsrvd_fix_qi = $unsigned(paddingY_uid16_block_rsrvd_fix_q == fracX_uid11_block_rsrvd_fix_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracXIsZero_uid26_block_rsrvd_fix_delay ( .xin(fracXIsZero_uid26_block_rsrvd_fix_qi), .xout(fracXIsZero_uid26_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0 <= $unsigned(fracXIsZero_uid26_block_rsrvd_fix_q);
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_1 <= redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_0;
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_2 <= redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_1;
            redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_q <= redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // expX_uid10_block_rsrvd_fix(BITSELECT,9)@12
    assign expX_uid10_block_rsrvd_fix_b = in_0[30:23];

    // expXIsMax_uid25_block_rsrvd_fix(LOGICAL,24)@12 + 1
    assign expXIsMax_uid25_block_rsrvd_fix_qi = $unsigned(expX_uid10_block_rsrvd_fix_b == cstAllOWE_uid19_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    expXIsMax_uid25_block_rsrvd_fix_delay ( .xin(expXIsMax_uid25_block_rsrvd_fix_qi), .xout(expXIsMax_uid25_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist36_expXIsMax_uid25_block_rsrvd_fix_q_5(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_0 <= $unsigned(expXIsMax_uid25_block_rsrvd_fix_q);
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_1 <= redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_0;
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_2 <= redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_1;
            redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_q <= redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // excI_x_uid28_block_rsrvd_fix(LOGICAL,27)@17 + 1
    assign excI_x_uid28_block_rsrvd_fix_qi = redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_q & redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excI_x_uid28_block_rsrvd_fix_delay ( .xin(excI_x_uid28_block_rsrvd_fix_qi), .xout(excI_x_uid28_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // excXIYI_uid97_block_rsrvd_fix(LOGICAL,96)@18
    assign excXIYI_uid97_block_rsrvd_fix_q = excI_x_uid28_block_rsrvd_fix_q & excI_y_uid42_block_rsrvd_fix_q;

    // fracXIsNotZero_uid41_block_rsrvd_fix(LOGICAL,40)@17
    assign fracXIsNotZero_uid41_block_rsrvd_fix_q = ~ (redist29_fracXIsZero_uid40_block_rsrvd_fix_q_17_q);

    // excN_y_uid43_block_rsrvd_fix(LOGICAL,42)@17 + 1
    assign excN_y_uid43_block_rsrvd_fix_qi = redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_q & fracXIsNotZero_uid41_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_y_uid43_block_rsrvd_fix_delay ( .xin(excN_y_uid43_block_rsrvd_fix_qi), .xout(excN_y_uid43_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracXIsNotZero_uid27_block_rsrvd_fix(LOGICAL,26)@17
    assign fracXIsNotZero_uid27_block_rsrvd_fix_q = ~ (redist35_fracXIsZero_uid26_block_rsrvd_fix_q_5_q);

    // excN_x_uid29_block_rsrvd_fix(LOGICAL,28)@17 + 1
    assign excN_x_uid29_block_rsrvd_fix_qi = redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_q & fracXIsNotZero_uid27_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excN_x_uid29_block_rsrvd_fix_delay ( .xin(excN_x_uid29_block_rsrvd_fix_qi), .xout(excN_x_uid29_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // cstAllZWE_uid21_block_rsrvd_fix(CONSTANT,20)
    assign cstAllZWE_uid21_block_rsrvd_fix_q = $unsigned(8'b00000000);

    // excZ_y_uid38_block_rsrvd_fix(LOGICAL,37)@12 + 1
    assign excZ_y_uid38_block_rsrvd_fix_qi = $unsigned(redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0_q == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_y_uid38_block_rsrvd_fix_delay ( .xin(excZ_y_uid38_block_rsrvd_fix_qi), .xout(excZ_y_uid38_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist31_excZ_y_uid38_block_rsrvd_fix_q_6(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_0 <= '0;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_1 <= '0;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_2 <= '0;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_3 <= '0;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_0 <= $unsigned(excZ_y_uid38_block_rsrvd_fix_q);
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_1 <= redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_0;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_2 <= redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_1;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_3 <= redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_2;
            redist31_excZ_y_uid38_block_rsrvd_fix_q_6_q <= redist31_excZ_y_uid38_block_rsrvd_fix_q_6_delay_3;
        end
    end

    // excZ_x_uid24_block_rsrvd_fix(LOGICAL,23)@12 + 1
    assign excZ_x_uid24_block_rsrvd_fix_qi = $unsigned(expX_uid10_block_rsrvd_fix_b == cstAllZWE_uid21_block_rsrvd_fix_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excZ_x_uid24_block_rsrvd_fix_delay ( .xin(excZ_x_uid24_block_rsrvd_fix_qi), .xout(excZ_x_uid24_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist37_excZ_x_uid24_block_rsrvd_fix_q_5(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_0 <= '0;
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_1 <= '0;
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_2 <= '0;
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_q <= '0;
        end
        else
        begin
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_0 <= $unsigned(excZ_x_uid24_block_rsrvd_fix_q);
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_1 <= redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_0;
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_2 <= redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_1;
            redist37_excZ_x_uid24_block_rsrvd_fix_q_5_q <= redist37_excZ_x_uid24_block_rsrvd_fix_q_5_delay_2;
        end
    end

    // redist38_excZ_x_uid24_block_rsrvd_fix_q_6(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_excZ_x_uid24_block_rsrvd_fix_q_6_q <= '0;
        end
        else
        begin
            redist38_excZ_x_uid24_block_rsrvd_fix_q_6_q <= $unsigned(redist37_excZ_x_uid24_block_rsrvd_fix_q_5_q);
        end
    end

    // excXZYZ_uid96_block_rsrvd_fix(LOGICAL,95)@18
    assign excXZYZ_uid96_block_rsrvd_fix_q = redist38_excZ_x_uid24_block_rsrvd_fix_q_6_q & redist31_excZ_y_uid38_block_rsrvd_fix_q_6_q;

    // excRNaN_uid98_block_rsrvd_fix(LOGICAL,97)@18 + 1
    assign excRNaN_uid98_block_rsrvd_fix_qi = excXZYZ_uid96_block_rsrvd_fix_q | excN_x_uid29_block_rsrvd_fix_q | excN_y_uid43_block_rsrvd_fix_q | excXIYI_uid97_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRNaN_uid98_block_rsrvd_fix_delay ( .xin(excRNaN_uid98_block_rsrvd_fix_qi), .xout(excRNaN_uid98_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_excRNaN_uid98_block_rsrvd_fix_q_2(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_excRNaN_uid98_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist17_excRNaN_uid98_block_rsrvd_fix_q_2_q <= $unsigned(excRNaN_uid98_block_rsrvd_fix_q);
        end
    end

    // invExcRNaN_uid109_block_rsrvd_fix(LOGICAL,108)@20
    assign invExcRNaN_uid109_block_rsrvd_fix_q = ~ (redist17_excRNaN_uid98_block_rsrvd_fix_q_2_q);

    // signY_uid15_block_rsrvd_fix(BITSELECT,14)@0
    assign signY_uid15_block_rsrvd_fix_b = $unsigned(in_1[31:31]);

    // redist40_signY_uid15_block_rsrvd_fix_b_12(DELAY,235)
    dspba_delay_ver #( .width(1), .depth(12), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist40_signY_uid15_block_rsrvd_fix_b_12 ( .xin(signY_uid15_block_rsrvd_fix_b), .xout(redist40_signY_uid15_block_rsrvd_fix_b_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // signX_uid12_block_rsrvd_fix(BITSELECT,11)@12
    assign signX_uid12_block_rsrvd_fix_b = $unsigned(in_0[31:31]);

    // signR_uid47_block_rsrvd_fix(LOGICAL,46)@12 + 1
    assign signR_uid47_block_rsrvd_fix_qi = signX_uid12_block_rsrvd_fix_b ^ redist40_signY_uid15_block_rsrvd_fix_b_12_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    signR_uid47_block_rsrvd_fix_delay ( .xin(signR_uid47_block_rsrvd_fix_qi), .xout(signR_uid47_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_signR_uid47_block_rsrvd_fix_q_8(DELAY,223)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist28_signR_uid47_block_rsrvd_fix_q_8 ( .xin(signR_uid47_block_rsrvd_fix_q), .xout(redist28_signR_uid47_block_rsrvd_fix_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // sRPostExc_uid110_block_rsrvd_fix(LOGICAL,109)@20
    assign sRPostExc_uid110_block_rsrvd_fix_q = redist28_signR_uid47_block_rsrvd_fix_q_8_q & invExcRNaN_uid109_block_rsrvd_fix_q;

    // lOAdded_uid59_block_rsrvd_fix(BITJOIN,58)@12
    assign lOAdded_uid59_block_rsrvd_fix_q = {VCC_q, fracX_uid11_block_rsrvd_fix_b};

    // redist21_lOAdded_uid59_block_rsrvd_fix_q_4_inputreg0(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_inputreg0_q <= $unsigned(lOAdded_uid59_block_rsrvd_fix_q);
        end
    end

    // redist21_lOAdded_uid59_block_rsrvd_fix_q_4(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_0 <= $unsigned(redist21_lOAdded_uid59_block_rsrvd_fix_q_4_inputreg0_q);
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_1 <= redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_0;
            redist21_lOAdded_uid59_block_rsrvd_fix_q_4_q <= redist21_lOAdded_uid59_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // oFracXSE_bottomExtension_uid62_block_rsrvd_fix(CONSTANT,61)
    assign oFracXSE_bottomExtension_uid62_block_rsrvd_fix_q = $unsigned(2'b00);

    // oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix(BITJOIN,63)@16
    assign oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q = {redist21_lOAdded_uid59_block_rsrvd_fix_q_4_q, oFracXSE_bottomExtension_uid62_block_rsrvd_fix_q};

    // yAddr_uid52_block_rsrvd_fix(BITSELECT,51)@0
    assign yAddr_uid52_block_rsrvd_fix_b = fracY_uid14_block_rsrvd_fix_b[22:14];

    // memoryC2_uid121_invTables_lutmem(DUALMEM,159)@0 + 2
    // in j@20000000
    assign memoryC2_uid121_invTables_lutmem_aa = yAddr_uid52_block_rsrvd_fix_b;
    assign memoryC2_uid121_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(12),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000121_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC2_uid121_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC2_uid121_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC2_uid121_invTables_lutmem_aa),
        .q_a(memoryC2_uid121_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC2_uid121_invTables_lutmem_r = memoryC2_uid121_invTables_lutmem_ir[11:0];

    // redist7_memoryC2_uid121_invTables_lutmem_r_1(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_memoryC2_uid121_invTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist7_memoryC2_uid121_invTables_lutmem_r_1_q <= $unsigned(memoryC2_uid121_invTables_lutmem_r);
        end
    end

    // yPE_uid53_block_rsrvd_fix(BITSELECT,52)@0
    assign yPE_uid53_block_rsrvd_fix_b = in_1[13:0];

    // redist23_yPE_uid53_block_rsrvd_fix_b_3(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist23_yPE_uid53_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_0 <= $unsigned(yPE_uid53_block_rsrvd_fix_b);
            redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_1 <= redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_0;
            redist23_yPE_uid53_block_rsrvd_fix_b_3_q <= redist23_yPE_uid53_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // yT1_uid127_invPolyEval(BITSELECT,126)@3
    assign yT1_uid127_invPolyEval_b = redist23_yPE_uid53_block_rsrvd_fix_b_3_q[13:2];

    // prodXY_uid143_pT1_uid128_invPolyEval_cma(CHAINMULTADD,185)@3 + 2
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_reset = ~ (resetn);
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0 = 1'b1;
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_ena1 = prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0;
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_l[0] = $signed({1'b0, prodXY_uid143_pT1_uid128_invPolyEval_cma_a0[0][11:0]});
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_p[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_l[0] * prodXY_uid143_pT1_uid128_invPolyEval_cma_c0[0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_u[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_p[0][24:0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_w[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_u[0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_x[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_w[0];
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_y[0] = prodXY_uid143_pT1_uid128_invPolyEval_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid143_pT1_uid128_invPolyEval_cma_a0 <= '{default: '0};
            prodXY_uid143_pT1_uid128_invPolyEval_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid143_pT1_uid128_invPolyEval_cma_ena0 == 1'b1)
            begin
                prodXY_uid143_pT1_uid128_invPolyEval_cma_a0[0] <= yT1_uid127_invPolyEval_b;
                prodXY_uid143_pT1_uid128_invPolyEval_cma_c0[0] <= redist7_memoryC2_uid121_invTables_lutmem_r_1_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid143_pT1_uid128_invPolyEval_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid143_pT1_uid128_invPolyEval_cma_ena1 == 1'b1)
            begin
                prodXY_uid143_pT1_uid128_invPolyEval_cma_s[0] <= prodXY_uid143_pT1_uid128_invPolyEval_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(25), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid143_pT1_uid128_invPolyEval_cma_delay ( .xin(prodXY_uid143_pT1_uid128_invPolyEval_cma_s[0]), .xout(prodXY_uid143_pT1_uid128_invPolyEval_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid143_pT1_uid128_invPolyEval_cma_q = $unsigned(prodXY_uid143_pT1_uid128_invPolyEval_cma_qq[23:0]);

    // osig_uid144_pT1_uid128_invPolyEval(BITSELECT,143)@5
    assign osig_uid144_pT1_uid128_invPolyEval_b = $unsigned(prodXY_uid143_pT1_uid128_invPolyEval_cma_q[23:11]);

    // highBBits_uid130_invPolyEval(BITSELECT,129)@5
    assign highBBits_uid130_invPolyEval_b = $unsigned(osig_uid144_pT1_uid128_invPolyEval_b[12:1]);

    // redist15_highBBits_uid130_invPolyEval_b_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_highBBits_uid130_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist15_highBBits_uid130_invPolyEval_b_1_q <= $unsigned(highBBits_uid130_invPolyEval_b);
        end
    end

    // memoryC1_uid118_invTables_q_const(CONSTANT,148)
    assign memoryC1_uid118_invTables_q_const_q = $unsigned(1'b1);

    // redist25_yAddr_uid52_block_rsrvd_fix_b_3(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_0 <= '0;
            redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_1 <= '0;
            redist25_yAddr_uid52_block_rsrvd_fix_b_3_q <= '0;
        end
        else
        begin
            redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_0 <= $unsigned(yAddr_uid52_block_rsrvd_fix_b);
            redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_1 <= redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_0;
            redist25_yAddr_uid52_block_rsrvd_fix_b_3_q <= redist25_yAddr_uid52_block_rsrvd_fix_b_3_delay_1;
        end
    end

    // memoryC1_uid117_invTables_lutmem(DUALMEM,158)@3 + 2
    // in j@20000000
    assign memoryC1_uid117_invTables_lutmem_aa = redist25_yAddr_uid52_block_rsrvd_fix_b_3_q;
    assign memoryC1_uid117_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000117_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC1_uid117_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC1_uid117_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC1_uid117_invTables_lutmem_aa),
        .q_a(memoryC1_uid117_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC1_uid117_invTables_lutmem_r = memoryC1_uid117_invTables_lutmem_ir[19:0];

    // redist8_memoryC1_uid117_invTables_lutmem_r_1(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_memoryC1_uid117_invTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist8_memoryC1_uid117_invTables_lutmem_r_1_q <= $unsigned(memoryC1_uid117_invTables_lutmem_r);
        end
    end

    // os_uid119_invTables(BITJOIN,118)@6
    assign os_uid119_invTables_q = {memoryC1_uid118_invTables_q_const_q, redist8_memoryC1_uid117_invTables_lutmem_r_1_q};

    // s1sumAHighB_uid131_invPolyEval(ADD,130)@6 + 1
    assign s1sumAHighB_uid131_invPolyEval_a = $unsigned({{1{os_uid119_invTables_q[20]}}, os_uid119_invTables_q});
    assign s1sumAHighB_uid131_invPolyEval_b = $unsigned({{10{redist15_highBBits_uid130_invPolyEval_b_1_q[11]}}, redist15_highBBits_uid130_invPolyEval_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            s1sumAHighB_uid131_invPolyEval_o <= 22'b0;
        end
        else
        begin
            s1sumAHighB_uid131_invPolyEval_o <= $unsigned($signed(s1sumAHighB_uid131_invPolyEval_a) + $signed(s1sumAHighB_uid131_invPolyEval_b));
        end
    end
    assign s1sumAHighB_uid131_invPolyEval_q = s1sumAHighB_uid131_invPolyEval_o[21:0];

    // lowRangeB_uid129_invPolyEval(BITSELECT,128)@5
    assign lowRangeB_uid129_invPolyEval_in = osig_uid144_pT1_uid128_invPolyEval_b[0:0];
    assign lowRangeB_uid129_invPolyEval_b = lowRangeB_uid129_invPolyEval_in[0:0];

    // redist16_lowRangeB_uid129_invPolyEval_b_2(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_lowRangeB_uid129_invPolyEval_b_2_delay_0 <= '0;
            redist16_lowRangeB_uid129_invPolyEval_b_2_q <= '0;
        end
        else
        begin
            redist16_lowRangeB_uid129_invPolyEval_b_2_delay_0 <= $unsigned(lowRangeB_uid129_invPolyEval_b);
            redist16_lowRangeB_uid129_invPolyEval_b_2_q <= redist16_lowRangeB_uid129_invPolyEval_b_2_delay_0;
        end
    end

    // s1_uid132_invPolyEval(BITJOIN,131)@7
    assign s1_uid132_invPolyEval_q = {s1sumAHighB_uid131_invPolyEval_q, redist16_lowRangeB_uid129_invPolyEval_b_2_q};

    // prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select(BITSELECT,193)@7
    assign prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_b = $unsigned(s1_uid132_invPolyEval_q[17:0]);
    assign prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_c = $unsigned(s1_uid132_invPolyEval_q[22:18]);

    // redist24_yPE_uid53_block_rsrvd_fix_b_7_inputreg0(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_yPE_uid53_block_rsrvd_fix_b_7_inputreg0_q <= '0;
        end
        else
        begin
            redist24_yPE_uid53_block_rsrvd_fix_b_7_inputreg0_q <= $unsigned(redist23_yPE_uid53_block_rsrvd_fix_b_3_q);
        end
    end

    // redist24_yPE_uid53_block_rsrvd_fix_b_7(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_0 <= '0;
            redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_1 <= '0;
            redist24_yPE_uid53_block_rsrvd_fix_b_7_q <= '0;
        end
        else
        begin
            redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_0 <= $unsigned(redist24_yPE_uid53_block_rsrvd_fix_b_7_inputreg0_q);
            redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_1 <= redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_0;
            redist24_yPE_uid53_block_rsrvd_fix_b_7_q <= redist24_yPE_uid53_block_rsrvd_fix_b_7_delay_1;
        end
    end

    // prodXY_uid146_pT2_uid134_invPolyEval_im3_cma(CHAINMULTADD,188)@7 + 2
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_reset = ~ (resetn);
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena0 = 1'b1;
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena1 = prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena0;
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_l[0] = $signed({1'b0, prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_a0[0][13:0]});
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_p[0] = prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_l[0] * prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_c0[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_u[0] = prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_p[0][25:0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_w[0] = prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_u[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_x[0] = prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_w[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_y[0] = prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_a0 <= '{default: '0};
            prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena0 == 1'b1)
            begin
                prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_a0[0] <= redist24_yPE_uid53_block_rsrvd_fix_b_7_q;
                prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_c0[0] <= {{6{prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_c[4]}}, prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_c[4:0]};
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_ena1 == 1'b1)
            begin
                prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_s[0] <= prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(26), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_delay ( .xin(prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_s[0]), .xout(prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q = $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_qq[18:0]);

    // redist3_prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q_1(DELAY,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q_1_q <= '0;
        end
        else
        begin
            redist3_prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q_1_q <= $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q);
        end
    end

    // prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1(BITSHIFT,182)@10
    assign prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_qint = { redist3_prodXY_uid146_pT2_uid134_invPolyEval_im3_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_q = prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_qint[36:0];

    // prodXY_uid146_pT2_uid134_invPolyEval_im0_cma(CHAINMULTADD,187)@7 + 2
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_reset = ~ (resetn);
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena0 = 1'b1;
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena1 = prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena0;
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_p[0] = prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_a0[0] * prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_c0[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_u[0] = prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_p[0][31:0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_w[0] = prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_u[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_x[0] = prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_w[0];
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_y[0] = prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_a0 <= '{default: '0};
            prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_a0[0] <= prodXY_uid146_pT2_uid134_invPolyEval_bs2_merged_bit_select_b;
                prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_c0[0] <= redist24_yPE_uid53_block_rsrvd_fix_b_7_q;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_s[0] <= prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(32), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_delay ( .xin(prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_s[0]), .xout(prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q = $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_qq[31:0]);

    // redist4_prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist4_prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q_1_q <= $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q);
        end
    end

    // prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0(ADD,184)@10
    assign prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_a = $unsigned({7'b0000000, redist4_prodXY_uid146_pT2_uid134_invPolyEval_im0_cma_q_1_q});
    assign prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_b = $unsigned({{2{prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_q[36]}}, prodXY_uid146_pT2_uid134_invPolyEval_sums_align_1_q});
    assign prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_o = $unsigned($signed(prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_a) + $signed(prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_b));
    assign prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_q = prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_o[37:0];

    // osig_uid147_pT2_uid134_invPolyEval(BITSELECT,146)@10
    assign osig_uid147_pT2_uid134_invPolyEval_in = $unsigned(prodXY_uid146_pT2_uid134_invPolyEval_sums_result_add_0_0_q[36:0]);
    assign osig_uid147_pT2_uid134_invPolyEval_b = $unsigned(osig_uid147_pT2_uid134_invPolyEval_in[36:13]);

    // highBBits_uid136_invPolyEval(BITSELECT,135)@10
    assign highBBits_uid136_invPolyEval_b = $unsigned(osig_uid147_pT2_uid134_invPolyEval_b[23:2]);

    // redist13_highBBits_uid136_invPolyEval_b_1(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_highBBits_uid136_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist13_highBBits_uid136_invPolyEval_b_1_q <= $unsigned(highBBits_uid136_invPolyEval_b);
        end
    end

    // redist26_yAddr_uid52_block_rsrvd_fix_b_8_inputreg0(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_inputreg0_q <= '0;
        end
        else
        begin
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_inputreg0_q <= $unsigned(redist25_yAddr_uid52_block_rsrvd_fix_b_3_q);
        end
    end

    // redist26_yAddr_uid52_block_rsrvd_fix_b_8(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_0 <= '0;
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_1 <= '0;
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_2 <= '0;
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_q <= '0;
        end
        else
        begin
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_0 <= $unsigned(redist26_yAddr_uid52_block_rsrvd_fix_b_8_inputreg0_q);
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_1 <= redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_0;
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_2 <= redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_1;
            redist26_yAddr_uid52_block_rsrvd_fix_b_8_q <= redist26_yAddr_uid52_block_rsrvd_fix_b_8_delay_2;
        end
    end

    // memoryC0_uid114_invTables_lutmem(DUALMEM,157)@8 + 2
    // in j@20000000
    assign memoryC0_uid114_invTables_lutmem_aa = redist26_yAddr_uid52_block_rsrvd_fix_b_8_q;
    assign memoryC0_uid114_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(11),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000114_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid114_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid114_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid114_invTables_lutmem_aa),
        .q_a(memoryC0_uid114_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid114_invTables_lutmem_r = memoryC0_uid114_invTables_lutmem_ir[10:0];

    // redist9_memoryC0_uid114_invTables_lutmem_r_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_memoryC0_uid114_invTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist9_memoryC0_uid114_invTables_lutmem_r_1_q <= $unsigned(memoryC0_uid114_invTables_lutmem_r);
        end
    end

    // memoryC0_uid113_invTables_lutmem(DUALMEM,156)@8 + 2
    // in j@20000000
    assign memoryC0_uid113_invTables_lutmem_aa = redist26_yAddr_uid52_block_rsrvd_fix_b_8_q;
    assign memoryC0_uid113_invTables_lutmem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("M10K"),
        .operation_mode("ROM"),
        .width_a(20),
        .widthad_a(9),
        .numwords_a(512),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .outdata_reg_a("CLOCK0"),
        .outdata_aclr_a("CLEAR0"),
        .clock_enable_input_a("NORMAL"),
        .power_up_uninitialized("FALSE"),
        .init_file("streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000113_invTables_lutmem.hex"),
        .init_file_layout("PORT_A"),
        .intended_device_family("Cyclone V")
    ) memoryC0_uid113_invTables_lutmem_dmem (
        .clocken0(1'b1),
        .aclr0(memoryC0_uid113_invTables_lutmem_reset0),
        .clock0(clock),
        .address_a(memoryC0_uid113_invTables_lutmem_aa),
        .q_a(memoryC0_uid113_invTables_lutmem_ir),
        .wren_a(),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_a(),
        .data_b(),
        .address_b(),
        .clock1(),
        .clocken1(),
        .clocken2(),
        .clocken3(),
        .aclr1(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_b(),
        .eccstatus()
    );
    assign memoryC0_uid113_invTables_lutmem_r = memoryC0_uid113_invTables_lutmem_ir[19:0];

    // redist10_memoryC0_uid113_invTables_lutmem_r_1(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_memoryC0_uid113_invTables_lutmem_r_1_q <= '0;
        end
        else
        begin
            redist10_memoryC0_uid113_invTables_lutmem_r_1_q <= $unsigned(memoryC0_uid113_invTables_lutmem_r);
        end
    end

    // os_uid115_invTables(BITJOIN,114)@11
    assign os_uid115_invTables_q = {redist9_memoryC0_uid114_invTables_lutmem_r_1_q, redist10_memoryC0_uid113_invTables_lutmem_r_1_q};

    // s2sumAHighB_uid137_invPolyEval(ADD,136)@11
    assign s2sumAHighB_uid137_invPolyEval_a = $unsigned({{1{os_uid115_invTables_q[30]}}, os_uid115_invTables_q});
    assign s2sumAHighB_uid137_invPolyEval_b = $unsigned({{10{redist13_highBBits_uid136_invPolyEval_b_1_q[21]}}, redist13_highBBits_uid136_invPolyEval_b_1_q});
    assign s2sumAHighB_uid137_invPolyEval_o = $unsigned($signed(s2sumAHighB_uid137_invPolyEval_a) + $signed(s2sumAHighB_uid137_invPolyEval_b));
    assign s2sumAHighB_uid137_invPolyEval_q = s2sumAHighB_uid137_invPolyEval_o[31:0];

    // lowRangeB_uid135_invPolyEval(BITSELECT,134)@10
    assign lowRangeB_uid135_invPolyEval_in = osig_uid147_pT2_uid134_invPolyEval_b[1:0];
    assign lowRangeB_uid135_invPolyEval_b = lowRangeB_uid135_invPolyEval_in[1:0];

    // redist14_lowRangeB_uid135_invPolyEval_b_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_lowRangeB_uid135_invPolyEval_b_1_q <= '0;
        end
        else
        begin
            redist14_lowRangeB_uid135_invPolyEval_b_1_q <= $unsigned(lowRangeB_uid135_invPolyEval_b);
        end
    end

    // s2_uid138_invPolyEval(BITJOIN,137)@11
    assign s2_uid138_invPolyEval_q = {s2sumAHighB_uid137_invPolyEval_q, redist14_lowRangeB_uid135_invPolyEval_b_1_q};

    // invY_uid55_block_rsrvd_fix_merged_bit_select(BITSELECT,194)@11
    assign invY_uid55_block_rsrvd_fix_merged_bit_select_in = s2_uid138_invPolyEval_q[31:0];
    assign invY_uid55_block_rsrvd_fix_merged_bit_select_b = invY_uid55_block_rsrvd_fix_merged_bit_select_in[30:5];
    assign invY_uid55_block_rsrvd_fix_merged_bit_select_c = invY_uid55_block_rsrvd_fix_merged_bit_select_in[31:31];

    // redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q <= '0;
        end
        else
        begin
            redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q <= $unsigned(invY_uid55_block_rsrvd_fix_merged_bit_select_b);
        end
    end

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select(BITSELECT,191)@12
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_b = redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q[17:0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_c = redist0_invY_uid55_block_rsrvd_fix_merged_bit_select_b_1_q[25:18];

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select(BITSELECT,192)@12
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_b = lOAdded_uid59_block_rsrvd_fix_q[17:0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_c = lOAdded_uid59_block_rsrvd_fix_q[23:18];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma(CHAINMULTADD,189)@12 + 2
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_reset = ~ (resetn);
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena0 = 1'b1;
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena1 = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena0;
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_p[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_a0[0] * prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_c0[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_p[1] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_a0[1] * prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_c0[1];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_u[0] = {1'b0, prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_p[0][25:0]};
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_u[1] = {1'b0, prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_p[1][25:0]};
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_w[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_u[0] + prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_u[1];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_x[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_w[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_y[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_a0 <= '{default: '0};
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena0 == 1'b1)
            begin
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_a0[0] <= {2'b00, prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_c[5:0]};
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_a0[1] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_c;
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_c0[0] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_b;
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_c0[1] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_ena1 == 1'b1)
            begin
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_s[0] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(27), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_delay ( .xin(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_s[0]), .xout(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q = $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_qq[26:0]);

    // redist2_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q_1_q <= '0;
        end
        else
        begin
            redist2_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q_1_q <= $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q);
        end
    end

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1(BITSHIFT,172)@15
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1_qint = { redist2_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_ma3_cma_q_1_q, 18'b000000000000000000 };
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1_q = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1_qint[44:0];

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8(MULT,168)@12 + 2
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_pr = $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_a0) * $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_b0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_a0 <= 8'b0;
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_b0 <= 6'b0;
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_s1 <= 14'b0;
        end
        else
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_a0 <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_c;
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_b0 <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_c;
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_s1 <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_pr;
        end
    end
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_s1;

    // redist6_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q_1(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q_1_q <= '0;
        end
        else
        begin
            redist6_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q_1_q <= $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q);
        end
    end

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma(CHAINMULTADD,186)@12 + 2
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_reset = ~ (resetn);
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena0 = 1'b1;
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena1 = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena0;
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_p[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_a0[0] * prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_c0[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_u[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_p[0][35:0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_w[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_u[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_x[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_w[0];
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_y[0] = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_a0 <= '{default: '0};
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena0 == 1'b1)
            begin
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_a0[0] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs1_merged_bit_select_b;
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_c0[0] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_bs2_merged_bit_select_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_ena1 == 1'b1)
            begin
                prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_s[0] <= prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_delay ( .xin(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_s[0]), .xout(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q = $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_qq[35:0]);

    // redist5_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q_1_q <= '0;
        end
        else
        begin
            redist5_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q_1_q <= $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q);
        end
    end

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_join_0(BITJOIN,171)@15
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_join_0_q = {redist6_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im8_q_1_q, redist5_prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_im0_cma_q_1_q};

    // prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0(ADD,174)@15
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_a = {1'b0, prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_join_0_q};
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_b = {6'b000000, prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_align_1_q};
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_o = $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_a) + $unsigned(prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_b);
    assign prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_q = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_o[50:0];

    // osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix(BITSELECT,140)@15
    assign osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_in = prodXY_uid140_prodDivPreNormProd_uid61_block_rsrvd_fix_sums_result_add_0_0_q[49:0];
    assign osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b = osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_in[49:24];

    // redist12_osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b_1(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist12_osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b_1_q <= $unsigned(osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b);
        end
    end

    // redist1_invY_uid55_block_rsrvd_fix_merged_bit_select_c_1(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_invY_uid55_block_rsrvd_fix_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_invY_uid55_block_rsrvd_fix_merged_bit_select_c_1_q <= $unsigned(invY_uid55_block_rsrvd_fix_merged_bit_select_c);
        end
    end

    // updatedY_uid17_block_rsrvd_fix(BITJOIN,16)@0
    assign updatedY_uid17_block_rsrvd_fix_q = {GND_q, paddingY_uid16_block_rsrvd_fix_q};

    // y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select(BITSELECT,190)@0
    assign y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select_b = updatedY_uid17_block_rsrvd_fix_q[11:0];
    assign y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select_c = updatedY_uid17_block_rsrvd_fix_q[23:12];

    // x1_uid153_fracYZero_uid16_block_rsrvd_fix(BITSELECT,152)@0
    assign x1_uid153_fracYZero_uid16_block_rsrvd_fix_b = fracY_uid14_block_rsrvd_fix_b[22:12];

    // eq1_uid155_fracYZero_uid16_block_rsrvd_fix(LOGICAL,154)@0 + 1
    assign eq1_uid155_fracYZero_uid16_block_rsrvd_fix_a = {1'b0, x1_uid153_fracYZero_uid16_block_rsrvd_fix_b};
    assign eq1_uid155_fracYZero_uid16_block_rsrvd_fix_qi = $unsigned(eq1_uid155_fracYZero_uid16_block_rsrvd_fix_a == y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select_c ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq1_uid155_fracYZero_uid16_block_rsrvd_fix_delay ( .xin(eq1_uid155_fracYZero_uid16_block_rsrvd_fix_qi), .xout(eq1_uid155_fracYZero_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // x0_uid150_fracYZero_uid16_block_rsrvd_fix(BITSELECT,149)@0
    assign x0_uid150_fracYZero_uid16_block_rsrvd_fix_in = fracY_uid14_block_rsrvd_fix_b[11:0];
    assign x0_uid150_fracYZero_uid16_block_rsrvd_fix_b = x0_uid150_fracYZero_uid16_block_rsrvd_fix_in[11:0];

    // eq0_uid152_fracYZero_uid16_block_rsrvd_fix(LOGICAL,151)@0 + 1
    assign eq0_uid152_fracYZero_uid16_block_rsrvd_fix_qi = $unsigned(x0_uid150_fracYZero_uid16_block_rsrvd_fix_b == y0_uid151_fracYZero_uid16_block_rsrvd_fix_merged_bit_select_b ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    eq0_uid152_fracYZero_uid16_block_rsrvd_fix_delay ( .xin(eq0_uid152_fracYZero_uid16_block_rsrvd_fix_qi), .xout(eq0_uid152_fracYZero_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // andEq_uid156_fracYZero_uid16_block_rsrvd_fix(LOGICAL,155)@1 + 1
    assign andEq_uid156_fracYZero_uid16_block_rsrvd_fix_qi = eq0_uid152_fracYZero_uid16_block_rsrvd_fix_q & eq1_uid155_fracYZero_uid16_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    andEq_uid156_fracYZero_uid16_block_rsrvd_fix_delay ( .xin(andEq_uid156_fracYZero_uid16_block_rsrvd_fix_qi), .xout(andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q_11(DELAY,206)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q_11 ( .xin(andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q), .xout(redist11_andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // fracYPostZ_uid57_block_rsrvd_fix(LOGICAL,56)@12 + 1
    assign fracYPostZ_uid57_block_rsrvd_fix_qi = redist11_andEq_uid156_fracYZero_uid16_block_rsrvd_fix_q_11_q | redist1_invY_uid55_block_rsrvd_fix_merged_bit_select_c_1_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    fracYPostZ_uid57_block_rsrvd_fix_delay ( .xin(fracYPostZ_uid57_block_rsrvd_fix_qi), .xout(fracYPostZ_uid57_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_0 <= $unsigned(fracYPostZ_uid57_block_rsrvd_fix_q);
            redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_1 <= redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_0;
            redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_q <= redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // divValPreNormTrunc_uid67_block_rsrvd_fix(MUX,66)@16
    assign divValPreNormTrunc_uid67_block_rsrvd_fix_s = redist22_fracYPostZ_uid57_block_rsrvd_fix_q_4_q;
    always @(divValPreNormTrunc_uid67_block_rsrvd_fix_s or redist12_osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b_1_q or oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q)
    begin
        unique case (divValPreNormTrunc_uid67_block_rsrvd_fix_s)
            1'b0 : divValPreNormTrunc_uid67_block_rsrvd_fix_q = redist12_osig_uid141_prodDivPreNormProd_uid61_block_rsrvd_fix_b_1_q;
            1'b1 : divValPreNormTrunc_uid67_block_rsrvd_fix_q = oFracXSE_mergedSignalTM_uid64_block_rsrvd_fix_q;
            default : divValPreNormTrunc_uid67_block_rsrvd_fix_q = 26'b0;
        endcase
    end

    // norm_uid68_block_rsrvd_fix(BITSELECT,67)@16
    assign norm_uid68_block_rsrvd_fix_b = $unsigned(divValPreNormTrunc_uid67_block_rsrvd_fix_q[25:25]);

    // redist20_norm_uid68_block_rsrvd_fix_b_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_norm_uid68_block_rsrvd_fix_b_1_q <= '0;
        end
        else
        begin
            redist20_norm_uid68_block_rsrvd_fix_b_1_q <= $unsigned(norm_uid68_block_rsrvd_fix_b);
        end
    end

    // rndOp_uid76_block_rsrvd_fix(BITJOIN,75)@17
    assign rndOp_uid76_block_rsrvd_fix_q = {redist20_norm_uid68_block_rsrvd_fix_b_1_q, paddingY_uid16_block_rsrvd_fix_q, VCC_q};

    // cstBiasM1_uid7_block_rsrvd_fix(CONSTANT,6)
    assign cstBiasM1_uid7_block_rsrvd_fix_q = $unsigned(8'b01111110);

    // expXmY_uid48_block_rsrvd_fix(SUB,47)@12 + 1
    assign expXmY_uid48_block_rsrvd_fix_a = {1'b0, expX_uid10_block_rsrvd_fix_b};
    assign expXmY_uid48_block_rsrvd_fix_b = {1'b0, redist41_expY_uid13_block_rsrvd_fix_b_12_outputreg0_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expXmY_uid48_block_rsrvd_fix_o <= 9'b0;
        end
        else
        begin
            expXmY_uid48_block_rsrvd_fix_o <= $unsigned(expXmY_uid48_block_rsrvd_fix_a) - $unsigned(expXmY_uid48_block_rsrvd_fix_b);
        end
    end
    assign expXmY_uid48_block_rsrvd_fix_q = expXmY_uid48_block_rsrvd_fix_o[8:0];

    // redist27_expXmY_uid48_block_rsrvd_fix_q_4(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_0 <= '0;
            redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_1 <= '0;
            redist27_expXmY_uid48_block_rsrvd_fix_q_4_q <= '0;
        end
        else
        begin
            redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_0 <= $unsigned(expXmY_uid48_block_rsrvd_fix_q);
            redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_1 <= redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_0;
            redist27_expXmY_uid48_block_rsrvd_fix_q_4_q <= redist27_expXmY_uid48_block_rsrvd_fix_q_4_delay_1;
        end
    end

    // expR_uid49_block_rsrvd_fix(ADD,48)@16 + 1
    assign expR_uid49_block_rsrvd_fix_a = $unsigned({{2{redist27_expXmY_uid48_block_rsrvd_fix_q_4_q[8]}}, redist27_expXmY_uid48_block_rsrvd_fix_q_4_q});
    assign expR_uid49_block_rsrvd_fix_b = $unsigned({3'b000, cstBiasM1_uid7_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expR_uid49_block_rsrvd_fix_o <= 11'b0;
        end
        else
        begin
            expR_uid49_block_rsrvd_fix_o <= $unsigned($signed(expR_uid49_block_rsrvd_fix_a) + $signed(expR_uid49_block_rsrvd_fix_b));
        end
    end
    assign expR_uid49_block_rsrvd_fix_q = expR_uid49_block_rsrvd_fix_o[9:0];

    // divValPreNormHigh_uid69_block_rsrvd_fix(BITSELECT,68)@16
    assign divValPreNormHigh_uid69_block_rsrvd_fix_in = divValPreNormTrunc_uid67_block_rsrvd_fix_q[24:0];
    assign divValPreNormHigh_uid69_block_rsrvd_fix_b = divValPreNormHigh_uid69_block_rsrvd_fix_in[24:1];

    // divValPreNormLow_uid70_block_rsrvd_fix(BITSELECT,69)@16
    assign divValPreNormLow_uid70_block_rsrvd_fix_in = divValPreNormTrunc_uid67_block_rsrvd_fix_q[23:0];
    assign divValPreNormLow_uid70_block_rsrvd_fix_b = divValPreNormLow_uid70_block_rsrvd_fix_in[23:0];

    // normFracRnd_uid71_block_rsrvd_fix(MUX,70)@16 + 1
    assign normFracRnd_uid71_block_rsrvd_fix_s = norm_uid68_block_rsrvd_fix_b;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            normFracRnd_uid71_block_rsrvd_fix_q <= 24'b0;
        end
        else
        begin
            unique case (normFracRnd_uid71_block_rsrvd_fix_s)
                1'b0 : normFracRnd_uid71_block_rsrvd_fix_q <= divValPreNormLow_uid70_block_rsrvd_fix_b;
                1'b1 : normFracRnd_uid71_block_rsrvd_fix_q <= divValPreNormHigh_uid69_block_rsrvd_fix_b;
                default : normFracRnd_uid71_block_rsrvd_fix_q <= 24'b0;
            endcase
        end
    end

    // expFracRnd_uid72_block_rsrvd_fix(BITJOIN,71)@17
    assign expFracRnd_uid72_block_rsrvd_fix_q = {expR_uid49_block_rsrvd_fix_q, normFracRnd_uid71_block_rsrvd_fix_q};

    // expFracPostRnd_uid77_block_rsrvd_fix(ADD,76)@17 + 1
    assign expFracPostRnd_uid77_block_rsrvd_fix_a = $unsigned({{2{expFracRnd_uid72_block_rsrvd_fix_q[33]}}, expFracRnd_uid72_block_rsrvd_fix_q});
    assign expFracPostRnd_uid77_block_rsrvd_fix_b = $unsigned({11'b00000000000, rndOp_uid76_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expFracPostRnd_uid77_block_rsrvd_fix_o <= 36'b0;
        end
        else
        begin
            expFracPostRnd_uid77_block_rsrvd_fix_o <= $unsigned($signed(expFracPostRnd_uid77_block_rsrvd_fix_a) + $signed(expFracPostRnd_uid77_block_rsrvd_fix_b));
        end
    end
    assign expFracPostRnd_uid77_block_rsrvd_fix_q = expFracPostRnd_uid77_block_rsrvd_fix_o[34:0];

    // excRPreExc_uid80_block_rsrvd_fix(BITSELECT,79)@18
    assign excRPreExc_uid80_block_rsrvd_fix_in = expFracPostRnd_uid77_block_rsrvd_fix_q[31:0];
    assign excRPreExc_uid80_block_rsrvd_fix_b = excRPreExc_uid80_block_rsrvd_fix_in[31:24];

    // redist18_excRPreExc_uid80_block_rsrvd_fix_b_2(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_delay_0 <= $unsigned(excRPreExc_uid80_block_rsrvd_fix_b);
            redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_q <= redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // invExpXIsMax_uid44_block_rsrvd_fix(LOGICAL,43)@17 + 1
    assign invExpXIsMax_uid44_block_rsrvd_fix_qi = ~ (redist30_expXIsMax_uid39_block_rsrvd_fix_q_5_q);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    invExpXIsMax_uid44_block_rsrvd_fix_delay ( .xin(invExpXIsMax_uid44_block_rsrvd_fix_qi), .xout(invExpXIsMax_uid44_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // InvExpXIsZero_uid45_block_rsrvd_fix(LOGICAL,44)@18
    assign InvExpXIsZero_uid45_block_rsrvd_fix_q = ~ (redist31_excZ_y_uid38_block_rsrvd_fix_q_6_q);

    // excR_y_uid46_block_rsrvd_fix(LOGICAL,45)@18 + 1
    assign excR_y_uid46_block_rsrvd_fix_qi = InvExpXIsZero_uid45_block_rsrvd_fix_q & invExpXIsMax_uid44_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_y_uid46_block_rsrvd_fix_delay ( .xin(excR_y_uid46_block_rsrvd_fix_qi), .xout(excR_y_uid46_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist34_excI_x_uid28_block_rsrvd_fix_q_2(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_excI_x_uid28_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist34_excI_x_uid28_block_rsrvd_fix_q_2_q <= $unsigned(excI_x_uid28_block_rsrvd_fix_q);
        end
    end

    // excXIYR_uid94_block_rsrvd_fix(LOGICAL,93)@19
    assign excXIYR_uid94_block_rsrvd_fix_q = redist34_excI_x_uid28_block_rsrvd_fix_q_2_q & excR_y_uid46_block_rsrvd_fix_q;

    // redist32_excZ_y_uid38_block_rsrvd_fix_q_7(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_excZ_y_uid38_block_rsrvd_fix_q_7_q <= '0;
        end
        else
        begin
            redist32_excZ_y_uid38_block_rsrvd_fix_q_7_q <= $unsigned(redist31_excZ_y_uid38_block_rsrvd_fix_q_6_q);
        end
    end

    // excXIYZ_uid93_block_rsrvd_fix(LOGICAL,92)@19
    assign excXIYZ_uid93_block_rsrvd_fix_q = redist34_excI_x_uid28_block_rsrvd_fix_q_2_q & redist32_excZ_y_uid38_block_rsrvd_fix_q_7_q;

    // expRExt_uid81_block_rsrvd_fix(BITSELECT,80)@18
    assign expRExt_uid81_block_rsrvd_fix_b = $unsigned(expFracPostRnd_uid77_block_rsrvd_fix_q[34:24]);

    // expOvf_uid85_block_rsrvd_fix(COMPARE,84)@18 + 1
    assign expOvf_uid85_block_rsrvd_fix_a = $unsigned({{2{expRExt_uid81_block_rsrvd_fix_b[10]}}, expRExt_uid81_block_rsrvd_fix_b});
    assign expOvf_uid85_block_rsrvd_fix_b = $unsigned({5'b00000, cstAllOWE_uid19_block_rsrvd_fix_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expOvf_uid85_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expOvf_uid85_block_rsrvd_fix_o <= $unsigned($signed(expOvf_uid85_block_rsrvd_fix_a) - $signed(expOvf_uid85_block_rsrvd_fix_b));
        end
    end
    assign expOvf_uid85_block_rsrvd_fix_n[0] = ~ (expOvf_uid85_block_rsrvd_fix_o[12]);

    // invExpXIsMax_uid30_block_rsrvd_fix(LOGICAL,29)@17
    assign invExpXIsMax_uid30_block_rsrvd_fix_q = ~ (redist36_expXIsMax_uid25_block_rsrvd_fix_q_5_q);

    // InvExpXIsZero_uid31_block_rsrvd_fix(LOGICAL,30)@17
    assign InvExpXIsZero_uid31_block_rsrvd_fix_q = ~ (redist37_excZ_x_uid24_block_rsrvd_fix_q_5_q);

    // excR_x_uid32_block_rsrvd_fix(LOGICAL,31)@17 + 1
    assign excR_x_uid32_block_rsrvd_fix_qi = InvExpXIsZero_uid31_block_rsrvd_fix_q & invExpXIsMax_uid30_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excR_x_uid32_block_rsrvd_fix_delay ( .xin(excR_x_uid32_block_rsrvd_fix_qi), .xout(excR_x_uid32_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist33_excR_x_uid32_block_rsrvd_fix_q_2(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_excR_x_uid32_block_rsrvd_fix_q_2_q <= '0;
        end
        else
        begin
            redist33_excR_x_uid32_block_rsrvd_fix_q_2_q <= $unsigned(excR_x_uid32_block_rsrvd_fix_q);
        end
    end

    // excXRYROvf_uid92_block_rsrvd_fix(LOGICAL,91)@19
    assign excXRYROvf_uid92_block_rsrvd_fix_q = redist33_excR_x_uid32_block_rsrvd_fix_q_2_q & excR_y_uid46_block_rsrvd_fix_q & expOvf_uid85_block_rsrvd_fix_n;

    // excXRYZ_uid91_block_rsrvd_fix(LOGICAL,90)@19
    assign excXRYZ_uid91_block_rsrvd_fix_q = redist33_excR_x_uid32_block_rsrvd_fix_q_2_q & redist32_excZ_y_uid38_block_rsrvd_fix_q_7_q;

    // excRInf_uid95_block_rsrvd_fix(LOGICAL,94)@19 + 1
    assign excRInf_uid95_block_rsrvd_fix_qi = excXRYZ_uid91_block_rsrvd_fix_q | excXRYROvf_uid92_block_rsrvd_fix_q | excXIYZ_uid93_block_rsrvd_fix_q | excXIYR_uid94_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRInf_uid95_block_rsrvd_fix_delay ( .xin(excRInf_uid95_block_rsrvd_fix_qi), .xout(excRInf_uid95_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // xRegOrZero_uid88_block_rsrvd_fix(LOGICAL,87)@18
    assign xRegOrZero_uid88_block_rsrvd_fix_q = excR_x_uid32_block_rsrvd_fix_q | redist38_excZ_x_uid24_block_rsrvd_fix_q_6_q;

    // regOrZeroOverInf_uid89_block_rsrvd_fix(LOGICAL,88)@18 + 1
    assign regOrZeroOverInf_uid89_block_rsrvd_fix_qi = xRegOrZero_uid88_block_rsrvd_fix_q & excI_y_uid42_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    regOrZeroOverInf_uid89_block_rsrvd_fix_delay ( .xin(regOrZeroOverInf_uid89_block_rsrvd_fix_qi), .xout(regOrZeroOverInf_uid89_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // expUdf_uid82_block_rsrvd_fix(COMPARE,81)@18 + 1
    assign expUdf_uid82_block_rsrvd_fix_a = $unsigned({12'b000000000000, GND_q});
    assign expUdf_uid82_block_rsrvd_fix_b = $unsigned({{2{expRExt_uid81_block_rsrvd_fix_b[10]}}, expRExt_uid81_block_rsrvd_fix_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            expUdf_uid82_block_rsrvd_fix_o <= 13'b0;
        end
        else
        begin
            expUdf_uid82_block_rsrvd_fix_o <= $unsigned($signed(expUdf_uid82_block_rsrvd_fix_a) - $signed(expUdf_uid82_block_rsrvd_fix_b));
        end
    end
    assign expUdf_uid82_block_rsrvd_fix_n[0] = ~ (expUdf_uid82_block_rsrvd_fix_o[12]);

    // regOverRegWithUf_uid87_block_rsrvd_fix(LOGICAL,86)@19
    assign regOverRegWithUf_uid87_block_rsrvd_fix_q = expUdf_uid82_block_rsrvd_fix_n & redist33_excR_x_uid32_block_rsrvd_fix_q_2_q & excR_y_uid46_block_rsrvd_fix_q;

    // redist39_excZ_x_uid24_block_rsrvd_fix_q_7(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_excZ_x_uid24_block_rsrvd_fix_q_7_q <= '0;
        end
        else
        begin
            redist39_excZ_x_uid24_block_rsrvd_fix_q_7_q <= $unsigned(redist38_excZ_x_uid24_block_rsrvd_fix_q_6_q);
        end
    end

    // zeroOverReg_uid86_block_rsrvd_fix(LOGICAL,85)@19
    assign zeroOverReg_uid86_block_rsrvd_fix_q = redist39_excZ_x_uid24_block_rsrvd_fix_q_7_q & excR_y_uid46_block_rsrvd_fix_q;

    // excRZero_uid90_block_rsrvd_fix(LOGICAL,89)@19 + 1
    assign excRZero_uid90_block_rsrvd_fix_qi = zeroOverReg_uid86_block_rsrvd_fix_q | regOverRegWithUf_uid87_block_rsrvd_fix_q | regOrZeroOverInf_uid89_block_rsrvd_fix_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    excRZero_uid90_block_rsrvd_fix_delay ( .xin(excRZero_uid90_block_rsrvd_fix_qi), .xout(excRZero_uid90_block_rsrvd_fix_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // concExc_uid99_block_rsrvd_fix(BITJOIN,98)@20
    assign concExc_uid99_block_rsrvd_fix_q = {redist17_excRNaN_uid98_block_rsrvd_fix_q_2_q, excRInf_uid95_block_rsrvd_fix_q, excRZero_uid90_block_rsrvd_fix_q};

    // excREnc_uid100_block_rsrvd_fix(LOOKUP,99)@20
    always @(concExc_uid99_block_rsrvd_fix_q)
    begin
        // Begin reserved scope level
        unique case (concExc_uid99_block_rsrvd_fix_q)
            3'b000 : excREnc_uid100_block_rsrvd_fix_q = 2'b01;
            3'b001 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b010 : excREnc_uid100_block_rsrvd_fix_q = 2'b10;
            3'b011 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b100 : excREnc_uid100_block_rsrvd_fix_q = 2'b11;
            3'b101 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b110 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            3'b111 : excREnc_uid100_block_rsrvd_fix_q = 2'b00;
            default : begin
                          // unreachable
                          excREnc_uid100_block_rsrvd_fix_q = 2'bxx;
                      end
        endcase
        // End reserved scope level
    end

    // expRPostExc_uid108_block_rsrvd_fix(MUX,107)@20
    assign expRPostExc_uid108_block_rsrvd_fix_s = excREnc_uid100_block_rsrvd_fix_q;
    always @(expRPostExc_uid108_block_rsrvd_fix_s or cstAllZWE_uid21_block_rsrvd_fix_q or redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_q or cstAllOWE_uid19_block_rsrvd_fix_q)
    begin
        unique case (expRPostExc_uid108_block_rsrvd_fix_s)
            2'b00 : expRPostExc_uid108_block_rsrvd_fix_q = cstAllZWE_uid21_block_rsrvd_fix_q;
            2'b01 : expRPostExc_uid108_block_rsrvd_fix_q = redist18_excRPreExc_uid80_block_rsrvd_fix_b_2_q;
            2'b10 : expRPostExc_uid108_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            2'b11 : expRPostExc_uid108_block_rsrvd_fix_q = cstAllOWE_uid19_block_rsrvd_fix_q;
            default : expRPostExc_uid108_block_rsrvd_fix_q = 8'b0;
        endcase
    end

    // oneFracRPostExc2_uid101_block_rsrvd_fix(CONSTANT,100)
    assign oneFracRPostExc2_uid101_block_rsrvd_fix_q = $unsigned(23'b00000000000000000000001);

    // fracRPreExc_uid79_block_rsrvd_fix(BITSELECT,78)@18
    assign fracRPreExc_uid79_block_rsrvd_fix_in = expFracPostRnd_uid77_block_rsrvd_fix_q[23:0];
    assign fracRPreExc_uid79_block_rsrvd_fix_b = fracRPreExc_uid79_block_rsrvd_fix_in[23:1];

    // redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_delay_0 <= '0;
            redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_q <= '0;
        end
        else
        begin
            redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_delay_0 <= $unsigned(fracRPreExc_uid79_block_rsrvd_fix_b);
            redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_q <= redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_delay_0;
        end
    end

    // fracRPostExc_uid104_block_rsrvd_fix(MUX,103)@20
    assign fracRPostExc_uid104_block_rsrvd_fix_s = excREnc_uid100_block_rsrvd_fix_q;
    always @(fracRPostExc_uid104_block_rsrvd_fix_s or paddingY_uid16_block_rsrvd_fix_q or redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_q or oneFracRPostExc2_uid101_block_rsrvd_fix_q)
    begin
        unique case (fracRPostExc_uid104_block_rsrvd_fix_s)
            2'b00 : fracRPostExc_uid104_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b01 : fracRPostExc_uid104_block_rsrvd_fix_q = redist19_fracRPreExc_uid79_block_rsrvd_fix_b_2_q;
            2'b10 : fracRPostExc_uid104_block_rsrvd_fix_q = paddingY_uid16_block_rsrvd_fix_q;
            2'b11 : fracRPostExc_uid104_block_rsrvd_fix_q = oneFracRPostExc2_uid101_block_rsrvd_fix_q;
            default : fracRPostExc_uid104_block_rsrvd_fix_q = 23'b0;
        endcase
    end

    // divR_uid111_block_rsrvd_fix(BITJOIN,110)@20
    assign divR_uid111_block_rsrvd_fix_q = {sRPostExc_uid110_block_rsrvd_fix_q, expRPostExc_uid108_block_rsrvd_fix_q, fracRPostExc_uid104_block_rsrvd_fix_q};

    // out_primWireOut(GPOUT,5)@20
    assign out_primWireOut = divR_uid111_block_rsrvd_fix_q;

endmodule
