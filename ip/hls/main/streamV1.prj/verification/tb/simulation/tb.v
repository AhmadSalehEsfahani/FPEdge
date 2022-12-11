// tb.v

// Generated using ACDS version 21.1 850

`timescale 1 ps / 1 ps
module tb (
	);

	wire          stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_valid;                     // stream_source_dpi_bfm_projection_stream_in_tuple_inst:source_valid -> projection_inst:stream_in_tuple_valid
	wire  [351:0] stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_data;                      // stream_source_dpi_bfm_projection_stream_in_tuple_inst:source_data -> projection_inst:stream_in_tuple_data
	wire          stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_ready;                     // projection_inst:stream_in_tuple_ready -> stream_source_dpi_bfm_projection_stream_in_tuple_inst:source_ready
	wire          stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_valid;                      // stream_source_dpi_bfm_windowing_stream_in_tuple_inst:source_valid -> windowing_inst:stream_in_tuple_valid
	wire  [351:0] stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_data;                       // stream_source_dpi_bfm_windowing_stream_in_tuple_inst:source_data -> windowing_inst:stream_in_tuple_data
	wire          stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_ready;                      // windowing_inst:stream_in_tuple_ready -> stream_source_dpi_bfm_windowing_stream_in_tuple_inst:source_ready
	wire          projection_inst_stream_out_tuple_valid;                                                 // projection_inst:stream_out_tuple_valid -> stream_sink_dpi_bfm_projection_stream_out_tuple_inst:sink_valid
	wire  [351:0] projection_inst_stream_out_tuple_data;                                                  // projection_inst:stream_out_tuple_data -> stream_sink_dpi_bfm_projection_stream_out_tuple_inst:sink_data
	wire          projection_inst_stream_out_tuple_ready;                                                 // stream_sink_dpi_bfm_projection_stream_out_tuple_inst:sink_ready -> projection_inst:stream_out_tuple_ready
	wire          windowing_inst_stream_out_tuple_valid;                                                  // windowing_inst:stream_out_tuple_valid -> stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:sink_valid
	wire  [351:0] windowing_inst_stream_out_tuple_data;                                                   // windowing_inst:stream_out_tuple_data -> stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:sink_data
	wire          windowing_inst_stream_out_tuple_ready;                                                  // stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:sink_ready -> windowing_inst:stream_out_tuple_ready
	wire          clock_reset_inst_clock_clk;                                                             // clock_reset_inst:clock -> [component_dpi_controller_projection_inst:clock, component_dpi_controller_windowing_inst:clock, irq_mapper:clk, irq_mapper_001:clk, main_dpi_controller_inst:clock, projection_inst:clock, stream_sink_dpi_bfm_projection_stream_out_tuple_inst:clock, stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:clock, stream_source_dpi_bfm_projection_stream_in_tuple_inst:clock, stream_source_dpi_bfm_windowing_stream_in_tuple_inst:clock, windowing_inst:clock]
	wire          clock_reset_inst_clock2x_clk;                                                           // clock_reset_inst:clock2x -> [component_dpi_controller_projection_inst:clock2x, component_dpi_controller_windowing_inst:clock2x, main_dpi_controller_inst:clock2x, stream_sink_dpi_bfm_projection_stream_out_tuple_inst:clock2x, stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:clock2x, stream_source_dpi_bfm_projection_stream_in_tuple_inst:clock2x, stream_source_dpi_bfm_windowing_stream_in_tuple_inst:clock2x]
	wire          component_dpi_controller_projection_inst_component_call_valid;                          // component_dpi_controller_projection_inst:start -> projection_inst:start
	wire          projection_inst_call_stall;                                                             // projection_inst:busy -> component_dpi_controller_projection_inst:busy
	wire          component_dpi_controller_windowing_inst_component_call_valid;                           // component_dpi_controller_windowing_inst:start -> windowing_inst:start
	wire          windowing_inst_call_stall;                                                              // windowing_inst:busy -> component_dpi_controller_windowing_inst:busy
	wire          component_dpi_controller_projection_inst_component_done_conduit;                        // component_dpi_controller_projection_inst:component_done -> concatenate_component_done_inst:in_conduit_0
	wire          component_dpi_controller_windowing_inst_component_done_conduit;                         // component_dpi_controller_windowing_inst:component_done -> concatenate_component_done_inst:in_conduit_1
	wire    [1:0] main_dpi_controller_inst_component_enabled_conduit;                                     // main_dpi_controller_inst:component_enabled -> split_component_start_inst:in_conduit
	wire          component_dpi_controller_projection_inst_component_wait_for_stream_writes_conduit;      // component_dpi_controller_projection_inst:component_wait_for_stream_writes -> concatenate_component_wait_for_stream_writes_inst:in_conduit_0
	wire          component_dpi_controller_windowing_inst_component_wait_for_stream_writes_conduit;       // component_dpi_controller_windowing_inst:component_wait_for_stream_writes -> concatenate_component_wait_for_stream_writes_inst:in_conduit_1
	wire          component_dpi_controller_projection_inst_dpi_control_bind_conduit;                      // component_dpi_controller_projection_inst:bind_interfaces -> projection_component_dpi_controller_bind_conduit_fanout_inst:in_conduit
	wire          component_dpi_controller_windowing_inst_dpi_control_bind_conduit;                       // component_dpi_controller_windowing_inst:bind_interfaces -> windowing_component_dpi_controller_bind_conduit_fanout_inst:in_conduit
	wire          component_dpi_controller_projection_inst_dpi_control_enable_conduit;                    // component_dpi_controller_projection_inst:enable_interfaces -> projection_component_dpi_controller_enable_conduit_fanout_inst:in_conduit
	wire          component_dpi_controller_windowing_inst_dpi_control_enable_conduit;                     // component_dpi_controller_windowing_inst:enable_interfaces -> windowing_component_dpi_controller_enable_conduit_fanout_inst:in_conduit
	wire          stream_sink_dpi_bfm_projection_stream_out_tuple_inst_dpi_control_stream_active_conduit; // stream_sink_dpi_bfm_projection_stream_out_tuple_inst:stream_active -> projection_component_dpi_controller_stream_active_concatenate_inst:in_conduit_0
	wire          stream_sink_dpi_bfm_windowing_stream_out_tuple_inst_dpi_control_stream_active_conduit;  // stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:stream_active -> windowing_component_dpi_controller_stream_active_concatenate_inst:in_conduit_0
	wire    [1:0] concatenate_component_done_inst_out_conduit_conduit;                                    // concatenate_component_done_inst:out_conduit -> main_dpi_controller_inst:component_done
	wire    [1:0] concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit;                  // concatenate_component_wait_for_stream_writes_inst:out_conduit -> main_dpi_controller_inst:component_wait_for_stream_writes
	wire          projection_component_dpi_controller_stream_active_concatenate_inst_out_conduit_conduit; // projection_component_dpi_controller_stream_active_concatenate_inst:out_conduit -> component_dpi_controller_projection_inst:stream_writes_active
	wire          windowing_component_dpi_controller_stream_active_concatenate_inst_out_conduit_conduit;  // windowing_component_dpi_controller_stream_active_concatenate_inst:out_conduit -> component_dpi_controller_windowing_inst:stream_writes_active
	wire          split_component_start_inst_out_conduit_0_conduit;                                       // split_component_start_inst:out_conduit_0 -> component_dpi_controller_projection_inst:component_enabled
	wire          projection_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit;     // projection_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_projection_stream_in_tuple_inst:do_bind
	wire          windowing_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit;      // windowing_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_windowing_stream_in_tuple_inst:do_bind
	wire          projection_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit;   // projection_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_projection_stream_in_tuple_inst:enable
	wire          windowing_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit;    // windowing_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_0 -> stream_source_dpi_bfm_windowing_stream_in_tuple_inst:enable
	wire          split_component_start_inst_out_conduit_1_conduit;                                       // split_component_start_inst:out_conduit_1 -> component_dpi_controller_windowing_inst:component_enabled
	wire          projection_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit;     // projection_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_1 -> stream_sink_dpi_bfm_projection_stream_out_tuple_inst:do_bind
	wire          windowing_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit;      // windowing_component_dpi_controller_bind_conduit_fanout_inst:out_conduit_1 -> stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:do_bind
	wire          projection_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit;   // projection_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_1 -> stream_sink_dpi_bfm_projection_stream_out_tuple_inst:enable
	wire          windowing_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit;    // windowing_component_dpi_controller_enable_conduit_fanout_inst:out_conduit_1 -> stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:enable
	wire          main_dpi_controller_inst_reset_ctrl_conduit;                                            // main_dpi_controller_inst:trigger_reset -> clock_reset_inst:trigger_reset
	wire          projection_inst_return_valid;                                                           // projection_inst:done -> component_dpi_controller_projection_inst:done
	wire          component_dpi_controller_projection_inst_component_return_stall;                        // component_dpi_controller_projection_inst:stall -> projection_inst:stall
	wire          windowing_inst_return_valid;                                                            // windowing_inst:done -> component_dpi_controller_windowing_inst:done
	wire          component_dpi_controller_windowing_inst_component_return_stall;                         // component_dpi_controller_windowing_inst:stall -> windowing_inst:stall
	wire          clock_reset_inst_reset_reset;                                                           // clock_reset_inst:resetn -> [component_dpi_controller_projection_inst:resetn, component_dpi_controller_windowing_inst:resetn, irq_mapper:reset, irq_mapper_001:reset, main_dpi_controller_inst:resetn, projection_inst:resetn, stream_sink_dpi_bfm_projection_stream_out_tuple_inst:resetn, stream_sink_dpi_bfm_windowing_stream_out_tuple_inst:resetn, stream_source_dpi_bfm_projection_stream_in_tuple_inst:resetn, stream_source_dpi_bfm_windowing_stream_in_tuple_inst:resetn, windowing_inst:resetn]
	wire          component_dpi_controller_projection_inst_component_irq_irq;                             // irq_mapper:sender_irq -> component_dpi_controller_projection_inst:done_irq
	wire          component_dpi_controller_windowing_inst_component_irq_irq;                              // irq_mapper_001:sender_irq -> component_dpi_controller_windowing_inst:done_irq

	hls_sim_clock_reset #(
		.RESET_CYCLE_HOLD (4)
	) clock_reset_inst (
		.clock         (clock_reset_inst_clock_clk),                  //      clock.clk
		.resetn        (clock_reset_inst_reset_reset),                //      reset.reset_n
		.clock2x       (clock_reset_inst_clock2x_clk),                //    clock2x.clk
		.trigger_reset (main_dpi_controller_inst_reset_ctrl_conduit)  // reset_ctrl.conduit
	);

	hls_sim_component_dpi_controller #(
		.COMPONENT_NAME               ("projection"),
		.COMPONENT_MANGLED_NAME       ("\\3fprojection@@YAXAEAV\\3f$stream_in@UTuple@@$$V@ihc@@AEAV\\3f$stream_out@UTuple@@$$V@2@@Z"),
		.RETURN_DATAWIDTH             (64),
		.COMPONENT_NUM_AGENTS         (0),
		.COMPONENT_HAS_AGENT_RETURN   (0),
		.COMPONENT_NUM_OUTPUT_STREAMS (1)
	) component_dpi_controller_projection_inst (
		.clock                            (clock_reset_inst_clock_clk),                                                             //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                                           //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                                           //                          clock2x.clk
		.bind_interfaces                  (component_dpi_controller_projection_inst_dpi_control_bind_conduit),                      //                 dpi_control_bind.conduit
		.enable_interfaces                (component_dpi_controller_projection_inst_dpi_control_enable_conduit),                    //               dpi_control_enable.conduit
		.stream_writes_active             (projection_component_dpi_controller_stream_active_concatenate_inst_out_conduit_conduit), // dpi_control_stream_writes_active.conduit
		.component_enabled                (split_component_start_inst_out_conduit_0_conduit),                                       //                component_enabled.conduit
		.component_done                   (component_dpi_controller_projection_inst_component_done_conduit),                        //                   component_done.conduit
		.component_wait_for_stream_writes (component_dpi_controller_projection_inst_component_wait_for_stream_writes_conduit),      // component_wait_for_stream_writes.conduit
		.agent_busy                       (),                                                                                       //                       agent_busy.conduit
		.read_implicit_streams            (),                                                                                       //            read_implicit_streams.conduit
		.readback_from_agents             (),                                                                                       //             readback_from_agents.conduit
		.start                            (component_dpi_controller_projection_inst_component_call_valid),                          //                   component_call.valid
		.busy                             (projection_inst_call_stall),                                                             //                                 .stall
		.done                             (projection_inst_return_valid),                                                           //                 component_return.valid
		.stall                            (component_dpi_controller_projection_inst_component_return_stall),                        //                                 .stall
		.done_irq                         (component_dpi_controller_projection_inst_component_irq_irq),                             //                    component_irq.irq
		.returndata                       ()                                                                                        //                       returndata.data
	);

	hls_sim_component_dpi_controller #(
		.COMPONENT_NAME               ("windowing"),
		.COMPONENT_MANGLED_NAME       ("\\3fwindowing@@YAXAEAV\\3f$stream_in@UTuple@@$$V@ihc@@AEAV\\3f$stream_out@UTuple@@$$V@2@@Z"),
		.RETURN_DATAWIDTH             (64),
		.COMPONENT_NUM_AGENTS         (0),
		.COMPONENT_HAS_AGENT_RETURN   (0),
		.COMPONENT_NUM_OUTPUT_STREAMS (1)
	) component_dpi_controller_windowing_inst (
		.clock                            (clock_reset_inst_clock_clk),                                                            //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                                          //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                                          //                          clock2x.clk
		.bind_interfaces                  (component_dpi_controller_windowing_inst_dpi_control_bind_conduit),                      //                 dpi_control_bind.conduit
		.enable_interfaces                (component_dpi_controller_windowing_inst_dpi_control_enable_conduit),                    //               dpi_control_enable.conduit
		.stream_writes_active             (windowing_component_dpi_controller_stream_active_concatenate_inst_out_conduit_conduit), // dpi_control_stream_writes_active.conduit
		.component_enabled                (split_component_start_inst_out_conduit_1_conduit),                                      //                component_enabled.conduit
		.component_done                   (component_dpi_controller_windowing_inst_component_done_conduit),                        //                   component_done.conduit
		.component_wait_for_stream_writes (component_dpi_controller_windowing_inst_component_wait_for_stream_writes_conduit),      // component_wait_for_stream_writes.conduit
		.agent_busy                       (),                                                                                      //                       agent_busy.conduit
		.read_implicit_streams            (),                                                                                      //            read_implicit_streams.conduit
		.readback_from_agents             (),                                                                                      //             readback_from_agents.conduit
		.start                            (component_dpi_controller_windowing_inst_component_call_valid),                          //                   component_call.valid
		.busy                             (windowing_inst_call_stall),                                                             //                                 .stall
		.done                             (windowing_inst_return_valid),                                                           //                 component_return.valid
		.stall                            (component_dpi_controller_windowing_inst_component_return_stall),                        //                                 .stall
		.done_irq                         (component_dpi_controller_windowing_inst_component_irq_irq),                             //                    component_irq.irq
		.returndata                       ()                                                                                       //                       returndata.data
	);

	tb_concatenate_component_done_inst concatenate_component_done_inst (
		.out_conduit  (concatenate_component_done_inst_out_conduit_conduit),             //  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_projection_inst_component_done_conduit), // in_conduit_0.conduit
		.in_conduit_1 (component_dpi_controller_windowing_inst_component_done_conduit)   // in_conduit_1.conduit
	);

	tb_concatenate_component_done_inst concatenate_component_wait_for_stream_writes_inst (
		.out_conduit  (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit),             //  out_conduit.conduit
		.in_conduit_0 (component_dpi_controller_projection_inst_component_wait_for_stream_writes_conduit), // in_conduit_0.conduit
		.in_conduit_1 (component_dpi_controller_windowing_inst_component_wait_for_stream_writes_conduit)   // in_conduit_1.conduit
	);

	hls_sim_main_dpi_controller #(
		.NUM_COMPONENTS      (2),
		.COMPONENT_NAMES_STR ("projection,windowing")
	) main_dpi_controller_inst (
		.clock                            (clock_reset_inst_clock_clk),                                            //                            clock.clk
		.resetn                           (clock_reset_inst_reset_reset),                                          //                            reset.reset_n
		.clock2x                          (clock_reset_inst_clock2x_clk),                                          //                          clock2x.clk
		.component_enabled                (main_dpi_controller_inst_component_enabled_conduit),                    //                component_enabled.conduit
		.component_done                   (concatenate_component_done_inst_out_conduit_conduit),                   //                   component_done.conduit
		.component_wait_for_stream_writes (concatenate_component_wait_for_stream_writes_inst_out_conduit_conduit), // component_wait_for_stream_writes.conduit
		.trigger_reset                    (main_dpi_controller_inst_reset_ctrl_conduit)                            //                       reset_ctrl.conduit
	);

	tb_projection_component_dpi_controller_bind_conduit_fanout_inst projection_component_dpi_controller_bind_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_projection_inst_dpi_control_bind_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (projection_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (projection_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit)  // out_conduit_1.conduit
	);

	tb_projection_component_dpi_controller_bind_conduit_fanout_inst projection_component_dpi_controller_enable_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_projection_inst_dpi_control_enable_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (projection_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (projection_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit)  // out_conduit_1.conduit
	);

	tb_projection_component_dpi_controller_stream_active_concatenate_inst projection_component_dpi_controller_stream_active_concatenate_inst (
		.out_conduit  (projection_component_dpi_controller_stream_active_concatenate_inst_out_conduit_conduit), //  out_conduit.conduit
		.in_conduit_0 (stream_sink_dpi_bfm_projection_stream_out_tuple_inst_dpi_control_stream_active_conduit)  // in_conduit_0.conduit
	);

	tb_projection_inst projection_inst (
		.start                  (component_dpi_controller_projection_inst_component_call_valid),      //             call.valid
		.busy                   (projection_inst_call_stall),                                         //                 .stall
		.clock                  (clock_reset_inst_clock_clk),                                         //            clock.clk
		.resetn                 (clock_reset_inst_reset_reset),                                       //            reset.reset_n
		.done                   (projection_inst_return_valid),                                       //           return.valid
		.stall                  (component_dpi_controller_projection_inst_component_return_stall),    //                 .stall
		.stream_in_tuple_data   (stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_data),  //  stream_in_tuple.data
		.stream_in_tuple_ready  (stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_ready), //                 .ready
		.stream_in_tuple_valid  (stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_valid), //                 .valid
		.stream_out_tuple_data  (projection_inst_stream_out_tuple_data),                              // stream_out_tuple.data
		.stream_out_tuple_ready (projection_inst_stream_out_tuple_ready),                             //                 .ready
		.stream_out_tuple_valid (projection_inst_stream_out_tuple_valid)                              //                 .valid
	);

	tb_split_component_start_inst split_component_start_inst (
		.in_conduit    (main_dpi_controller_inst_component_enabled_conduit), //    in_conduit.conduit
		.out_conduit_0 (split_component_start_inst_out_conduit_0_conduit),   // out_conduit_0.conduit
		.out_conduit_1 (split_component_start_inst_out_conduit_1_conduit)    // out_conduit_1.conduit
	);

	hls_sim_stream_sink_dpi_bfm #(
		.COMPONENT_NAME                  ("projection"),
		.INTERFACE_NAME                  ("stream_out_tuple"),
		.STREAM_DATAWIDTH                (352),
		.READY_LATENCY                   (0),
		.STREAM_BITSPERSYMBOL            (352),
		.EMPTY_WIDTH                     (0),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (0)
	) stream_sink_dpi_bfm_projection_stream_out_tuple_inst (
		.clock              (clock_reset_inst_clock_clk),                                                             //                     clock.clk
		.resetn             (clock_reset_inst_reset_reset),                                                           //                     reset.reset_n
		.clock2x            (clock_reset_inst_clock2x_clk),                                                           //                   clock2x.clk
		.do_bind            (projection_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit),     //          dpi_control_bind.conduit
		.enable             (projection_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit),   //        dpi_control_enable.conduit
		.stream_active      (stream_sink_dpi_bfm_projection_stream_out_tuple_inst_dpi_control_stream_active_conduit), // dpi_control_stream_active.conduit
		.sink_data          (projection_inst_stream_out_tuple_data),                                                  //                      sink.data
		.sink_ready         (projection_inst_stream_out_tuple_ready),                                                 //                          .ready
		.sink_valid         (projection_inst_stream_out_tuple_valid),                                                 //                          .valid
		.sink_startofpacket (1'b0),                                                                                   //               (terminated)
		.sink_endofpacket   (1'b0),                                                                                   //               (terminated)
		.sink_empty         (1'b0)                                                                                    //               (terminated)
	);

	hls_sim_stream_sink_dpi_bfm #(
		.COMPONENT_NAME                  ("windowing"),
		.INTERFACE_NAME                  ("stream_out_tuple"),
		.STREAM_DATAWIDTH                (352),
		.READY_LATENCY                   (0),
		.STREAM_BITSPERSYMBOL            (352),
		.EMPTY_WIDTH                     (0),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (0)
	) stream_sink_dpi_bfm_windowing_stream_out_tuple_inst (
		.clock              (clock_reset_inst_clock_clk),                                                            //                     clock.clk
		.resetn             (clock_reset_inst_reset_reset),                                                          //                     reset.reset_n
		.clock2x            (clock_reset_inst_clock2x_clk),                                                          //                   clock2x.clk
		.do_bind            (windowing_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit),     //          dpi_control_bind.conduit
		.enable             (windowing_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit),   //        dpi_control_enable.conduit
		.stream_active      (stream_sink_dpi_bfm_windowing_stream_out_tuple_inst_dpi_control_stream_active_conduit), // dpi_control_stream_active.conduit
		.sink_data          (windowing_inst_stream_out_tuple_data),                                                  //                      sink.data
		.sink_ready         (windowing_inst_stream_out_tuple_ready),                                                 //                          .ready
		.sink_valid         (windowing_inst_stream_out_tuple_valid),                                                 //                          .valid
		.sink_startofpacket (1'b0),                                                                                  //               (terminated)
		.sink_endofpacket   (1'b0),                                                                                  //               (terminated)
		.sink_empty         (1'b0)                                                                                   //               (terminated)
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME                  ("projection"),
		.INTERFACE_NAME                  ("stream_in_tuple"),
		.STREAM_DATAWIDTH                (352),
		.STREAM_BITSPERSYMBOL            (352),
		.EMPTY_WIDTH                     (0),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (0)
	) stream_source_dpi_bfm_projection_stream_in_tuple_inst (
		.clock        (clock_reset_inst_clock_clk),                                                           //              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                         //              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                         //            clock2x.clk
		.do_bind      (projection_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit),   //   dpi_control_bind.conduit
		.enable       (projection_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_data),                    //             source.data
		.source_ready (stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_ready),                   //                   .ready
		.source_valid (stream_source_dpi_bfm_projection_stream_in_tuple_inst_source_valid)                    //                   .valid
	);

	hls_sim_stream_source_dpi_bfm #(
		.COMPONENT_NAME                  ("windowing"),
		.INTERFACE_NAME                  ("stream_in_tuple"),
		.STREAM_DATAWIDTH                (352),
		.STREAM_BITSPERSYMBOL            (352),
		.EMPTY_WIDTH                     (0),
		.FIRST_SYMBOL_IN_HIGH_ORDER_BITS (0)
	) stream_source_dpi_bfm_windowing_stream_in_tuple_inst (
		.clock        (clock_reset_inst_clock_clk),                                                          //              clock.clk
		.resetn       (clock_reset_inst_reset_reset),                                                        //              reset.reset_n
		.clock2x      (clock_reset_inst_clock2x_clk),                                                        //            clock2x.clk
		.do_bind      (windowing_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit),   //   dpi_control_bind.conduit
		.enable       (windowing_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // dpi_control_enable.conduit
		.source_data  (stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_data),                    //             source.data
		.source_ready (stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_ready),                   //                   .ready
		.source_valid (stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_valid)                    //                   .valid
	);

	tb_projection_component_dpi_controller_bind_conduit_fanout_inst windowing_component_dpi_controller_bind_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_windowing_inst_dpi_control_bind_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (windowing_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (windowing_component_dpi_controller_bind_conduit_fanout_inst_out_conduit_1_conduit)  // out_conduit_1.conduit
	);

	tb_projection_component_dpi_controller_bind_conduit_fanout_inst windowing_component_dpi_controller_enable_conduit_fanout_inst (
		.in_conduit    (component_dpi_controller_windowing_inst_dpi_control_enable_conduit),                  //    in_conduit.conduit
		.out_conduit_0 (windowing_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_0_conduit), // out_conduit_0.conduit
		.out_conduit_1 (windowing_component_dpi_controller_enable_conduit_fanout_inst_out_conduit_1_conduit)  // out_conduit_1.conduit
	);

	tb_projection_component_dpi_controller_stream_active_concatenate_inst windowing_component_dpi_controller_stream_active_concatenate_inst (
		.out_conduit  (windowing_component_dpi_controller_stream_active_concatenate_inst_out_conduit_conduit), //  out_conduit.conduit
		.in_conduit_0 (stream_sink_dpi_bfm_windowing_stream_out_tuple_inst_dpi_control_stream_active_conduit)  // in_conduit_0.conduit
	);

	tb_windowing_inst windowing_inst (
		.start                  (component_dpi_controller_windowing_inst_component_call_valid),      //             call.valid
		.busy                   (windowing_inst_call_stall),                                         //                 .stall
		.clock                  (clock_reset_inst_clock_clk),                                        //            clock.clk
		.resetn                 (clock_reset_inst_reset_reset),                                      //            reset.reset_n
		.done                   (windowing_inst_return_valid),                                       //           return.valid
		.stall                  (component_dpi_controller_windowing_inst_component_return_stall),    //                 .stall
		.stream_in_tuple_data   (stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_data),  //  stream_in_tuple.data
		.stream_in_tuple_ready  (stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_ready), //                 .ready
		.stream_in_tuple_valid  (stream_source_dpi_bfm_windowing_stream_in_tuple_inst_source_valid), //                 .valid
		.stream_out_tuple_data  (windowing_inst_stream_out_tuple_data),                              // stream_out_tuple.data
		.stream_out_tuple_ready (windowing_inst_stream_out_tuple_ready),                             //                 .ready
		.stream_out_tuple_valid (windowing_inst_stream_out_tuple_valid)                              //                 .valid
	);

	tb_irq_mapper irq_mapper (
		.clk        (clock_reset_inst_clock_clk),                                 //       clk.clk
		.reset      (~clock_reset_inst_reset_reset),                              // clk_reset.reset
		.sender_irq (component_dpi_controller_projection_inst_component_irq_irq)  //    sender.irq
	);

	tb_irq_mapper irq_mapper_001 (
		.clk        (clock_reset_inst_clock_clk),                                //       clk.clk
		.reset      (~clock_reset_inst_reset_reset),                             // clk_reset.reset
		.sender_irq (component_dpi_controller_windowing_inst_component_irq_irq)  //    sender.irq
	);

endmodule