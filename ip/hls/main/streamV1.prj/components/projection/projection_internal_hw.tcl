package require -exact qsys 15.0
set_module_property NAME projection_internal
set_module_property VERSION 1.0
set_module_property INTERNAL true
set_module_property GROUP HLS
set_module_property DISPLAY_NAME projection_internal
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property SUPPORTED_DEVICE_FAMILIES {"Cyclone V"}
set_module_assignment hls.cosim.name {\3fprojection@@YAXAEAV\3f$stream_in@UTuple@@$$V@ihc@@AEAV\3f$stream_out@UTuple@@$$V@2@@Z}
set_module_assignment hls.compressed.name {projection}

#### Synthesis fileset
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL projection_internal
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "windows64/lib/hld_backend/Libraries/sv/base/dspba_library_ver.sv"
add_fileset_file "acl_ecc_pkg.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_pkg.sv"
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "ip/acl_data_fifo.v"
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "ip/acl_fifo.v"
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_altera_syncram_wrapped.sv"
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_scfifo_wrapped.sv"
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_decoder.sv"
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_encoder.sv"
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_fifo.v"
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_ram_fifo.v"
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_valid_fifo_counter.v"
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_dspba_valid_fifo_counter.v"
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "ip/acl_staging_reg.v"
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "ip/hld_fifo.sv"
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mid_speed_fifo.sv"
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_one_ram_fifo.sv"
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_zero_ram_fifo.sv"
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "ip/hld_fifo_zero_width.sv"
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_high_speed_fifo.sv"
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_low_latency_fifo.sv"
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_zero_latency_fifo.sv"
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "ip/acl_fanout_pipeline.sv"
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "ip/acl_std_synchronizer_nocut.v"
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_threshold.sv"
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_lookahead.sv"
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mlab_fifo.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "ip/acl_pop.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_pipeline.v"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_enable_sink.v" SYSTEM_VERILOG PATH "ip/acl_enable_sink.v"
add_fileset_file "hld_memory_depth_quantization_pkg.sv" SYSTEM_VERILOG PATH "ip/hld_memory_depth_quantization_pkg.sv"
add_fileset_file "hld_iord.sv" SYSTEM_VERILOG PATH "ip/hld_iord.sv"
add_fileset_file "hld_iord_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_latency.sv"
add_fileset_file "hld_iord_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_valid.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "hld_iowr.sv" SYSTEM_VERILOG PATH "ip/hld_iowr.sv"
add_fileset_file "hld_iowr_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_latency.sv"
add_fileset_file "hld_iowr_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_valid.sv"
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "ip/hld_loop_profiler.sv"
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "ip/hld_sim_latency_tracker.sv"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "projection_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/projection_function_wrapper.sv"
add_fileset_file "projection_function.sv" SYSTEM_VERILOG PATH "ip/projection_function.sv"
add_fileset_file "projection_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B0_runOnce.sv"
add_fileset_file "projection_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B0_runOnce_stall_region.sv"
add_fileset_file "projection_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "projection_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "projection_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "projection_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "projection_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/projection_B0_runOnce_merge_reg.sv"
add_fileset_file "projection_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/projection_B0_runOnce_branch.sv"
add_fileset_file "projection_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/projection_B0_runOnce_merge.sv"
add_fileset_file "projection_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B1_start.sv"
add_fileset_file "projection_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B1_start_stall_region.sv"
add_fileset_file "projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0.sv"
add_fileset_file "projection_i_iowr_bl_stream_out_tuple_or_4_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iowr_bl_stream_out_tuple_or_4_0.sv"
add_fileset_file "projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0.sv"
add_fileset_file "projection_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_projection0.sv"
add_fileset_file "projection_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_projection0.sv"
add_fileset_file "projection_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "projection_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4.sv"
add_fileset_file "projection_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_projection0.sv"
add_fileset_file "projection_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_projection0.sv"
add_fileset_file "projection_i_iord_bl_call_unnamed_projection2_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iord_bl_call_unnamed_projection2_projection0.sv"
add_fileset_file "projection_i_iowr_bl_return_unnamed_projection4_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iowr_bl_return_unnamed_projection4_projection0.sv"
add_fileset_file "projection_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/projection_B1_start_merge_reg.sv"
add_fileset_file "projection_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/projection_B1_start_branch.sv"
add_fileset_file "projection_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/projection_B1_start_merge.sv"
add_fileset_file "projection_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "projection_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "projection_internal.v" SYSTEM_VERILOG PATH "projection_internal.v"

#### Simulation fileset
add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL projection_internal
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file "dspba_library_ver.sv" SYSTEM_VERILOG PATH "windows64/lib/hld_backend/Libraries/sv/base/dspba_library_ver.sv"
add_fileset_file "acl_ecc_pkg.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_pkg.sv"
add_fileset_file "acl_data_fifo.v" SYSTEM_VERILOG PATH "ip/acl_data_fifo.v"
add_fileset_file "acl_fifo.v" SYSTEM_VERILOG PATH "ip/acl_fifo.v"
add_fileset_file "acl_altera_syncram_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_altera_syncram_wrapped.sv"
add_fileset_file "acl_scfifo_wrapped.sv" SYSTEM_VERILOG PATH "ip/acl_scfifo_wrapped.sv"
add_fileset_file "acl_ecc_decoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_decoder.sv"
add_fileset_file "acl_ecc_encoder.sv" SYSTEM_VERILOG PATH "ip/acl_ecc_encoder.sv"
add_fileset_file "acl_ll_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_fifo.v"
add_fileset_file "acl_ll_ram_fifo.v" SYSTEM_VERILOG PATH "ip/acl_ll_ram_fifo.v"
add_fileset_file "acl_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_valid_fifo_counter.v"
add_fileset_file "acl_dspba_valid_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_dspba_valid_fifo_counter.v"
add_fileset_file "acl_staging_reg.v" SYSTEM_VERILOG PATH "ip/acl_staging_reg.v"
add_fileset_file "hld_fifo.sv" SYSTEM_VERILOG PATH "ip/hld_fifo.sv"
add_fileset_file "acl_mid_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mid_speed_fifo.sv"
add_fileset_file "acl_latency_one_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_one_ram_fifo.sv"
add_fileset_file "acl_latency_zero_ram_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_latency_zero_ram_fifo.sv"
add_fileset_file "hld_fifo_zero_width.sv" SYSTEM_VERILOG PATH "ip/hld_fifo_zero_width.sv"
add_fileset_file "acl_high_speed_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_high_speed_fifo.sv"
add_fileset_file "acl_low_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_low_latency_fifo.sv"
add_fileset_file "acl_zero_latency_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_zero_latency_fifo.sv"
add_fileset_file "acl_fanout_pipeline.sv" SYSTEM_VERILOG PATH "ip/acl_fanout_pipeline.sv"
add_fileset_file "acl_std_synchronizer_nocut.v" SYSTEM_VERILOG PATH "ip/acl_std_synchronizer_nocut.v"
add_fileset_file "acl_tessellated_incr_decr_threshold.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_decr_threshold.sv"
add_fileset_file "acl_tessellated_incr_lookahead.sv" SYSTEM_VERILOG PATH "ip/acl_tessellated_incr_lookahead.sv"
add_fileset_file "acl_reset_handler.sv" SYSTEM_VERILOG PATH "ip/acl_reset_handler.sv"
add_fileset_file "acl_lfsr.sv" SYSTEM_VERILOG PATH "ip/acl_lfsr.sv"
add_fileset_file "acl_mlab_fifo.sv" SYSTEM_VERILOG PATH "ip/acl_mlab_fifo.sv"
add_fileset_file "acl_parameter_assert.svh" SYSTEM_VERILOG PATH "ip/acl_parameter_assert.svh"
add_fileset_file "acl_pop.v" SYSTEM_VERILOG PATH "ip/acl_pop.v"
add_fileset_file "acl_push.v" SYSTEM_VERILOG PATH "ip/acl_push.v"
add_fileset_file "acl_token_fifo_counter.v" SYSTEM_VERILOG PATH "ip/acl_token_fifo_counter.v"
add_fileset_file "acl_pipeline.v" SYSTEM_VERILOG PATH "ip/acl_pipeline.v"
add_fileset_file "acl_dspba_buffer.v" SYSTEM_VERILOG PATH "ip/acl_dspba_buffer.v"
add_fileset_file "acl_enable_sink.v" SYSTEM_VERILOG PATH "ip/acl_enable_sink.v"
add_fileset_file "hld_memory_depth_quantization_pkg.sv" SYSTEM_VERILOG PATH "ip/hld_memory_depth_quantization_pkg.sv"
add_fileset_file "hld_iord.sv" SYSTEM_VERILOG PATH "ip/hld_iord.sv"
add_fileset_file "hld_iord_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_latency.sv"
add_fileset_file "hld_iord_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iord_stall_valid.sv"
add_fileset_file "acl_shift_register_no_reset.sv" SYSTEM_VERILOG PATH "ip/acl_shift_register_no_reset.sv"
add_fileset_file "hld_iowr.sv" SYSTEM_VERILOG PATH "ip/hld_iowr.sv"
add_fileset_file "hld_iowr_stall_latency.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_latency.sv"
add_fileset_file "hld_iowr_stall_valid.sv" SYSTEM_VERILOG PATH "ip/hld_iowr_stall_valid.sv"
add_fileset_file "hld_loop_profiler.sv" SYSTEM_VERILOG PATH "ip/hld_loop_profiler.sv"
add_fileset_file "hld_sim_latency_tracker.sv" SYSTEM_VERILOG PATH "ip/hld_sim_latency_tracker.sv"
add_fileset_file "acl_reset_wire.v" SYSTEM_VERILOG PATH "ip/acl_reset_wire.v"
add_fileset_file "projection_function_wrapper.sv" SYSTEM_VERILOG PATH "ip/projection_function_wrapper.sv"
add_fileset_file "projection_function.sv" SYSTEM_VERILOG PATH "ip/projection_function.sv"
add_fileset_file "projection_bb_B0_runOnce.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B0_runOnce.sv"
add_fileset_file "projection_bb_B0_runOnce_stall_region.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B0_runOnce_stall_region.sv"
add_fileset_file "projection_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0.sv"
add_fileset_file "projection_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pop_token_i1_wt_limpop_0_reg.sv"
add_fileset_file "projection_i_llvm_fpga_push_token_i1_wt_limpush_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_push_token_i1_wt_limpush_0.sv"
add_fileset_file "projection_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_push_token_i1_wt_limpush_1_reg.sv"
add_fileset_file "projection_B0_runOnce_merge_reg.sv" SYSTEM_VERILOG PATH "ip/projection_B0_runOnce_merge_reg.sv"
add_fileset_file "projection_B0_runOnce_branch.sv" SYSTEM_VERILOG PATH "ip/projection_B0_runOnce_branch.sv"
add_fileset_file "projection_B0_runOnce_merge.sv" SYSTEM_VERILOG PATH "ip/projection_B0_runOnce_merge.sv"
add_fileset_file "projection_bb_B1_start.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B1_start.sv"
add_fileset_file "projection_bb_B1_start_stall_region.sv" SYSTEM_VERILOG PATH "ip/projection_bb_B1_start_stall_region.sv"
add_fileset_file "projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iord_bl_stream_in_tuple_unnamed_3_projection0.sv"
add_fileset_file "projection_i_iowr_bl_stream_out_tuple_or_4_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iowr_bl_stream_out_tuple_or_4_0.sv"
add_fileset_file "projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_s_c0_in_wt_entry_s_c0_enter1_projection0.sv"
add_fileset_file "projection_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_sfc_exit_s_c0_out0000_c0_exit_projection0.sv"
add_fileset_file "projection_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_logic_s_c0_in_wt_entry_s_c0_enter1_projection0.sv"
add_fileset_file "projection_i_llvm_fpga_pipeline_keep_going_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pipeline_keep_going_0.sv"
add_fileset_file "projection_i_llvm_fpga_push_i1_notexitcond_0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_push_i1_notexitcond_0.sv"
add_fileset_file "projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_s_c1_in_wt_entry_s_c1_enter_projection4.sv"
add_fileset_file "projection_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_sfc_exit_s_c1_out0000_c1_exit_projection0.sv"
add_fileset_file "projection_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_projection0.sv"
add_fileset_file "projection_i_iord_bl_call_unnamed_projection2_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iord_bl_call_unnamed_projection2_projection0.sv"
add_fileset_file "projection_i_iowr_bl_return_unnamed_projection4_projection0.sv" SYSTEM_VERILOG PATH "ip/projection_i_iowr_bl_return_unnamed_projection4_projection0.sv"
add_fileset_file "projection_B1_start_merge_reg.sv" SYSTEM_VERILOG PATH "ip/projection_B1_start_merge_reg.sv"
add_fileset_file "projection_B1_start_branch.sv" SYSTEM_VERILOG PATH "ip/projection_B1_start_branch.sv"
add_fileset_file "projection_B1_start_merge.sv" SYSTEM_VERILOG PATH "ip/projection_B1_start_merge.sv"
add_fileset_file "projection_i_llvm_fpga_pipeline_keep_going_1_sr.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pipeline_keep_going_1_sr.sv"
add_fileset_file "projection_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv" SYSTEM_VERILOG PATH "ip/projection_i_llvm_fpga_pipeline_keep_going_1_valid_fifo.sv"
add_fileset_file "projection_internal.v" SYSTEM_VERILOG PATH "projection_internal.v"

#### Primary clock for the component
add_interface clock clock end
set_interface_property clock ENABLED true
set_interface_assignment clock hls.cosim.name {$clock}
add_interface_port clock clock clk input 1

#### Primary reset for the component
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_assignment reset hls.cosim.name {$reset}
add_interface_port reset resetn reset_n input 1

#### Streaming interface for stream_in_tuple
add_interface stream_in_tuple avalon_streaming sink
set_interface_property stream_in_tuple associatedClock clock
set_interface_property stream_in_tuple associatedReset reset
set_interface_property stream_in_tuple maxChannel 0
set_interface_property stream_in_tuple readyLatency 0
set_interface_property stream_in_tuple dataBitsPerSymbol 352
set_interface_property stream_in_tuple symbolsPerBeat 1
set_interface_property stream_in_tuple firstSymbolInHighOrderBits 0
set_interface_assignment stream_in_tuple hls.cosim.name {stream_in_tuple}
add_interface_port stream_in_tuple stream_in_tuple_data data input 352
add_interface_port stream_in_tuple stream_in_tuple_ready ready output 1
add_interface_port stream_in_tuple stream_in_tuple_valid valid input 1

#### Streaming interface for stream_out_tuple
add_interface stream_out_tuple avalon_streaming source
set_interface_property stream_out_tuple associatedClock clock
set_interface_property stream_out_tuple associatedReset reset
set_interface_property stream_out_tuple maxChannel 0
set_interface_property stream_out_tuple readyLatency 0
set_interface_property stream_out_tuple dataBitsPerSymbol 352
set_interface_property stream_out_tuple symbolsPerBeat 1
set_interface_property stream_out_tuple firstSymbolInHighOrderBits 0
set_interface_assignment stream_out_tuple hls.cosim.name {stream_out_tuple}
add_interface_port stream_out_tuple stream_out_tuple_data data output 352
add_interface_port stream_out_tuple stream_out_tuple_ready ready input 1
add_interface_port stream_out_tuple stream_out_tuple_valid valid output 1

#### The component invocation protocol interface (call)
add_interface call conduit sink
set_interface_property call associatedClock clock
set_interface_property call associatedReset reset
set_interface_assignment call hls.cosim.name {$call}
add_interface_port call start valid input 1
add_interface_port call busy stall output 1

#### The component return protocol interface (return)
add_interface return conduit source
set_interface_property return associatedClock clock
set_interface_property return associatedReset reset
set_interface_assignment return hls.cosim.name {$return}
add_interface_port return done valid output 1
add_interface_port return stall stall input 1

#### Quartus settings (QIP strings)
set_qip_strings { "set_instance_assignment -entity \"%entityName%\" -library \"%libraryName%\" -name AUTO_SHIFT_REGISTER_RECOGNITION OFF -to *_NO_SHIFT_REG*"  }
