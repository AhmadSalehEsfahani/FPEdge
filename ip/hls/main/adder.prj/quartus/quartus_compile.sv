module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] streamer_avs_in0_read
	, output logic [63:0] streamer_avs_in0_readdata
	, input logic [0:0] streamer_avs_in0_write
	, input logic [63:0] streamer_avs_in0_writedata
	, input logic [0:0] streamer_avs_in0_address
	, input logic [7:0] streamer_avs_in0_byteenable
	, input logic [0:0] streamer_avs_out0_read
	, output logic [127:0] streamer_avs_out0_readdata
	, input logic [0:0] streamer_avs_out0_write
	, input logic [127:0] streamer_avs_out0_writedata
	, input logic [0:0] streamer_avs_out0_address
	, input logic [15:0] streamer_avs_out0_byteenable
	);

	logic [0:0] streamer_avs_in0_read_reg;
	logic [63:0] streamer_avs_in0_readdata_reg;
	logic [0:0] streamer_avs_in0_write_reg;
	logic [63:0] streamer_avs_in0_writedata_reg;
	logic [0:0] streamer_avs_in0_address_reg;
	logic [7:0] streamer_avs_in0_byteenable_reg;
	logic [0:0] streamer_avs_out0_read_reg;
	logic [127:0] streamer_avs_out0_readdata_reg;
	logic [0:0] streamer_avs_out0_write_reg;
	logic [127:0] streamer_avs_out0_writedata_reg;
	logic [0:0] streamer_avs_out0_address_reg;
	logic [15:0] streamer_avs_out0_byteenable_reg;


	always @(posedge clock) begin
		streamer_avs_in0_read_reg <= streamer_avs_in0_read;
		streamer_avs_in0_readdata <= streamer_avs_in0_readdata_reg;
		streamer_avs_in0_write_reg <= streamer_avs_in0_write;
		streamer_avs_in0_writedata_reg <= streamer_avs_in0_writedata;
		streamer_avs_in0_address_reg <= streamer_avs_in0_address;
		streamer_avs_in0_byteenable_reg <= streamer_avs_in0_byteenable;
		streamer_avs_out0_read_reg <= streamer_avs_out0_read;
		streamer_avs_out0_readdata <= streamer_avs_out0_readdata_reg;
		streamer_avs_out0_write_reg <= streamer_avs_out0_write;
		streamer_avs_out0_writedata_reg <= streamer_avs_out0_writedata;
		streamer_avs_out0_address_reg <= streamer_avs_out0_address;
		streamer_avs_out0_byteenable_reg <= streamer_avs_out0_byteenable;
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
		, .avs_in0_read(streamer_avs_in0_read_reg)
		, .avs_in0_readdata(streamer_avs_in0_readdata_reg)
		, .avs_in0_write(streamer_avs_in0_write_reg)
		, .avs_in0_writedata(streamer_avs_in0_writedata_reg)
		, .avs_in0_address(streamer_avs_in0_address_reg)
		, .avs_in0_byteenable(streamer_avs_in0_byteenable_reg)
		, .avs_out0_read(streamer_avs_out0_read_reg)
		, .avs_out0_readdata(streamer_avs_out0_readdata_reg)
		, .avs_out0_write(streamer_avs_out0_write_reg)
		, .avs_out0_writedata(streamer_avs_out0_writedata_reg)
		, .avs_out0_address(streamer_avs_out0_address_reg)
		, .avs_out0_byteenable(streamer_avs_out0_byteenable_reg)
	);



endmodule
