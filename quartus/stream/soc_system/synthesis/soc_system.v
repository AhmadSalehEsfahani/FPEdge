// soc_system.v

// Generated using ACDS version 21.1 850

`timescale 1 ps / 1 ps
module soc_system (
		input  wire        clk_clk,            //    clk.clk
		output wire [14:0] memory_mem_a,       // memory.mem_a
		output wire [2:0]  memory_mem_ba,      //       .mem_ba
		output wire        memory_mem_ck,      //       .mem_ck
		output wire        memory_mem_ck_n,    //       .mem_ck_n
		output wire        memory_mem_cke,     //       .mem_cke
		output wire        memory_mem_cs_n,    //       .mem_cs_n
		output wire        memory_mem_ras_n,   //       .mem_ras_n
		output wire        memory_mem_cas_n,   //       .mem_cas_n
		output wire        memory_mem_we_n,    //       .mem_we_n
		output wire        memory_mem_reset_n, //       .mem_reset_n
		inout  wire [31:0] memory_mem_dq,      //       .mem_dq
		inout  wire [3:0]  memory_mem_dqs,     //       .mem_dqs
		inout  wire [3:0]  memory_mem_dqs_n,   //       .mem_dqs_n
		output wire        memory_mem_odt,     //       .mem_odt
		output wire [3:0]  memory_mem_dm,      //       .mem_dm
		input  wire        memory_oct_rzqin    //       .oct_rzqin
	);

	wire         hps_0_h2f_reset_reset;                           // hps_0:h2f_rst_n -> [rst_controller:reset_in0, rst_controller:reset_in1, rst_controller_001:reset_in0]
	wire   [1:0] hps_0_h2f_axi_master_awburst;                    // hps_0:h2f_AWBURST -> mm_interconnect_0:hps_0_h2f_axi_master_awburst
	wire   [3:0] hps_0_h2f_axi_master_arlen;                      // hps_0:h2f_ARLEN -> mm_interconnect_0:hps_0_h2f_axi_master_arlen
	wire   [7:0] hps_0_h2f_axi_master_wstrb;                      // hps_0:h2f_WSTRB -> mm_interconnect_0:hps_0_h2f_axi_master_wstrb
	wire         hps_0_h2f_axi_master_wready;                     // mm_interconnect_0:hps_0_h2f_axi_master_wready -> hps_0:h2f_WREADY
	wire  [11:0] hps_0_h2f_axi_master_rid;                        // mm_interconnect_0:hps_0_h2f_axi_master_rid -> hps_0:h2f_RID
	wire         hps_0_h2f_axi_master_rready;                     // hps_0:h2f_RREADY -> mm_interconnect_0:hps_0_h2f_axi_master_rready
	wire   [3:0] hps_0_h2f_axi_master_awlen;                      // hps_0:h2f_AWLEN -> mm_interconnect_0:hps_0_h2f_axi_master_awlen
	wire  [11:0] hps_0_h2f_axi_master_wid;                        // hps_0:h2f_WID -> mm_interconnect_0:hps_0_h2f_axi_master_wid
	wire   [3:0] hps_0_h2f_axi_master_arcache;                    // hps_0:h2f_ARCACHE -> mm_interconnect_0:hps_0_h2f_axi_master_arcache
	wire         hps_0_h2f_axi_master_wvalid;                     // hps_0:h2f_WVALID -> mm_interconnect_0:hps_0_h2f_axi_master_wvalid
	wire  [29:0] hps_0_h2f_axi_master_araddr;                     // hps_0:h2f_ARADDR -> mm_interconnect_0:hps_0_h2f_axi_master_araddr
	wire   [2:0] hps_0_h2f_axi_master_arprot;                     // hps_0:h2f_ARPROT -> mm_interconnect_0:hps_0_h2f_axi_master_arprot
	wire   [2:0] hps_0_h2f_axi_master_awprot;                     // hps_0:h2f_AWPROT -> mm_interconnect_0:hps_0_h2f_axi_master_awprot
	wire  [63:0] hps_0_h2f_axi_master_wdata;                      // hps_0:h2f_WDATA -> mm_interconnect_0:hps_0_h2f_axi_master_wdata
	wire         hps_0_h2f_axi_master_arvalid;                    // hps_0:h2f_ARVALID -> mm_interconnect_0:hps_0_h2f_axi_master_arvalid
	wire   [3:0] hps_0_h2f_axi_master_awcache;                    // hps_0:h2f_AWCACHE -> mm_interconnect_0:hps_0_h2f_axi_master_awcache
	wire  [11:0] hps_0_h2f_axi_master_arid;                       // hps_0:h2f_ARID -> mm_interconnect_0:hps_0_h2f_axi_master_arid
	wire   [1:0] hps_0_h2f_axi_master_arlock;                     // hps_0:h2f_ARLOCK -> mm_interconnect_0:hps_0_h2f_axi_master_arlock
	wire   [1:0] hps_0_h2f_axi_master_awlock;                     // hps_0:h2f_AWLOCK -> mm_interconnect_0:hps_0_h2f_axi_master_awlock
	wire  [29:0] hps_0_h2f_axi_master_awaddr;                     // hps_0:h2f_AWADDR -> mm_interconnect_0:hps_0_h2f_axi_master_awaddr
	wire   [1:0] hps_0_h2f_axi_master_bresp;                      // mm_interconnect_0:hps_0_h2f_axi_master_bresp -> hps_0:h2f_BRESP
	wire         hps_0_h2f_axi_master_arready;                    // mm_interconnect_0:hps_0_h2f_axi_master_arready -> hps_0:h2f_ARREADY
	wire  [63:0] hps_0_h2f_axi_master_rdata;                      // mm_interconnect_0:hps_0_h2f_axi_master_rdata -> hps_0:h2f_RDATA
	wire         hps_0_h2f_axi_master_awready;                    // mm_interconnect_0:hps_0_h2f_axi_master_awready -> hps_0:h2f_AWREADY
	wire   [1:0] hps_0_h2f_axi_master_arburst;                    // hps_0:h2f_ARBURST -> mm_interconnect_0:hps_0_h2f_axi_master_arburst
	wire   [2:0] hps_0_h2f_axi_master_arsize;                     // hps_0:h2f_ARSIZE -> mm_interconnect_0:hps_0_h2f_axi_master_arsize
	wire         hps_0_h2f_axi_master_bready;                     // hps_0:h2f_BREADY -> mm_interconnect_0:hps_0_h2f_axi_master_bready
	wire         hps_0_h2f_axi_master_rlast;                      // mm_interconnect_0:hps_0_h2f_axi_master_rlast -> hps_0:h2f_RLAST
	wire         hps_0_h2f_axi_master_wlast;                      // hps_0:h2f_WLAST -> mm_interconnect_0:hps_0_h2f_axi_master_wlast
	wire   [1:0] hps_0_h2f_axi_master_rresp;                      // mm_interconnect_0:hps_0_h2f_axi_master_rresp -> hps_0:h2f_RRESP
	wire  [11:0] hps_0_h2f_axi_master_awid;                       // hps_0:h2f_AWID -> mm_interconnect_0:hps_0_h2f_axi_master_awid
	wire  [11:0] hps_0_h2f_axi_master_bid;                        // mm_interconnect_0:hps_0_h2f_axi_master_bid -> hps_0:h2f_BID
	wire         hps_0_h2f_axi_master_bvalid;                     // mm_interconnect_0:hps_0_h2f_axi_master_bvalid -> hps_0:h2f_BVALID
	wire   [2:0] hps_0_h2f_axi_master_awsize;                     // hps_0:h2f_AWSIZE -> mm_interconnect_0:hps_0_h2f_axi_master_awsize
	wire         hps_0_h2f_axi_master_awvalid;                    // hps_0:h2f_AWVALID -> mm_interconnect_0:hps_0_h2f_axi_master_awvalid
	wire         hps_0_h2f_axi_master_rvalid;                     // mm_interconnect_0:hps_0_h2f_axi_master_rvalid -> hps_0:h2f_RVALID
	wire  [63:0] mm_interconnect_0_streamer_0_avs_cra_readdata;   // streamer_0:avs_cra_readdata -> mm_interconnect_0:streamer_0_avs_cra_readdata
	wire   [3:0] mm_interconnect_0_streamer_0_avs_cra_address;    // mm_interconnect_0:streamer_0_avs_cra_address -> streamer_0:avs_cra_address
	wire         mm_interconnect_0_streamer_0_avs_cra_read;       // mm_interconnect_0:streamer_0_avs_cra_read -> streamer_0:avs_cra_read
	wire   [7:0] mm_interconnect_0_streamer_0_avs_cra_byteenable; // mm_interconnect_0:streamer_0_avs_cra_byteenable -> streamer_0:avs_cra_byteenable
	wire         mm_interconnect_0_streamer_0_avs_cra_write;      // mm_interconnect_0:streamer_0_avs_cra_write -> streamer_0:avs_cra_write
	wire  [63:0] mm_interconnect_0_streamer_0_avs_cra_writedata;  // mm_interconnect_0:streamer_0_avs_cra_writedata -> streamer_0:avs_cra_writedata
	wire         rst_controller_reset_out_reset;                  // rst_controller:reset_out -> [mm_interconnect_0:streamer_0_reset_reset_bridge_in_reset_reset, streamer_0:resetn]
	wire         rst_controller_001_reset_out_reset;              // rst_controller_001:reset_out -> mm_interconnect_0:hps_0_h2f_axi_master_agent_clk_reset_reset_bridge_in_reset_reset

	soc_system_hps_0 #(
		.F2S_Width (0),
		.S2F_Width (2)
	) hps_0 (
		.mem_a       (memory_mem_a),                 //         memory.mem_a
		.mem_ba      (memory_mem_ba),                //               .mem_ba
		.mem_ck      (memory_mem_ck),                //               .mem_ck
		.mem_ck_n    (memory_mem_ck_n),              //               .mem_ck_n
		.mem_cke     (memory_mem_cke),               //               .mem_cke
		.mem_cs_n    (memory_mem_cs_n),              //               .mem_cs_n
		.mem_ras_n   (memory_mem_ras_n),             //               .mem_ras_n
		.mem_cas_n   (memory_mem_cas_n),             //               .mem_cas_n
		.mem_we_n    (memory_mem_we_n),              //               .mem_we_n
		.mem_reset_n (memory_mem_reset_n),           //               .mem_reset_n
		.mem_dq      (memory_mem_dq),                //               .mem_dq
		.mem_dqs     (memory_mem_dqs),               //               .mem_dqs
		.mem_dqs_n   (memory_mem_dqs_n),             //               .mem_dqs_n
		.mem_odt     (memory_mem_odt),               //               .mem_odt
		.mem_dm      (memory_mem_dm),                //               .mem_dm
		.oct_rzqin   (memory_oct_rzqin),             //               .oct_rzqin
		.h2f_rst_n   (hps_0_h2f_reset_reset),        //      h2f_reset.reset_n
		.h2f_axi_clk (clk_clk),                      //  h2f_axi_clock.clk
		.h2f_AWID    (hps_0_h2f_axi_master_awid),    // h2f_axi_master.awid
		.h2f_AWADDR  (hps_0_h2f_axi_master_awaddr),  //               .awaddr
		.h2f_AWLEN   (hps_0_h2f_axi_master_awlen),   //               .awlen
		.h2f_AWSIZE  (hps_0_h2f_axi_master_awsize),  //               .awsize
		.h2f_AWBURST (hps_0_h2f_axi_master_awburst), //               .awburst
		.h2f_AWLOCK  (hps_0_h2f_axi_master_awlock),  //               .awlock
		.h2f_AWCACHE (hps_0_h2f_axi_master_awcache), //               .awcache
		.h2f_AWPROT  (hps_0_h2f_axi_master_awprot),  //               .awprot
		.h2f_AWVALID (hps_0_h2f_axi_master_awvalid), //               .awvalid
		.h2f_AWREADY (hps_0_h2f_axi_master_awready), //               .awready
		.h2f_WID     (hps_0_h2f_axi_master_wid),     //               .wid
		.h2f_WDATA   (hps_0_h2f_axi_master_wdata),   //               .wdata
		.h2f_WSTRB   (hps_0_h2f_axi_master_wstrb),   //               .wstrb
		.h2f_WLAST   (hps_0_h2f_axi_master_wlast),   //               .wlast
		.h2f_WVALID  (hps_0_h2f_axi_master_wvalid),  //               .wvalid
		.h2f_WREADY  (hps_0_h2f_axi_master_wready),  //               .wready
		.h2f_BID     (hps_0_h2f_axi_master_bid),     //               .bid
		.h2f_BRESP   (hps_0_h2f_axi_master_bresp),   //               .bresp
		.h2f_BVALID  (hps_0_h2f_axi_master_bvalid),  //               .bvalid
		.h2f_BREADY  (hps_0_h2f_axi_master_bready),  //               .bready
		.h2f_ARID    (hps_0_h2f_axi_master_arid),    //               .arid
		.h2f_ARADDR  (hps_0_h2f_axi_master_araddr),  //               .araddr
		.h2f_ARLEN   (hps_0_h2f_axi_master_arlen),   //               .arlen
		.h2f_ARSIZE  (hps_0_h2f_axi_master_arsize),  //               .arsize
		.h2f_ARBURST (hps_0_h2f_axi_master_arburst), //               .arburst
		.h2f_ARLOCK  (hps_0_h2f_axi_master_arlock),  //               .arlock
		.h2f_ARCACHE (hps_0_h2f_axi_master_arcache), //               .arcache
		.h2f_ARPROT  (hps_0_h2f_axi_master_arprot),  //               .arprot
		.h2f_ARVALID (hps_0_h2f_axi_master_arvalid), //               .arvalid
		.h2f_ARREADY (hps_0_h2f_axi_master_arready), //               .arready
		.h2f_RID     (hps_0_h2f_axi_master_rid),     //               .rid
		.h2f_RDATA   (hps_0_h2f_axi_master_rdata),   //               .rdata
		.h2f_RRESP   (hps_0_h2f_axi_master_rresp),   //               .rresp
		.h2f_RLAST   (hps_0_h2f_axi_master_rlast),   //               .rlast
		.h2f_RVALID  (hps_0_h2f_axi_master_rvalid),  //               .rvalid
		.h2f_RREADY  (hps_0_h2f_axi_master_rready)   //               .rready
	);

	soc_system_streamer_0 streamer_0 (
		.avs_cra_read       (mm_interconnect_0_streamer_0_avs_cra_read),       // avs_cra.read
		.avs_cra_readdata   (mm_interconnect_0_streamer_0_avs_cra_readdata),   //        .readdata
		.avs_cra_write      (mm_interconnect_0_streamer_0_avs_cra_write),      //        .write
		.avs_cra_writedata  (mm_interconnect_0_streamer_0_avs_cra_writedata),  //        .writedata
		.avs_cra_address    (mm_interconnect_0_streamer_0_avs_cra_address),    //        .address
		.avs_cra_byteenable (mm_interconnect_0_streamer_0_avs_cra_byteenable), //        .byteenable
		.clock              (clk_clk),                                         //   clock.clk
		.done_irq           (),                                                //     irq.irq
		.resetn             (~rst_controller_reset_out_reset)                  //   reset.reset_n
	);

	soc_system_mm_interconnect_0 mm_interconnect_0 (
		.hps_0_h2f_axi_master_awid                                        (hps_0_h2f_axi_master_awid),                       //                                       hps_0_h2f_axi_master.awid
		.hps_0_h2f_axi_master_awaddr                                      (hps_0_h2f_axi_master_awaddr),                     //                                                           .awaddr
		.hps_0_h2f_axi_master_awlen                                       (hps_0_h2f_axi_master_awlen),                      //                                                           .awlen
		.hps_0_h2f_axi_master_awsize                                      (hps_0_h2f_axi_master_awsize),                     //                                                           .awsize
		.hps_0_h2f_axi_master_awburst                                     (hps_0_h2f_axi_master_awburst),                    //                                                           .awburst
		.hps_0_h2f_axi_master_awlock                                      (hps_0_h2f_axi_master_awlock),                     //                                                           .awlock
		.hps_0_h2f_axi_master_awcache                                     (hps_0_h2f_axi_master_awcache),                    //                                                           .awcache
		.hps_0_h2f_axi_master_awprot                                      (hps_0_h2f_axi_master_awprot),                     //                                                           .awprot
		.hps_0_h2f_axi_master_awvalid                                     (hps_0_h2f_axi_master_awvalid),                    //                                                           .awvalid
		.hps_0_h2f_axi_master_awready                                     (hps_0_h2f_axi_master_awready),                    //                                                           .awready
		.hps_0_h2f_axi_master_wid                                         (hps_0_h2f_axi_master_wid),                        //                                                           .wid
		.hps_0_h2f_axi_master_wdata                                       (hps_0_h2f_axi_master_wdata),                      //                                                           .wdata
		.hps_0_h2f_axi_master_wstrb                                       (hps_0_h2f_axi_master_wstrb),                      //                                                           .wstrb
		.hps_0_h2f_axi_master_wlast                                       (hps_0_h2f_axi_master_wlast),                      //                                                           .wlast
		.hps_0_h2f_axi_master_wvalid                                      (hps_0_h2f_axi_master_wvalid),                     //                                                           .wvalid
		.hps_0_h2f_axi_master_wready                                      (hps_0_h2f_axi_master_wready),                     //                                                           .wready
		.hps_0_h2f_axi_master_bid                                         (hps_0_h2f_axi_master_bid),                        //                                                           .bid
		.hps_0_h2f_axi_master_bresp                                       (hps_0_h2f_axi_master_bresp),                      //                                                           .bresp
		.hps_0_h2f_axi_master_bvalid                                      (hps_0_h2f_axi_master_bvalid),                     //                                                           .bvalid
		.hps_0_h2f_axi_master_bready                                      (hps_0_h2f_axi_master_bready),                     //                                                           .bready
		.hps_0_h2f_axi_master_arid                                        (hps_0_h2f_axi_master_arid),                       //                                                           .arid
		.hps_0_h2f_axi_master_araddr                                      (hps_0_h2f_axi_master_araddr),                     //                                                           .araddr
		.hps_0_h2f_axi_master_arlen                                       (hps_0_h2f_axi_master_arlen),                      //                                                           .arlen
		.hps_0_h2f_axi_master_arsize                                      (hps_0_h2f_axi_master_arsize),                     //                                                           .arsize
		.hps_0_h2f_axi_master_arburst                                     (hps_0_h2f_axi_master_arburst),                    //                                                           .arburst
		.hps_0_h2f_axi_master_arlock                                      (hps_0_h2f_axi_master_arlock),                     //                                                           .arlock
		.hps_0_h2f_axi_master_arcache                                     (hps_0_h2f_axi_master_arcache),                    //                                                           .arcache
		.hps_0_h2f_axi_master_arprot                                      (hps_0_h2f_axi_master_arprot),                     //                                                           .arprot
		.hps_0_h2f_axi_master_arvalid                                     (hps_0_h2f_axi_master_arvalid),                    //                                                           .arvalid
		.hps_0_h2f_axi_master_arready                                     (hps_0_h2f_axi_master_arready),                    //                                                           .arready
		.hps_0_h2f_axi_master_rid                                         (hps_0_h2f_axi_master_rid),                        //                                                           .rid
		.hps_0_h2f_axi_master_rdata                                       (hps_0_h2f_axi_master_rdata),                      //                                                           .rdata
		.hps_0_h2f_axi_master_rresp                                       (hps_0_h2f_axi_master_rresp),                      //                                                           .rresp
		.hps_0_h2f_axi_master_rlast                                       (hps_0_h2f_axi_master_rlast),                      //                                                           .rlast
		.hps_0_h2f_axi_master_rvalid                                      (hps_0_h2f_axi_master_rvalid),                     //                                                           .rvalid
		.hps_0_h2f_axi_master_rready                                      (hps_0_h2f_axi_master_rready),                     //                                                           .rready
		.clk_0_clk_clk                                                    (clk_clk),                                         //                                                  clk_0_clk.clk
		.hps_0_h2f_axi_master_agent_clk_reset_reset_bridge_in_reset_reset (rst_controller_001_reset_out_reset),              // hps_0_h2f_axi_master_agent_clk_reset_reset_bridge_in_reset.reset
		.streamer_0_reset_reset_bridge_in_reset_reset                     (rst_controller_reset_out_reset),                  //                     streamer_0_reset_reset_bridge_in_reset.reset
		.streamer_0_avs_cra_address                                       (mm_interconnect_0_streamer_0_avs_cra_address),    //                                         streamer_0_avs_cra.address
		.streamer_0_avs_cra_write                                         (mm_interconnect_0_streamer_0_avs_cra_write),      //                                                           .write
		.streamer_0_avs_cra_read                                          (mm_interconnect_0_streamer_0_avs_cra_read),       //                                                           .read
		.streamer_0_avs_cra_readdata                                      (mm_interconnect_0_streamer_0_avs_cra_readdata),   //                                                           .readdata
		.streamer_0_avs_cra_writedata                                     (mm_interconnect_0_streamer_0_avs_cra_writedata),  //                                                           .writedata
		.streamer_0_avs_cra_byteenable                                    (mm_interconnect_0_streamer_0_avs_cra_byteenable)  //                                                           .byteenable
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~hps_0_h2f_reset_reset),         // reset_in0.reset
		.reset_in1      (~hps_0_h2f_reset_reset),         // reset_in1.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~hps_0_h2f_reset_reset),             // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule
