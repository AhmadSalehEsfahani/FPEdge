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

// SystemVerilog created from bb_aggregation_B0_runOnce
// Created for function/kernel streamer
// SystemVerilog created on Sun Dec 11 14:23:30 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module streamer_bb_aggregation_B0_runOnce (
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] aggregation_B0_runOnce_branch_out_stall_out;
    wire [0:0] aggregation_B0_runOnce_branch_out_valid_out_0;
    wire [0:0] aggregation_B0_runOnce_merge_out_stall_out_0;
    wire [0:0] aggregation_B0_runOnce_merge_out_valid_out;
    wire [0:0] bb_aggregation_B0_runOnce_stall_region_out_stall_out;
    wire [0:0] bb_aggregation_B0_runOnce_stall_region_out_valid_out;


    // aggregation_B0_runOnce_branch(BLACKBOX,2)
    streamer_aggregation_B0_runOnce_branch theaggregation_B0_runOnce_branch (
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_aggregation_B0_runOnce_stall_region_out_valid_out),
        .out_stall_out(aggregation_B0_runOnce_branch_out_stall_out),
        .out_valid_out_0(aggregation_B0_runOnce_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_aggregation_B0_runOnce_stall_region(BLACKBOX,4)
    streamer_bb_aggregation_B0_runOnce_stall_region thebb_aggregation_B0_runOnce_stall_region (
        .in_stall_in(aggregation_B0_runOnce_branch_out_stall_out),
        .in_valid_in(aggregation_B0_runOnce_merge_out_valid_out),
        .out_stall_out(bb_aggregation_B0_runOnce_stall_region_out_stall_out),
        .out_valid_out(bb_aggregation_B0_runOnce_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // aggregation_B0_runOnce_merge(BLACKBOX,3)
    streamer_aggregation_B0_runOnce_merge theaggregation_B0_runOnce_merge (
        .in_stall_in(bb_aggregation_B0_runOnce_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_stall_out_0(aggregation_B0_runOnce_merge_out_stall_out_0),
        .out_valid_out(aggregation_B0_runOnce_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out_0(GPOUT,7)
    assign out_stall_out_0 = aggregation_B0_runOnce_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,8)
    assign out_valid_out_0 = aggregation_B0_runOnce_branch_out_valid_out_0;

endmodule
