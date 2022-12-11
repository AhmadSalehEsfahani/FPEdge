
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
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "aldec.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/aldec/rivierapro_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog -sv2k5 <your compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
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

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "tb"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga/21.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000113_invTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000114_invTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000117_invTables_lutmem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000121_invTables_lutmem.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                       ./libraries/altera_ver           
vmap       altera_ver            ./libraries/altera_ver           
ensure_lib                       ./libraries/lpm_ver              
vmap       lpm_ver               ./libraries/lpm_ver              
ensure_lib                       ./libraries/sgate_ver            
vmap       sgate_ver             ./libraries/sgate_ver            
ensure_lib                       ./libraries/altera_mf_ver        
vmap       altera_mf_ver         ./libraries/altera_mf_ver        
ensure_lib                       ./libraries/altera_lnsim_ver     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver     
ensure_lib                       ./libraries/cyclonev_ver         
vmap       cyclonev_ver          ./libraries/cyclonev_ver         
ensure_lib                       ./libraries/cyclonev_hssi_ver    
vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver    
ensure_lib                       ./libraries/cyclonev_pcie_hip_ver
vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver
ensure_lib                                                                    ./libraries/windowing_internal_inst                                           
vmap       windowing_internal_inst                                            ./libraries/windowing_internal_inst                                           
ensure_lib                                                                    ./libraries/projection_internal_inst                                          
vmap       projection_internal_inst                                           ./libraries/projection_internal_inst                                          
ensure_lib                                                                    ./libraries/irq_mapper                                                        
vmap       irq_mapper                                                         ./libraries/irq_mapper                                                        
ensure_lib                                                                    ./libraries/windowing_inst                                                    
vmap       windowing_inst                                                     ./libraries/windowing_inst                                                    
ensure_lib                                                                    ./libraries/stream_source_dpi_bfm_projection_stream_in_tuple_inst             
vmap       stream_source_dpi_bfm_projection_stream_in_tuple_inst              ./libraries/stream_source_dpi_bfm_projection_stream_in_tuple_inst             
ensure_lib                                                                    ./libraries/stream_sink_dpi_bfm_projection_stream_out_tuple_inst              
vmap       stream_sink_dpi_bfm_projection_stream_out_tuple_inst               ./libraries/stream_sink_dpi_bfm_projection_stream_out_tuple_inst              
ensure_lib                                                                    ./libraries/split_component_start_inst                                        
vmap       split_component_start_inst                                         ./libraries/split_component_start_inst                                        
ensure_lib                                                                    ./libraries/projection_inst                                                   
vmap       projection_inst                                                    ./libraries/projection_inst                                                   
ensure_lib                                                                    ./libraries/projection_component_dpi_controller_stream_active_concatenate_inst
vmap       projection_component_dpi_controller_stream_active_concatenate_inst ./libraries/projection_component_dpi_controller_stream_active_concatenate_inst
ensure_lib                                                                    ./libraries/projection_component_dpi_controller_bind_conduit_fanout_inst      
vmap       projection_component_dpi_controller_bind_conduit_fanout_inst       ./libraries/projection_component_dpi_controller_bind_conduit_fanout_inst      
ensure_lib                                                                    ./libraries/main_dpi_controller_inst                                          
vmap       main_dpi_controller_inst                                           ./libraries/main_dpi_controller_inst                                          
ensure_lib                                                                    ./libraries/concatenate_component_done_inst                                   
vmap       concatenate_component_done_inst                                    ./libraries/concatenate_component_done_inst                                   
ensure_lib                                                                    ./libraries/component_dpi_controller_projection_inst                          
vmap       component_dpi_controller_projection_inst                           ./libraries/component_dpi_controller_projection_inst                          
ensure_lib                                                                    ./libraries/clock_reset_inst                                                  
vmap       clock_reset_inst                                                   ./libraries/clock_reset_inst                                                  

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                    -work altera_ver           
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                             -work lpm_ver              
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                -work sgate_ver            
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                            -work altera_mf_ver        
  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                        -work altera_lnsim_ver     
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                       -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                  -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"              -work cyclonev_pcie_hip_ver
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_pop.v"                                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_push.v"                                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_top.v"                                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_permute_address.v"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_pipelined.v"                                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_enabled.v"                                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_basic_coalescer.v"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_simple.v"                                                             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_streaming.v"                                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_burst_host.v"                                                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_bursting_load_stores.v"                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_non_aligned_write.v"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_read_cache.v"                                                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_atomic.v"                                                             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_prefetch_block.v"                                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_wide_wrapper.v"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_streaming_prefetch.v"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_aligned_burst_coalesced_lsu.v"                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_toggle_detect.v"                                                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_debug_mem.v"                                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_write.sv"                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/lsu_burst_coalesced_pipelined_read.sv"                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fifo_stall_valid_lookahead.sv"                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_global_load_store.sv"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu.sv"                                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_burst_coalescer.sv"                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_coalescer_dynamic_timeout.sv"                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_data_aligner.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_read_cache.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_read_data_alignment.sv"                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_unaligned_controller.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_word_coalescer.sv"                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_write_data_alignment.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_lsu_write_kernel_downstream.sv"                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_full_detector.v"                                                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_decr.sv"                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_loop_limiter.v"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_function_wrapper.sv"                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_function.sv"                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_aggregation_B1_start_sr_1.sv"                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_aggregation_B0_runOnce.sv"                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_B0_runOnce_branch.sv"                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_B0_runOnce_merge.sv"                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_aggregation_B0_runOnce_stall_region.sv"                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_B0_runOnce_merge_reg.sv"                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_aggregation0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_aggregation0_reg.sv"         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_aggregation0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_aggregation1_reg.sv"       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_aggregation_B1_start.sv"                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_B1_start_branch.sv"                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_B1_start_merge.sv"                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_aggregation_B1_start_stall_region.sv"                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_aggregation_B1_start_merge_reg.sv"                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iord_bl_call_aggregation_unn0000gation1_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iowr_bl_return_aggregation_u0000gation2_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_wt_entry_aggrega0000_enter1_aggregation1.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_wt_entry_a0000_enter1_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_aggregation0.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond_aggregation0.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_s_c1_in_wt_entry_aggrega00001_enter_aggregation5.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000c1_exit_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000gregation1_data_fifo.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c1_out_0000ation1_full_detector.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c1_in_wt_entry_a00001_enter_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent00003a0054c2a6344c246w65.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent00006uq0cp0ju20cp0jo0ouz.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_flt_i_sfc_logic_s_c1_in_wt_ent0000b0c2463a0054c2a6355y.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_avg_1_aggr0000_0_pop4_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_count_1_ag0000_0_pop3_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_max_1_aggr0000_0_pop6_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_min_1_aggr0000_0_pop5_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_f32_sum_1_aggr0000_0_pop7_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_avg_1_agg00000_push4_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_count_1_a00000_push3_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_max_1_agg00000_push6_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_min_1_agg00000_push5_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_f32_sum_1_agg00000_push7_aggregation0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_aggregation2_sr.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_goin0000regation2_valid_fifo.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_function.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B2_sr_1.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B3_sr_0.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B4_sr_1.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B5_sr_0.sv"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B0_runOnce.sv"                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B0_runOnce_stall_region.sv"                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B0_runOnce_merge_reg.sv"                                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B0_runOnce_branch.sv"                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B0_runOnce_merge.sv"                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B1_start.sv"                                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B1_start_stall_region.sv"                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_8_0.sv"                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_wt_entry_s_c0_enter13_windowing1.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000s_c0_exit_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter13_windowing0.sv"        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going49_0.sv"                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond50_0.sv"                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B1_start_merge_reg.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iord_bl_call_unnamed_windowing1_windowing0.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop9_0.sv"                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop9_5_reg.sv"                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop10_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop10_6_reg.sv"                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop11_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop11_7_reg.sv"                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop12_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop12_8_reg.sv"                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi_pop8_0.sv"                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi_pop8_4_reg.sv"                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B1_start_branch.sv"                                             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B1_start_merge.sv"                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B2.sv"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B2_stall_region.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_arrayinit_body_i0000enter8814_windowing1.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000c0_exit92_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000windowing1_data_fifo.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0000owing1_full_detector.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_arrayinit_0000enter8814_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going36_0.sv"                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_forked5152_pop17_0.sv"                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi15_pop954_pop18_0.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop1055_pop19_0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi18_pop1157_pop20_0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop1259_pop22_0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_reduction_158_pop21_windowing0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_cleanups39_pop16_0.sv"                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_initerations34_pop15_0.sv"                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop13_0.sv"                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_p64i32_arrayinit_cur_i_pop14_0.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_forked5152_push17_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_lastiniteration38_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi15_pop954_push18_0.sv"            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_pop1055_push19_0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi18_pop1157_push20_0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_pop1259_push22_0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond46_0.sv"                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_reduction_158_push21_windowing0.sv"         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_cleanups39_push16_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_initerations34_push15_0.sv"                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i3_fpga_indvars_iv_push13_0.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_p64i32_arrayinit_cur_i_push14_0.sv"            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B2_merge_reg.sv"                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_0.sv"                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B2_branch.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B2_merge.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B3.sv"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B3_stall_region.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_12_0.sv"                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_13_0.sv"                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi_push8_0.sv"                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi_push8_1_reg.sv"                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B3_branch.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B3_merge.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B4.sv"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B4_stall_region.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_arrayinit_body6_0000nter10115_windowing1.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit117_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0001windowing1_data_fifo.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_0001owing1_full_detector.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_arrayinit_0000nter10115_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_0.sv"                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_forked5153_pop27_0.sv"                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi16_pop1056_pop28_0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_or2461_pop30_0.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_memdep_phi23_pop1260_pop29_0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i1_reduction_562_pop31_windowing0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_cleanups_pop26_0.sv"                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i2_initerations_pop25_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i3_fpga_indvars_iv30_pop23_0.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_p64f32_arrayinit_cur7_i_pop24_0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_forked5153_push27_0.sv"                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_lastiniteration_0.sv"                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_pop1056_push28_0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_or2461_push30_0.sv"            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_pop1260_push29_0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_notexitcond_0.sv"                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_reduction_562_push31_windowing0.sv"         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_cleanups_push26_0.sv"                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i2_initerations_push25_0.sv"                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i3_fpga_indvars_iv30_push23_0.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_p64f32_arrayinit_cur7_i_push24_0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B4_merge_reg.sv"                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_14_0.sv"                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B4_branch.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B4_merge.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B5.sv"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_bb_B5_stall_region.sv"                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memcoalesce_lo0000ique_1211_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_readdata_reg_memcoalesce_load_0000ique_1211_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iord_bl_return_aggregation_unnamed_4_windowing0.sv"           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iord_bl_stream_in_tuple_unnamed_2_windowing0.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iowr_bl_call_aggregation_unnamed_3_windowing0.sv"             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iowr_bl_stream_out_tuple_or_6_0.sv"                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_19_0.sv"                                 -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_mem_memdep_310_0.sv"                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_s_c0_in_0tuple_qeaa_xz_e0000_enter129_windowing4.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_sfc_exit_s_c0_out_00000_exit136_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_sfc_logic_s_c0_in_0tuple_qea0000_enter129_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pop_i32_i_1_yaxaea0000ic_0_pop7_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i32_i_1_yaxae0000c_0_push7_windowing0.sv"      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_iowr_bl_return_unnamed_windowing5_windowing0.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi15_push9_0.sv"                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi15_push9_1_reg.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_push10_0.sv"                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi16_push10_10_reg.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi18_push11_0.sv"                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi18_push11_27_reg.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_push12_0.sv"                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_push_i1_memdep_phi23_push12_44_reg.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B5_branch.sv"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_B5_merge.sv"                                                    -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going36_6_sr.sv"                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going36_6_valid_fifo.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going49_2_sr.sv"                      -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going49_2_valid_fifo.sv"              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_6_sr.sv"                        -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_i_llvm_fpga_pipeline_keep_going_6_valid_fifo.sv"                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_loop_limiter_0.sv"                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_loop_limiter_1.sv"                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_avm_to_ic.v"                                                          -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mem1x.v"                                                              -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram.sv"                                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_ecc.sv"                                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_tall_depth_stitch.sv"                                             -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_remaining_width.sv"                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_bits_per_enable.sv"                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_generic_two_way_depth_stitch.sv"                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_generic_three_way_depth_stitch.sv"                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_short_depth_stitch.sv"                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_bottom_width_stitch.sv"                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_bottom_depth_stitch.sv"                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_lower.sv"                                                         -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_lower_mlab_simple_dual_port.sv"                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_lower_m20k_simple_dual_port.sv"                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_ram_lower_m20k_true_dual_port.sv"                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_local_mem_router.v"                                                -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_host_endpoint.v"                                                   -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_arb_intf.v"                                                           -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_intf.v"                                                            -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_agent_endpoint.v"                                                  -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_agent_rrp.v"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ic_agent_wrp.v"                                                       -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_arb2.v"                                                               -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/windowing_internal.v"                                                     -work windowing_internal_inst                                           
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                     -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                          -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                               -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                            -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                                    -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                            -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                        -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                                 -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                        -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                                    -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                             -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                                  -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                                 -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                             -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                        -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                     -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                         -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                                 -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_pop.v"                                                                -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_push.v"                                                               -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                                 -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                        -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                     -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                                -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                                  -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                                -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                                  -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                     -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                               -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                         -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_function_wrapper.sv"                                           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_function.sv"                                                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_bb_B0_runOnce.sv"                                              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_bb_B0_runOnce_stall_region.sv"                                 -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"                       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"                     -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"                 -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_B0_runOnce_merge_reg.sv"                                       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_B0_runOnce_branch.sv"                                          -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_B0_runOnce_merge.sv"                                           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_bb_B1_start.sv"                                                -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_bb_B1_start_stall_region.sv"                                   -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0.sv"            -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_iowr_bl_stream_out_tuple_or_4_0.sv"                          -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0.sv"             -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_projection0.sv"      -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_projection0.sv"       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pipeline_keep_going_0.sv"                          -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_push_i1_notexitcond_0.sv"                          -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4.sv"              -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_projection0.sv"      -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_projection0.sv"        -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_iord_bl_call_unnamed_projection2_projection0.sv"             -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_iowr_bl_return_unnamed_projection4_projection0.sv"           -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_B1_start_merge_reg.sv"                                         -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_B1_start_branch.sv"                                            -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_B1_start_merge.sv"                                             -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pipeline_keep_going_1_sr.sv"                       -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"               -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/projection_internal.v"                                                    -work projection_internal_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                         -work irq_mapper                                                        
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_windowing_inst.v"                                                      -work windowing_inst                                                    
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                         -work stream_source_dpi_bfm_projection_stream_in_tuple_inst             
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                           -work stream_sink_dpi_bfm_projection_stream_out_tuple_inst              
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                         -work split_component_start_inst                                        
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_projection_inst.v"                                                     -work projection_inst                                                   
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_projection_component_dpi_controller_stream_active_concatenate_inst.sv" -work projection_component_dpi_controller_stream_active_concatenate_inst
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_projection_component_dpi_controller_bind_conduit_fanout_inst.sv"       -work projection_component_dpi_controller_bind_conduit_fanout_inst      
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                           -work main_dpi_controller_inst                                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv"                                    -work concatenate_component_done_inst                                   
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                           -work component_dpi_controller_projection_inst                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                         -work component_dpi_controller_projection_inst                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                               -work component_dpi_controller_projection_inst                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                      -work component_dpi_controller_projection_inst                          
  eval  vlog  $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                                   -work clock_reset_inst                                                  
  eval  vlog -v2k5 $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/tb.v"                                                                                                                                                        
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L windowing_internal_inst -L projection_internal_inst -L irq_mapper -L windowing_inst -L stream_source_dpi_bfm_projection_stream_in_tuple_inst -L stream_sink_dpi_bfm_projection_stream_out_tuple_inst -L split_component_start_inst -L projection_inst -L projection_component_dpi_controller_stream_active_concatenate_inst -L projection_component_dpi_controller_bind_conduit_fanout_inst -L main_dpi_controller_inst -L concatenate_component_done_inst -L component_dpi_controller_projection_inst -L clock_reset_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L windowing_internal_inst -L projection_internal_inst -L irq_mapper -L windowing_inst -L stream_source_dpi_bfm_projection_stream_in_tuple_inst -L stream_sink_dpi_bfm_projection_stream_out_tuple_inst -L split_component_start_inst -L projection_inst -L projection_component_dpi_controller_stream_active_concatenate_inst -L projection_component_dpi_controller_bind_conduit_fanout_inst -L main_dpi_controller_inst -L concatenate_component_done_inst -L component_dpi_controller_projection_inst -L clock_reset_inst -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h
