
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

# ACDS 21.1 850 win32 2022.12.11.14:24:18

# ----------------------------------------
# ncsim - auto-generated simulation script

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
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "ncsim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
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
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# ncvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/cadence/ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
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
# ACDS 21.1 850 win32 2022.12.11.14:24:18
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/intelfpga/21.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

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
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/streamer_internal_inst/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/streamer_inst/
mkdir -p ./libraries/streamer_component_dpi_controller_bind_conduit_fanout_inst/
mkdir -p ./libraries/stream_source_dpi_bfm_streamer_s_in_inst/
mkdir -p ./libraries/stream_sink_dpi_bfm_streamer_s_out_inst/
mkdir -p ./libraries/split_component_start_inst/
mkdir -p ./libraries/main_dpi_controller_inst/
mkdir -p ./libraries/concatenate_component_done_inst/
mkdir -p ./libraries/component_dpi_controller_streamer_inst/
mkdir -p ./libraries/clock_reset_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000113_invTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000114_invTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000117_invTables_lutmem.hex ./
  cp -f $QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000121_invTables_lutmem.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/dspba_library_ver.sv"                                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_pkg.sv"                                                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_data_fifo.v"                                                     -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fifo.v"                                                          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_altera_syncram_wrapped.sv"                                       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_scfifo_wrapped.sv"                                               -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_decoder.sv"                                                  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ecc_encoder.sv"                                                  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_fifo.v"                                                       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_ll_ram_fifo.v"                                                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_valid_fifo_counter.v"                                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_valid_fifo_counter.v"                                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_staging_reg.v"                                                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo.sv"                                                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mid_speed_fifo.sv"                                               -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_one_ram_fifo.sv"                                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_latency_zero_ram_fifo.sv"                                        -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_fifo_zero_width.sv"                                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_high_speed_fifo.sv"                                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_low_latency_fifo.sv"                                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_zero_latency_fifo.sv"                                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_fanout_pipeline.sv"                                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_std_synchronizer_nocut.v"                                        -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_threshold.sv"                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_lookahead.sv"                                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_handler.sv"                                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_lfsr.sv"                                                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_mlab_fifo.sv"                                                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_parameter_assert.svh"                                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pop.v"                                                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_push.v"                                                          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_token_fifo_counter.v"                                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_pipeline.v"                                                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_dspba_buffer.v"                                                  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_enable_sink.v"                                                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_memory_depth_quantization_pkg.sv"                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord.sv"                                                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_latency.sv"                                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iord_stall_valid.sv"                                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_shift_register_no_reset.sv"                                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr.sv"                                                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_latency.sv"                                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_iowr_stall_valid.sv"                                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_loop_profiler.sv"                                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_full_detector.v"                                                 -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_tessellated_incr_decr_decr.sv"                                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/acl_reset_wire.v"                                                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_function_wrapper.sv"                                        -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_function.sv"                                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_aggregation_B1_start_sr_1.sv"                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_aggregation_B0_runOnce.sv"                               -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_B0_runOnce_branch.sv"                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_B0_runOnce_merge.sv"                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_aggregation_B0_runOnce_stall_region.sv"                  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_B0_runOnce_merge_reg.sv"                        -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_aggregation0.sv"         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_aggregation0_reg.sv"     -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_aggregation0.sv"       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_aggregation1_reg.sv"   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_aggregation_B1_start.sv"                                 -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_B1_start_branch.sv"                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_B1_start_merge.sv"                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_aggregation_B1_start_stall_region.sv"                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_aggregation_B1_start_merge_reg.sv"                          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_call_aggregation_unna0000gation1_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_return_aggregation_un0000gation2_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c0_in_wt_entry_aggregat0000_enter1_aggregation1.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c0_out_w0000c0_exit_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c0_in_wt_entry_ag0000_enter1_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_aggregation0.sv"            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_i1_notexitcond_aggregation0.sv"            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c1_in_wt_entry_aggregat00001_enter_aggregation5.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000c1_exit_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000gregation1_data_fifo.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000ation1_full_detector.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c1_in_wt_entry_ag00001_enter_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr00003a0054c2a6344c246w65.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr00006uq0cp0ju20cp0jo0ouz.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_flt_i_sfc_logic_s_c1_in_wt_entr0000b0c2463a0054c2a6355y.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_f32_avg_1_aggre0000_0_pop5_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_f32_count_1_agg0000_0_pop3_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_f32_max_1_aggre0000_0_pop6_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_f32_min_1_aggre0000_0_pop7_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_f32_sum_1_aggre0000_0_pop4_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_f32_avg_1_aggr00000_push5_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_f32_count_1_ag00000_push3_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_f32_max_1_aggr00000_push6_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_f32_min_1_aggr00000_push7_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_f32_sum_1_aggr00000_push4_aggregation0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_aggregation2_sr.sv"         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_aggregation2_valid_fifo.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_function.sv"                                     -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_projection_B0_runOnce.sv"                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_projection_B0_runOnce_stall_region.sv"                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_projection0.sv"          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_projection0_reg.sv"      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_projection0.sv"        -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_projection1_reg.sv"    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_B0_runOnce_merge_reg.sv"                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_B0_runOnce_branch.sv"                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_B0_runOnce_merge.sv"                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_projection_B1_start.sv"                                  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_projection_B1_start_stall_region.sv"                     -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_s_in_unnamed_projection3_projection0.sv"          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_s0_or_4_projection0.sv"                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c0_in_wt_entry_projecti00000_enter1_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c0_out_w0000_c0_exit_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c0_in_wt_entry_pr00000_enter1_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_projection0.sv"             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_i1_notexitcond_projection0.sv"             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c1_in_wt_entry_projections_c1_enter_projection4.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000_c1_exit_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c1_in_wt_entry_pr0000c1_enter_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_call_projection_unnam0000jection2_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_return_projection_unn0000jection4_projection0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_B1_start_merge_reg.sv"                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_B1_start_branch.sv"                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_projection_B1_start_merge.sv"                               -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_projection1_sr.sv"          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_projection1_valid_fifo.sv"  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_function.sv"                                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_B0_runOnce.sv"                                           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_B0_runOnce_stall_region.sv"                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"                  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_B0_runOnce_merge_reg.sv"                                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_B0_runOnce_branch.sv"                                       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_B0_runOnce_merge.sv"                                        -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_B1_start.sv"                                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_B1_start_stall_region.sv"                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c0_in_wt_entry_s_c0_enter1_streamer0.sv"            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c0_out_w0000_s_c0_exit_streamer0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_streamer0.sv"      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_0.sv"                       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_i1_notexitcond_0.sv"                       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_call_unnamed_streamer2_streamer0.sv"              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_return_projection_unnamed_5_streamer0.sv"         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_return_windowing_unnamed_6_streamer0.sv"          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_call_projection_unnamed_3_streamer0.sv"           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_call_windowing_unnamed_4_streamer0.sv"            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_return_unnamed_streamer7_streamer0.sv"            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_B1_start_merge_reg.sv"                                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_B1_start_branch.sv"                                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_B1_start_merge.sv"                                          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_1_sr.sv"                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_function.sv"                                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_windowing_B0_runOnce.sv"                                 -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_windowing_B0_runOnce_stall_region.sv"                    -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0.sv"           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_token_i1_wt_limpop_windowing0_reg.sv"       -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_windowing0.sv"         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_token_i1_wt_limpush_windowing1_reg.sv"     -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_B0_runOnce_merge_reg.sv"                          -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_B0_runOnce_branch.sv"                             -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_B0_runOnce_merge.sv"                              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_windowing_B1_start.sv"                                   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_bb_windowing_B1_start_stall_region.sv"                      -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_return_aggregation_un0000indowing4_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_s0_unnamed_windowing2_windowing0.sv"              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_call_aggregation_unna0000indowing3_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_s_out_or_6_windowing0.sv"                         -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c0_in_wt_entry_windowings_c0_enter1_windowing1.sv"  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c0_out_w0000s_c0_exit_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c0_in_wt_entry_wi0000c0_enter1_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_windowing0.sv"              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_i1_notexitcond_windowing0.sv"              -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_s_c1_in_wt_entry_windowings_c1_enter_windowing6.sv"   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_sfc_exit_s_c1_out_w0000s_c1_exit_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_sfc_logic_s_c1_in_wt_entry_wi0000_c1_enter_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pop_i32_i_1_windowi0000ic_0_pop3_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_push_i32_i_1_window0000c_0_push3_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_B1_start_merge_reg.sv"                            -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iord_bl_call_windowing_unnamed_windowing1_windowing0.sv"  -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_iowr_bl_return_windowing_unna0000indowing5_windowing0.sv" -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_B1_start_branch.sv"                               -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_windowing_B1_start_merge.sv"                                -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_windowing2_sr.sv"           -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_i_llvm_fpga_pipeline_keep_going_windowing2_valid_fifo.sv"   -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/streamer_internal.v"                                                 -work streamer_internal_inst                                     -cdslib ./cds_libs/streamer_internal_inst.cds.lib                                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_irq_mapper.sv"                                                    -work irq_mapper                                                 -cdslib ./cds_libs/irq_mapper.cds.lib                                                
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/tb_streamer_inst.v"                                                  -work streamer_inst                                              -cdslib ./cds_libs/streamer_inst.cds.lib                                             
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_streamer_component_dpi_controller_bind_conduit_fanout_inst.sv"    -work streamer_component_dpi_controller_bind_conduit_fanout_inst -cdslib ./cds_libs/streamer_component_dpi_controller_bind_conduit_fanout_inst.cds.lib
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                    -work stream_source_dpi_bfm_streamer_s_in_inst                   -cdslib ./cds_libs/stream_source_dpi_bfm_streamer_s_in_inst.cds.lib                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                      -work stream_sink_dpi_bfm_streamer_s_out_inst                    -cdslib ./cds_libs/stream_sink_dpi_bfm_streamer_s_out_inst.cds.lib                   
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_split_component_start_inst.sv"                                    -work split_component_start_inst                                 -cdslib ./cds_libs/split_component_start_inst.cds.lib                                
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_main_dpi_controller.sv"                                      -work main_dpi_controller_inst                                   -cdslib ./cds_libs/main_dpi_controller_inst.cds.lib                                  
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/tb_concatenate_component_done_inst.sv"                               -work concatenate_component_done_inst                            -cdslib ./cds_libs/concatenate_component_done_inst.cds.lib                           
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_sink_dpi_bfm.sv"                                      -work component_dpi_controller_streamer_inst                     -cdslib ./cds_libs/component_dpi_controller_streamer_inst.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_stream_source_dpi_bfm.sv"                                    -work component_dpi_controller_streamer_inst                     -cdslib ./cds_libs/component_dpi_controller_streamer_inst.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hld_sim_latency_tracker.sv"                                          -work component_dpi_controller_streamer_inst                     -cdslib ./cds_libs/component_dpi_controller_streamer_inst.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_component_dpi_controller.sv"                                 -work component_dpi_controller_streamer_inst                     -cdslib ./cds_libs/component_dpi_controller_streamer_inst.cds.lib                    
  ncvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/hls_sim_clock_reset.sv"                                              -work clock_reset_inst                                           -cdslib ./cds_libs/clock_reset_inst.cds.lib                                          
  ncvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/tb.v"                                                                                                                                                                                                                                 
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  export GENERIC_PARAM_COMPAT_CHECK=1
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
