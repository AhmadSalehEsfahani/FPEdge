module quartus_compile (
	  input logic resetn
	, input logic clock
	, output logic [0:0] streamer_done_irq
	, input logic [0:0] streamer_avs_cra_read
	, output logic [63:0] streamer_avs_cra_readdata
	, input logic [0:0] streamer_avs_cra_write
	, input logic [63:0] streamer_avs_cra_writedata
	, input logic [3:0] streamer_avs_cra_address
	, input logic [7:0] streamer_avs_cra_byteenable
	);

	logic [0:0] streamer_done_irq_reg;
	logic [0:0] streamer_avs_cra_read_reg;
	logic [63:0] streamer_avs_cra_readdata_reg;
	logic [0:0] streamer_avs_cra_write_reg;
	logic [63:0] streamer_avs_cra_writedata_reg;
	logic [3:0] streamer_avs_cra_address_reg;
	logic [7:0] streamer_avs_cra_byteenable_reg;


	always @(posedge clock) begin
		streamer_done_irq <= streamer_done_irq_reg;
		streamer_avs_cra_read_reg <= streamer_avs_cra_read;
		streamer_avs_cra_readdata <= streamer_avs_cra_readdata_reg;
		streamer_avs_cra_write_reg <= streamer_avs_cra_write;
		streamer_avs_cra_writedata_reg <= streamer_avs_cra_writedata;
		streamer_avs_cra_address_reg <= streamer_avs_cra_address;
		streamer_avs_cra_byteenable_reg <= streamer_avs_cra_byteenable;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	streamer streamer_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .done_irq(streamer_done_irq_reg)
		, .avs_cra_read(streamer_avs_cra_read_reg)
		, .avs_cra_readdata(streamer_avs_cra_readdata_reg)
		, .avs_cra_write(streamer_avs_cra_write_reg)
		, .avs_cra_writedata(streamer_avs_cra_writedata_reg)
		, .avs_cra_address(streamer_avs_cra_address_reg)
		, .avs_cra_byteenable(streamer_avs_cra_byteenable_reg)
	);



endmodule
