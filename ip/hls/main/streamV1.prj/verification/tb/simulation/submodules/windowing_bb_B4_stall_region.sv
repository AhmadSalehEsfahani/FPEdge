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

// SystemVerilog created from bb_windowing_B4_stall_region
// Created for function/kernel windowing
// SystemVerilog created on Sun Dec 11 11:42:03 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module windowing_bb_B4_stall_region (
    output wire [31:0] out_memdep_14_windowing_avm_address,
    output wire [0:0] out_memdep_14_windowing_avm_enable,
    output wire [0:0] out_memdep_14_windowing_avm_read,
    output wire [0:0] out_memdep_14_windowing_avm_write,
    output wire [511:0] out_memdep_14_windowing_avm_writedata,
    output wire [63:0] out_memdep_14_windowing_avm_byteenable,
    output wire [0:0] out_memdep_14_windowing_avm_burstcount,
    output wire [0:0] out_c0_exe5122,
    output wire [0:0] out_c0_exe6123,
    output wire [0:0] out_c0_exe7124,
    output wire [0:0] out_c0_exe8125,
    output wire [0:0] out_c0_exe9126,
    output wire [0:0] out_memdep_14,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_memdep_14_windowing_avm_readdata,
    input wire [0:0] in_memdep_14_windowing_avm_writeack,
    input wire [0:0] in_memdep_14_windowing_avm_waitrequest,
    input wire [0:0] in_memdep_14_windowing_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_forked5152_pop1775,
    input wire [0:0] in_memdep_phi16_pop1055_pop1978,
    input wire [0:0] in_memdep_phi23_or2472,
    input wire [0:0] in_memdep_phi23_pop1259_pop2270,
    input wire [0:0] in_reduction_windowing_581,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_1_tpl;
    wire [63:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_3_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_4_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_5_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_6_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_7_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_8_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_9_tpl;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] windowing_B4_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] c_float_0_000000e_006_q;
    wire [31:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_14_windowing3_out_o_writeack;
    wire [4:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    reg [4:0] coalesced_delay_0_0_q;
    reg [4:0] coalesced_delay_0_1_q;
    reg [4:0] coalesced_delay_0_2_q;
    reg [4:0] coalesced_delay_0_3_q;
    reg [4:0] coalesced_delay_0_4_q;
    reg [4:0] coalesced_delay_0_5_q;
    reg [4:0] coalesced_delay_0_6_q;
    wire [70:0] bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_i;
    wire [5:0] bubble_join_windowing_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_windowing_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_windowing_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_windowing_B4_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_windowing_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_windowing_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_windowing_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_14_windowing3_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_14_windowing3_b;
    wire [5:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_V1;
    wire [0:0] SE_out_windowing_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_windowing_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_windowing_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_14_windowing3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_14_windowing3_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_14_windowing3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_14_windowing3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;
    reg [0:0] SE_coalesced_delay_0_1_R_v_0;
    wire [0:0] SE_coalesced_delay_0_1_v_s_0;
    wire [0:0] SE_coalesced_delay_0_1_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_1_backEN;
    wire [0:0] SE_coalesced_delay_0_1_backStall;
    wire [0:0] SE_coalesced_delay_0_1_V0;
    reg [0:0] SE_coalesced_delay_0_2_R_v_0;
    wire [0:0] SE_coalesced_delay_0_2_v_s_0;
    wire [0:0] SE_coalesced_delay_0_2_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_2_backEN;
    wire [0:0] SE_coalesced_delay_0_2_backStall;
    wire [0:0] SE_coalesced_delay_0_2_V0;
    reg [0:0] SE_coalesced_delay_0_3_R_v_0;
    wire [0:0] SE_coalesced_delay_0_3_v_s_0;
    wire [0:0] SE_coalesced_delay_0_3_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_3_backEN;
    wire [0:0] SE_coalesced_delay_0_3_backStall;
    wire [0:0] SE_coalesced_delay_0_3_V0;
    reg [0:0] SE_coalesced_delay_0_4_R_v_0;
    wire [0:0] SE_coalesced_delay_0_4_v_s_0;
    wire [0:0] SE_coalesced_delay_0_4_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_4_backEN;
    wire [0:0] SE_coalesced_delay_0_4_backStall;
    wire [0:0] SE_coalesced_delay_0_4_V0;
    reg [0:0] SE_coalesced_delay_0_5_R_v_0;
    wire [0:0] SE_coalesced_delay_0_5_v_s_0;
    wire [0:0] SE_coalesced_delay_0_5_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_5_backEN;
    wire [0:0] SE_coalesced_delay_0_5_backStall;
    wire [0:0] SE_coalesced_delay_0_5_V0;
    reg [0:0] SE_coalesced_delay_0_6_R_v_0;
    wire [0:0] SE_coalesced_delay_0_6_v_s_0;
    wire [0:0] SE_coalesced_delay_0_6_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_6_backEN;
    wire [0:0] SE_coalesced_delay_0_6_backStall;
    wire [0:0] SE_coalesced_delay_0_6_V0;
    wire [0:0] SR_SE_coalesced_delay_0_1_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_1_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_1_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_1_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_1_V;
    wire [4:0] SR_SE_coalesced_delay_0_1_D0;
    wire [0:0] SR_SE_coalesced_delay_0_2_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_2_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_2_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_2_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_2_V;
    wire [4:0] SR_SE_coalesced_delay_0_2_D0;
    wire [0:0] SR_SE_coalesced_delay_0_3_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_3_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_3_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_3_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_3_V;
    wire [4:0] SR_SE_coalesced_delay_0_3_D0;
    wire [0:0] SR_SE_coalesced_delay_0_4_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_4_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_4_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_4_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_4_V;
    wire [4:0] SR_SE_coalesced_delay_0_4_D0;
    wire [0:0] SR_SE_coalesced_delay_0_5_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_5_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_5_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_5_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_5_V;
    wire [4:0] SR_SE_coalesced_delay_0_5_D0;
    wire [0:0] SR_SE_coalesced_delay_0_6_i_valid;
    reg [0:0] SR_SE_coalesced_delay_0_6_r_valid;
    reg [4:0] SR_SE_coalesced_delay_0_6_r_data0;
    wire [0:0] SR_SE_coalesced_delay_0_6_backStall;
    wire [0:0] SR_SE_coalesced_delay_0_6_V;
    wire [4:0] SR_SE_coalesced_delay_0_6_D0;


    // c_float_0_000000e_006(FLOATCONSTANT,6)
    assign c_float_0_000000e_006_q = $unsigned(32'b00000000000000000000000000000000);

    // join_for_coalesced_delay_0(BITJOIN,33)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_e};

    // coalesced_delay_0_0(REG,35)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // coalesced_delay_0_1(REG,36)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_1_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_1_backEN == 1'b1)
        begin
            coalesced_delay_0_1_q <= $unsigned(SR_SE_coalesced_delay_0_1_D0);
        end
    end

    // coalesced_delay_0_2(REG,37)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_2_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_2_backEN == 1'b1)
        begin
            coalesced_delay_0_2_q <= $unsigned(SR_SE_coalesced_delay_0_2_D0);
        end
    end

    // coalesced_delay_0_3(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_3_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_3_backEN == 1'b1)
        begin
            coalesced_delay_0_3_q <= $unsigned(SR_SE_coalesced_delay_0_3_D0);
        end
    end

    // coalesced_delay_0_4(REG,39)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_4_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_4_backEN == 1'b1)
        begin
            coalesced_delay_0_4_q <= $unsigned(SR_SE_coalesced_delay_0_4_D0);
        end
    end

    // coalesced_delay_0_5(REG,40)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_5_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_5_backEN == 1'b1)
        begin
            coalesced_delay_0_5_q <= $unsigned(SR_SE_coalesced_delay_0_5_D0);
        end
    end

    // SE_coalesced_delay_0_6(STALLENABLE,73)
    // Valid signal propagation
    assign SE_coalesced_delay_0_6_V0 = SE_coalesced_delay_0_6_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_6_s_tv_0 = SE_out_i_llvm_fpga_mem_memdep_14_windowing3_backStall & SE_coalesced_delay_0_6_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_6_backEN = ~ (SE_coalesced_delay_0_6_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_6_v_s_0 = SE_coalesced_delay_0_6_backEN & SR_SE_coalesced_delay_0_6_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_6_backStall = ~ (SE_coalesced_delay_0_6_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_6_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_6_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_R_v_0 & SE_coalesced_delay_0_6_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_6_R_v_0 <= SE_coalesced_delay_0_6_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_6(STALLREG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_6_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_6_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_6_r_valid <= SE_coalesced_delay_0_6_backStall & (SR_SE_coalesced_delay_0_6_r_valid | SR_SE_coalesced_delay_0_6_i_valid);

            if (SR_SE_coalesced_delay_0_6_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_6_r_data0 <= $unsigned(coalesced_delay_0_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_6_i_valid = SE_coalesced_delay_0_5_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_6_backStall = SR_SE_coalesced_delay_0_6_r_valid | ~ (SR_SE_coalesced_delay_0_6_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_6_V = SR_SE_coalesced_delay_0_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_6_r_valid : SR_SE_coalesced_delay_0_6_i_valid;

    assign SR_SE_coalesced_delay_0_6_D0 = SR_SE_coalesced_delay_0_6_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_6_r_data0 : coalesced_delay_0_5_q;

    // SE_coalesced_delay_0_5(STALLENABLE,72)
    // Valid signal propagation
    assign SE_coalesced_delay_0_5_V0 = SE_coalesced_delay_0_5_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_5_s_tv_0 = SR_SE_coalesced_delay_0_6_backStall & SE_coalesced_delay_0_5_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_5_backEN = ~ (SE_coalesced_delay_0_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_5_v_s_0 = SE_coalesced_delay_0_5_backEN & SR_SE_coalesced_delay_0_5_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_5_backStall = ~ (SE_coalesced_delay_0_5_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_5_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_R_v_0 & SE_coalesced_delay_0_5_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_5_R_v_0 <= SE_coalesced_delay_0_5_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_5(STALLREG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_5_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_5_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_5_r_valid <= SE_coalesced_delay_0_5_backStall & (SR_SE_coalesced_delay_0_5_r_valid | SR_SE_coalesced_delay_0_5_i_valid);

            if (SR_SE_coalesced_delay_0_5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_5_r_data0 <= $unsigned(coalesced_delay_0_4_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_5_i_valid = SE_coalesced_delay_0_4_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_5_backStall = SR_SE_coalesced_delay_0_5_r_valid | ~ (SR_SE_coalesced_delay_0_5_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_5_V = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_valid : SR_SE_coalesced_delay_0_5_i_valid;

    assign SR_SE_coalesced_delay_0_5_D0 = SR_SE_coalesced_delay_0_5_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_5_r_data0 : coalesced_delay_0_4_q;

    // SE_coalesced_delay_0_4(STALLENABLE,71)
    // Valid signal propagation
    assign SE_coalesced_delay_0_4_V0 = SE_coalesced_delay_0_4_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_4_s_tv_0 = SR_SE_coalesced_delay_0_5_backStall & SE_coalesced_delay_0_4_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_4_backEN = ~ (SE_coalesced_delay_0_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_4_v_s_0 = SE_coalesced_delay_0_4_backEN & SR_SE_coalesced_delay_0_4_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_4_backStall = ~ (SE_coalesced_delay_0_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_4_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_R_v_0 & SE_coalesced_delay_0_4_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_4_R_v_0 <= SE_coalesced_delay_0_4_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_4(STALLREG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_4_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_4_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_4_r_valid <= SE_coalesced_delay_0_4_backStall & (SR_SE_coalesced_delay_0_4_r_valid | SR_SE_coalesced_delay_0_4_i_valid);

            if (SR_SE_coalesced_delay_0_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_4_r_data0 <= $unsigned(coalesced_delay_0_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_4_i_valid = SE_coalesced_delay_0_3_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_4_backStall = SR_SE_coalesced_delay_0_4_r_valid | ~ (SR_SE_coalesced_delay_0_4_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_4_V = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_valid : SR_SE_coalesced_delay_0_4_i_valid;

    assign SR_SE_coalesced_delay_0_4_D0 = SR_SE_coalesced_delay_0_4_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_4_r_data0 : coalesced_delay_0_3_q;

    // SE_coalesced_delay_0_3(STALLENABLE,70)
    // Valid signal propagation
    assign SE_coalesced_delay_0_3_V0 = SE_coalesced_delay_0_3_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_3_s_tv_0 = SR_SE_coalesced_delay_0_4_backStall & SE_coalesced_delay_0_3_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_3_backEN = ~ (SE_coalesced_delay_0_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_3_v_s_0 = SE_coalesced_delay_0_3_backEN & SR_SE_coalesced_delay_0_3_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_3_backStall = ~ (SE_coalesced_delay_0_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_3_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_R_v_0 & SE_coalesced_delay_0_3_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_3_R_v_0 <= SE_coalesced_delay_0_3_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_3(STALLREG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_3_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_3_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_3_r_valid <= SE_coalesced_delay_0_3_backStall & (SR_SE_coalesced_delay_0_3_r_valid | SR_SE_coalesced_delay_0_3_i_valid);

            if (SR_SE_coalesced_delay_0_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_3_r_data0 <= $unsigned(coalesced_delay_0_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_3_i_valid = SE_coalesced_delay_0_2_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_3_backStall = SR_SE_coalesced_delay_0_3_r_valid | ~ (SR_SE_coalesced_delay_0_3_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_3_V = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_valid : SR_SE_coalesced_delay_0_3_i_valid;

    assign SR_SE_coalesced_delay_0_3_D0 = SR_SE_coalesced_delay_0_3_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_3_r_data0 : coalesced_delay_0_2_q;

    // SE_coalesced_delay_0_2(STALLENABLE,69)
    // Valid signal propagation
    assign SE_coalesced_delay_0_2_V0 = SE_coalesced_delay_0_2_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_2_s_tv_0 = SR_SE_coalesced_delay_0_3_backStall & SE_coalesced_delay_0_2_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_2_backEN = ~ (SE_coalesced_delay_0_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_2_v_s_0 = SE_coalesced_delay_0_2_backEN & SR_SE_coalesced_delay_0_2_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_2_backStall = ~ (SE_coalesced_delay_0_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_2_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_R_v_0 & SE_coalesced_delay_0_2_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_2_R_v_0 <= SE_coalesced_delay_0_2_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_2(STALLREG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_2_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_2_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_2_r_valid <= SE_coalesced_delay_0_2_backStall & (SR_SE_coalesced_delay_0_2_r_valid | SR_SE_coalesced_delay_0_2_i_valid);

            if (SR_SE_coalesced_delay_0_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_2_r_data0 <= $unsigned(coalesced_delay_0_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_2_i_valid = SE_coalesced_delay_0_1_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_2_backStall = SR_SE_coalesced_delay_0_2_r_valid | ~ (SR_SE_coalesced_delay_0_2_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_2_V = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_valid : SR_SE_coalesced_delay_0_2_i_valid;

    assign SR_SE_coalesced_delay_0_2_D0 = SR_SE_coalesced_delay_0_2_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_2_r_data0 : coalesced_delay_0_1_q;

    // SE_coalesced_delay_0_1(STALLENABLE,68)
    // Valid signal propagation
    assign SE_coalesced_delay_0_1_V0 = SE_coalesced_delay_0_1_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_1_s_tv_0 = SR_SE_coalesced_delay_0_2_backStall & SE_coalesced_delay_0_1_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_1_backEN = ~ (SE_coalesced_delay_0_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_1_v_s_0 = SE_coalesced_delay_0_1_backEN & SR_SE_coalesced_delay_0_1_V;
    // Backward Stall generation
    assign SE_coalesced_delay_0_1_backStall = ~ (SE_coalesced_delay_0_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_1_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_R_v_0 & SE_coalesced_delay_0_1_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_1_R_v_0 <= SE_coalesced_delay_0_1_v_s_0;
            end

        end
    end

    // SR_SE_coalesced_delay_0_1(STALLREG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_coalesced_delay_0_1_r_valid <= 1'b0;
            SR_SE_coalesced_delay_0_1_r_data0 <= 5'bxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_coalesced_delay_0_1_r_valid <= SE_coalesced_delay_0_1_backStall & (SR_SE_coalesced_delay_0_1_r_valid | SR_SE_coalesced_delay_0_1_i_valid);

            if (SR_SE_coalesced_delay_0_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_coalesced_delay_0_1_r_data0 <= $unsigned(coalesced_delay_0_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_coalesced_delay_0_1_i_valid = SE_coalesced_delay_0_0_V0;
    // Stall signal propagation
    assign SR_SE_coalesced_delay_0_1_backStall = SR_SE_coalesced_delay_0_1_r_valid | ~ (SR_SE_coalesced_delay_0_1_i_valid);

    // Valid
    assign SR_SE_coalesced_delay_0_1_V = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_valid : SR_SE_coalesced_delay_0_1_i_valid;

    assign SR_SE_coalesced_delay_0_1_D0 = SR_SE_coalesced_delay_0_1_r_valid == 1'b1 ? SR_SE_coalesced_delay_0_1_r_data0 : coalesced_delay_0_0_q;

    // SE_coalesced_delay_0_0(STALLENABLE,67)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SR_SE_coalesced_delay_0_1_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // SE_stall_entry(STALLENABLE,63)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = windowing_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,54)
    assign bubble_join_stall_entry_q = {in_reduction_windowing_581, in_memdep_phi23_pop1259_pop2270, in_memdep_phi23_or2472, in_memdep_phi16_pop1055_pop1978, in_forked5152_pop1775, in_forked};

    // bubble_select_stall_entry(BITSELECT,55)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[5:5]);

    // windowing_B4_merge_reg_aunroll_x(BLACKBOX,5)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    windowing_B4_merge_reg thewindowing_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_f),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_stall_in(SE_out_windowing_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(windowing_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(windowing_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(windowing_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(windowing_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(windowing_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(windowing_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_stall_out(windowing_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(windowing_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_windowing_B4_merge_reg_aunroll_x(STALLENABLE,60)
    // Valid signal propagation
    assign SE_out_windowing_B4_merge_reg_aunroll_x_V0 = SE_out_windowing_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_windowing_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_o_stall | ~ (SE_out_windowing_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_windowing_B4_merge_reg_aunroll_x_wireValid = windowing_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_windowing_B4_merge_reg_aunroll_x(BITJOIN,46)
    assign bubble_join_windowing_B4_merge_reg_aunroll_x_q = {windowing_B4_merge_reg_aunroll_x_out_data_out_5_tpl, windowing_B4_merge_reg_aunroll_x_out_data_out_4_tpl, windowing_B4_merge_reg_aunroll_x_out_data_out_3_tpl, windowing_B4_merge_reg_aunroll_x_out_data_out_2_tpl, windowing_B4_merge_reg_aunroll_x_out_data_out_1_tpl, windowing_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_windowing_B4_merge_reg_aunroll_x(BITSELECT,47)
    assign bubble_select_windowing_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_windowing_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_windowing_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_windowing_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_windowing_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_windowing_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_windowing_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_windowing_B4_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_windowing_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_windowing_B4_merge_reg_aunroll_x_q[4:4]);
    assign bubble_select_windowing_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_windowing_B4_merge_reg_aunroll_x_q[5:5]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit117_0_tpl@5
    // out out_c0_exit117_1_tpl@5
    // out out_c0_exit117_2_tpl@5
    // out out_c0_exit117_3_tpl@5
    // out out_c0_exit117_4_tpl@5
    // out out_c0_exit117_5_tpl@5
    // out out_c0_exit117_6_tpl@5
    // out out_c0_exit117_7_tpl@5
    // out out_c0_exit117_8_tpl@5
    // out out_c0_exit117_9_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    windowing_i_sfc_s_c0_in_arrayinit_body6_0000nter10115_windowing1 thei_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x (
        .in_c0_eni6100_0_tpl(GND_q),
        .in_c0_eni6100_1_tpl(bubble_select_windowing_B4_merge_reg_aunroll_x_b),
        .in_c0_eni6100_2_tpl(bubble_select_windowing_B4_merge_reg_aunroll_x_d),
        .in_c0_eni6100_3_tpl(bubble_select_windowing_B4_merge_reg_aunroll_x_e),
        .in_c0_eni6100_4_tpl(bubble_select_windowing_B4_merge_reg_aunroll_x_f),
        .in_c0_eni6100_5_tpl(bubble_select_windowing_B4_merge_reg_aunroll_x_c),
        .in_c0_eni6100_6_tpl(bubble_select_windowing_B4_merge_reg_aunroll_x_g),
        .in_i_stall(SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_backStall),
        .in_i_valid(SE_out_windowing_B4_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit117_0_tpl(),
        .out_c0_exit117_1_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_1_tpl),
        .out_c0_exit117_2_tpl(),
        .out_c0_exit117_3_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_3_tpl),
        .out_c0_exit117_4_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_4_tpl),
        .out_c0_exit117_5_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_5_tpl),
        .out_c0_exit117_6_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_6_tpl),
        .out_c0_exit117_7_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_7_tpl),
        .out_c0_exit117_8_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_8_tpl),
        .out_c0_exit117_9_tpl(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_9_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x(STALLENABLE,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_memdep_14_windowing3_out_o_stall) & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_wireValid = i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_mem_memdep_14_windowing3(STALLENABLE,62)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_14_windowing3_V0 = SE_out_i_llvm_fpga_mem_memdep_14_windowing3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_14_windowing3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_mem_memdep_14_windowing3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_14_windowing3_and0 = i_llvm_fpga_mem_memdep_14_windowing3_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_memdep_14_windowing3_wireValid = SE_coalesced_delay_0_6_V0 & SE_out_i_llvm_fpga_mem_memdep_14_windowing3_and0;

    // bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x(BITJOIN,43)
    assign bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q = {i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_9_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_8_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_7_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_6_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_5_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_4_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_3_tpl, i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_c0_exit117_1_tpl};

    // bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x(BITSELECT,44)
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[67:67]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[68:68]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[69:69]);
    assign bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_q[70:70]);

    // i_llvm_fpga_mem_memdep_14_windowing3(BLACKBOX,12)@5
    // in in_i_stall@20000000
    // out out_memdep_14_windowing_avm_address@20000000
    // out out_memdep_14_windowing_avm_burstcount@20000000
    // out out_memdep_14_windowing_avm_byteenable@20000000
    // out out_memdep_14_windowing_avm_enable@20000000
    // out out_memdep_14_windowing_avm_read@20000000
    // out out_memdep_14_windowing_avm_write@20000000
    // out out_memdep_14_windowing_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_o_writeack@12
    windowing_i_llvm_fpga_mem_memdep_14_0 thei_llvm_fpga_mem_memdep_14_windowing3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_c),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_14_windowing3_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_V0),
        .in_i_writedata(c_float_0_000000e_006_q),
        .in_memdep_14_windowing_avm_readdata(in_memdep_14_windowing_avm_readdata),
        .in_memdep_14_windowing_avm_readdatavalid(in_memdep_14_windowing_avm_readdatavalid),
        .in_memdep_14_windowing_avm_waitrequest(in_memdep_14_windowing_avm_waitrequest),
        .in_memdep_14_windowing_avm_writeack(in_memdep_14_windowing_avm_writeack),
        .out_memdep_14_windowing_avm_address(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_address),
        .out_memdep_14_windowing_avm_burstcount(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_burstcount),
        .out_memdep_14_windowing_avm_byteenable(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_byteenable),
        .out_memdep_14_windowing_avm_enable(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_enable),
        .out_memdep_14_windowing_avm_read(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_read),
        .out_memdep_14_windowing_avm_write(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_write),
        .out_memdep_14_windowing_avm_writedata(i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_14_windowing3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_14_windowing3_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_14_windowing3_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_memdep_14_windowing_avm_address = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_address;
    assign out_memdep_14_windowing_avm_enable = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_enable;
    assign out_memdep_14_windowing_avm_read = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_read;
    assign out_memdep_14_windowing_avm_write = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_write;
    assign out_memdep_14_windowing_avm_writedata = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_writedata;
    assign out_memdep_14_windowing_avm_byteenable = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_byteenable;
    assign out_memdep_14_windowing_avm_burstcount = i_llvm_fpga_mem_memdep_14_windowing3_out_memdep_14_windowing_avm_burstcount;

    // bubble_join_i_llvm_fpga_mem_memdep_14_windowing3(BITJOIN,50)
    assign bubble_join_i_llvm_fpga_mem_memdep_14_windowing3_q = i_llvm_fpga_mem_memdep_14_windowing3_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_14_windowing3(BITSELECT,51)
    assign bubble_select_i_llvm_fpga_mem_memdep_14_windowing3_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_14_windowing3_q[0:0]);

    // coalesced_delay_0_6(REG,41)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_6_q <= $unsigned(5'b00000);
        end
        else if (SE_coalesced_delay_0_6_backEN == 1'b1)
        begin
            coalesced_delay_0_6_q <= $unsigned(SR_SE_coalesced_delay_0_6_D0);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,34)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_6_q[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_6_q[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_6_q[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_6_q[3:3]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_6_q[4:4]);

    // dupName_0_sync_out_x(GPOUT,3)@12
    assign out_c0_exe5122 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe6123 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe7124 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe8125 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe9126 = sel_for_coalesced_delay_0_f;
    assign out_memdep_14 = bubble_select_i_llvm_fpga_mem_memdep_14_windowing3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_mem_memdep_14_windowing3_V0;

    // ext_sig_sync_out(GPOUT,11)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out = i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out = i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_windowing6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_arrayinit_body6_i_windowings_c0_enter10115_windowing1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,25)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
