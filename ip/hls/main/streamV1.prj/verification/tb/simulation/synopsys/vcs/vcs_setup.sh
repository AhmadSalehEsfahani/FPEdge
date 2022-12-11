
# (C) 2001-2022 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 21.1 850 win32 2022.12.11.11:43:06

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 21.1 850 win32 2022.12.11.11:43:06
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/intelfpga/21.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000113_invTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000114_invTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000117_invTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000121_invTables_lutmem.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/submodules/dspba_library_ver.sv \
  $QSYS_SIMDIR/submodules/acl_ecc_pkg.sv \
  $QSYS_SIMDIR/submodules/acl_data_fifo.v \
  $QSYS_SIMDIR/submodules/acl_fifo.v \
  $QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv \
  $QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv \
  $QSYS_SIMDIR/submodules/acl_ecc_decoder.sv \
  $QSYS_SIMDIR/submodules/acl_ecc_encoder.sv \
  $QSYS_SIMDIR/submodules/acl_ll_fifo.v \
  $QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v \
  $QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v \
  $QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v \
  $QSYS_SIMDIR/submodules/acl_staging_reg.v \
  $QSYS_SIMDIR/submodules/hld_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv \
  $QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv \
  $QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv \
  $QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv \
  $QSYS_SIMDIR/submodules/acl_reset_handler.sv \
  $QSYS_SIMDIR/submodules/acl_lfsr.sv \
  $QSYS_SIMDIR/submodules/acl_mlab_fifo.sv \
  $QSYS_SIMDIR/submodules/acl_parameter_assert.svh \
  $QSYS_SIMDIR/submodules/acl_pop.v \
  $QSYS_SIMDIR/submodules/acl_push.v \
  $QSYS_SIMDIR/submodules/acl_token_fifo_counter.v \
  $QSYS_SIMDIR/submodules/acl_pipeline.v \
  $QSYS_SIMDIR/submodules/acl_dspba_buffer.v \
  $QSYS_SIMDIR/submodules/acl_enable_sink.v \
  $QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv \
  $QSYS_SIMDIR/submodules/hld_iord.sv \
  $QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv \
  $QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv \
  $QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv \
  $QSYS_SIMDIR/submodules/lsu_top.v \
  $QSYS_SIMDIR/submodules/lsu_permute_address.v \
  $QSYS_SIMDIR/submodules/lsu_pipelined.v \
  $QSYS_SIMDIR/submodules/lsu_enabled.v \
  $QSYS_SIMDIR/submodules/lsu_basic_coalescer.v \
  $QSYS_SIMDIR/submodules/lsu_simple.v \
  $QSYS_SIMDIR/submodules/lsu_streaming.v \
  $QSYS_SIMDIR/submodules/lsu_burst_host.v \
  $QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v \
  $QSYS_SIMDIR/submodules/lsu_non_aligned_write.v \
  $QSYS_SIMDIR/submodules/lsu_read_cache.v \
  $QSYS_SIMDIR/submodules/lsu_atomic.v \
  $QSYS_SIMDIR/submodules/lsu_prefetch_block.v \
  $QSYS_SIMDIR/submodules/lsu_wide_wrapper.v \
  $QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v \
  $QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v \
  $QSYS_SIMDIR/submodules/acl_toggle_detect.v \
  $QSYS_SIMDIR/submodules/acl_debug_mem.v \
  $QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv \
  $QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv \
  $QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv \
  $QSYS_SIMDIR/submodules/hld_global_load_store.sv \
  $QSYS_SIMDIR/submodules/hld_lsu.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv \
  $QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv \
  $QSYS_SIMDIR/submodules/acl_full_detector.v \
  $QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_decr.sv \
  $QSYS_SIMDIR/submodules/hld_iowr.sv \
  $QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv \
  $QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv \
  $QSYS_SIMDIR/submodules/hld_loop_profiler.sv \
  $QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv \
  $QSYS_SIMDIR/submodules/acl_loop_limiter.v \
  $QSYS_SIMDIR/submodules/acl_reset_wire.v \
  $QSYS_SIMDIR/submodules/windowing_function_wrapper.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_function.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_aggregation_B1_start_sr_1.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_aggregation_B0_runOnce.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_B0_runOnce_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_B0_runOnce_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_aggregation_B0_runOnce_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_B0_runOnce_merge_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_aggregation0_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_aggregation1_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_aggregation_B1_start.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_B1_start_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_B1_start_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_aggregation_B1_start_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_aggregation_B1_start_merge_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iord_bl_call_aggregation_unn0000gation1_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iowr_bl_return_aggregation_u0000gation2_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_wt_entry_aggrega0000_enter1_aggregation1.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_wt_entry_a0000_enter1_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_s_c1_in_wt_entry_aggrega00001_enter_aggregation5.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000c1_exit_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000gregation1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000ation1_full_detector.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c1_in_wt_entry_a00001_enter_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent00003a0054c2a6344c246w65.sv \
  $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent00006uq0cp0ju20cp0jo0ouz.sv \
  $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000b0c2463a0054c2a6355y.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_avg_1_aggr0000_0_pop4_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_count_1_ag0000_0_pop3_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_max_1_aggr0000_0_pop6_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_min_1_aggr0000_0_pop5_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_sum_1_aggr0000_0_pop7_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_avg_1_agg00000_push4_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_count_1_a00000_push3_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_max_1_agg00000_push6_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_min_1_agg00000_push5_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_sum_1_agg00000_push7_aggregation0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_aggregation2_sr.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_goin0000regation2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_function.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B2_sr_1.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B3_sr_0.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B4_sr_1.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B5_sr_0.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B0_runOnce.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B0_runOnce_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_B0_runOnce_merge_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_B0_runOnce_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_B0_runOnce_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B1_start.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B1_start_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_8_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_wt_entry_s_c0_enter13_windowing1.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter13_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going49_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond50_0.sv \
  $QSYS_SIMDIR/submodules/windowing_B1_start_merge_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iord_bl_call_unnamed_windowing1_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop9_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop9_5_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop10_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop10_6_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop11_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop11_7_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop12_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop12_8_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi_pop8_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi_pop8_4_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_B1_start_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_B1_start_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B2.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B2_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_arrayinit_body_i0000enter8814_windowing1.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit92_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000windowing1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000owing1_full_detector.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_arrayinit_0000enter8814_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going36_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_forked5152_pop17_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_reduction_158_pop21_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_cleanups39_pop16_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_initerations34_pop15_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_forked5152_push17_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_lastiniteration38_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond46_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_reduction_158_push21_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_cleanups39_push16_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_initerations34_push15_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i3_fpga_indvars_iv_push13_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_0.sv \
  $QSYS_SIMDIR/submodules/windowing_B2_merge_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_0.sv \
  $QSYS_SIMDIR/submodules/windowing_B2_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_B2_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B3.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B3_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_12_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_13_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi_push8_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi_push8_1_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_B3_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_B3_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B4.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B4_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_arrayinit_body6_0000nter10115_windowing1.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit117_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0001windowing1_data_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0001owing1_full_detector.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_arrayinit_0000nter10115_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_forked5153_pop27_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_reduction_562_pop31_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_cleanups_pop26_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_initerations_pop25_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_forked5153_push27_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_lastiniteration_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_reduction_562_push31_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_cleanups_push26_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_initerations_push25_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_0.sv \
  $QSYS_SIMDIR/submodules/windowing_B4_merge_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_14_0.sv \
  $QSYS_SIMDIR/submodules/windowing_B4_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_B4_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B5.sv \
  $QSYS_SIMDIR/submodules/windowing_bb_B5_stall_region.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memcoalesce_lo0000ique_1211_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_readdata_reg_memcoalesce_load_0000ique_1211_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iord_bl_return_aggregation_unnamed_4_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iord_bl_stream_in_tuple_unnamed_2_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iowr_bl_call_aggregation_unnamed_3_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iowr_bl_stream_out_tuple_or_6_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_19_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_310_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_0tuple_qeaa_xz_e0000_enter129_windowing4.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit136_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_0tuple_qea0000_enter129_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i32_i_1_yaxaea0000ic_0_pop7_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i32_i_1_yaxae0000c_0_push7_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_iowr_bl_return_unnamed_windowing5_windowing0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi15_push9_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi15_push9_1_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_push10_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_push10_10_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi18_push11_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi18_push11_27_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_push12_0.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_push12_44_reg.sv \
  $QSYS_SIMDIR/submodules/windowing_B5_branch.sv \
  $QSYS_SIMDIR/submodules/windowing_B5_merge.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going36_6_sr.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going36_6_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going49_2_sr.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going49_2_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_6_sr.sv \
  $QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/windowing_loop_limiter_0.sv \
  $QSYS_SIMDIR/submodules/windowing_loop_limiter_1.sv \
  $QSYS_SIMDIR/submodules/acl_avm_to_ic.v \
  $QSYS_SIMDIR/submodules/acl_mem1x.v \
  $QSYS_SIMDIR/submodules/hld_ram.sv \
  $QSYS_SIMDIR/submodules/hld_ram_ecc.sv \
  $QSYS_SIMDIR/submodules/hld_ram_tall_depth_stitch.sv \
  $QSYS_SIMDIR/submodules/hld_ram_remaining_width.sv \
  $QSYS_SIMDIR/submodules/hld_ram_bits_per_enable.sv \
  $QSYS_SIMDIR/submodules/hld_ram_generic_two_way_depth_stitch.sv \
  $QSYS_SIMDIR/submodules/hld_ram_generic_three_way_depth_stitch.sv \
  $QSYS_SIMDIR/submodules/hld_ram_short_depth_stitch.sv \
  $QSYS_SIMDIR/submodules/hld_ram_bottom_width_stitch.sv \
  $QSYS_SIMDIR/submodules/hld_ram_bottom_depth_stitch.sv \
  $QSYS_SIMDIR/submodules/hld_ram_lower.sv \
  $QSYS_SIMDIR/submodules/hld_ram_lower_mlab_simple_dual_port.sv \
  $QSYS_SIMDIR/submodules/hld_ram_lower_m20k_simple_dual_port.sv \
  $QSYS_SIMDIR/submodules/hld_ram_lower_m20k_true_dual_port.sv \
  $QSYS_SIMDIR/submodules/acl_ic_local_mem_router.v \
  $QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v \
  $QSYS_SIMDIR/submodules/acl_arb_intf.v \
  $QSYS_SIMDIR/submodules/acl_ic_intf.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v \
  $QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v \
  $QSYS_SIMDIR/submodules/acl_arb2.v \
  $QSYS_SIMDIR/submodules/windowing_internal.v \
  $QSYS_SIMDIR/submodules/projection_function_wrapper.sv \
  $QSYS_SIMDIR/submodules/projection_function.sv \
  $QSYS_SIMDIR/submodules/projection_bb_B0_runOnce.sv \
  $QSYS_SIMDIR/submodules/projection_bb_B0_runOnce_stall_region.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_push_token_i1_wt_limpush_0.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv \
  $QSYS_SIMDIR/submodules/projection_B0_runOnce_merge_reg.sv \
  $QSYS_SIMDIR/submodules/projection_B0_runOnce_branch.sv \
  $QSYS_SIMDIR/submodules/projection_B0_runOnce_merge.sv \
  $QSYS_SIMDIR/submodules/projection_bb_B1_start.sv \
  $QSYS_SIMDIR/submodules/projection_bb_B1_start_stall_region.sv \
  $QSYS_SIMDIR/submodules/projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_iowr_bl_stream_out_tuple_or_4_0.sv \
  $QSYS_SIMDIR/submodules/projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pipeline_keep_going_0.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_push_i1_notexitcond_0.sv \
  $QSYS_SIMDIR/submodules/projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_iord_bl_call_unnamed_projection2_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_i_iowr_bl_return_unnamed_projection4_projection0.sv \
  $QSYS_SIMDIR/submodules/projection_B1_start_merge_reg.sv \
  $QSYS_SIMDIR/submodules/projection_B1_start_branch.sv \
  $QSYS_SIMDIR/submodules/projection_B1_start_merge.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pipeline_keep_going_1_sr.sv \
  $QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv \
  $QSYS_SIMDIR/submodules/projection_internal.v \
  $QSYS_SIMDIR/submodules/tb_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/tb_windowing_inst.v \
  $QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv \
  $QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv \
  $QSYS_SIMDIR/submodules/tb_projection_inst.v \
  $QSYS_SIMDIR/submodules/tb_projection_component_dpi_controller_stream_active_concatenate_inst.sv \
  $QSYS_SIMDIR/submodules/tb_projection_component_dpi_controller_bind_conduit_fanout_inst.sv \
  $QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv \
  $QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv \
  $QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv \
  $QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv \
  $QSYS_SIMDIR/tb.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
