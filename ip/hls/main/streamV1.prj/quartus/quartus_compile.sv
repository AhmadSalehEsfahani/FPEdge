module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [0:0] streamer_avs_tuple_in_read
	, output logic [511:0] streamer_avs_tuple_in_readdata
	, input logic [0:0] streamer_avs_tuple_in_write
	, input logic [511:0] streamer_avs_tuple_in_writedata
	, input logic [0:0] streamer_avs_tuple_in_address
	, input logic [63:0] streamer_avs_tuple_in_byteenable
	, input logic [0:0] streamer_avs_tuple_out_read
	, output logic [511:0] streamer_avs_tuple_out_readdata
	, input logic [0:0] streamer_avs_tuple_out_write
	, input logic [511:0] streamer_avs_tuple_out_writedata
	, input logic [0:0] streamer_avs_tuple_out_address
	, input logic [63:0] streamer_avs_tuple_out_byteenable
	);

	logic [0:0] streamer_avs_tuple_in_read_reg;
	logic [511:0] streamer_avs_tuple_in_readdata_reg;
	logic [0:0] streamer_avs_tuple_in_write_reg;
	logic [511:0] streamer_avs_tuple_in_writedata_reg;
	logic [0:0] streamer_avs_tuple_in_address_reg;
	logic [63:0] streamer_avs_tuple_in_byteenable_reg;
	logic [0:0] streamer_avs_tuple_out_read_reg;
	logic [511:0] streamer_avs_tuple_out_readdata_reg;
	logic [0:0] streamer_avs_tuple_out_write_reg;
	logic [511:0] streamer_avs_tuple_out_writedata_reg;
	logic [0:0] streamer_avs_tuple_out_address_reg;
	logic [63:0] streamer_avs_tuple_out_byteenable_reg;


	always @(posedge clock) begin
		streamer_avs_tuple_in_read_reg <= streamer_avs_tuple_in_read;
		streamer_avs_tuple_in_readdata <= streamer_avs_tuple_in_readdata_reg;
		streamer_avs_tuple_in_write_reg <= streamer_avs_tuple_in_write;
		streamer_avs_tuple_in_writedata_reg <= streamer_avs_tuple_in_writedata;
		streamer_avs_tuple_in_address_reg <= streamer_avs_tuple_in_address;
		streamer_avs_tuple_in_byteenable_reg <= streamer_avs_tuple_in_byteenable;
		streamer_avs_tuple_out_read_reg <= streamer_avs_tuple_out_read;
		streamer_avs_tuple_out_readdata <= streamer_avs_tuple_out_readdata_reg;
		streamer_avs_tuple_out_write_reg <= streamer_avs_tuple_out_write;
		streamer_avs_tuple_out_writedata_reg <= streamer_avs_tuple_out_writedata;
		streamer_avs_tuple_out_address_reg <= streamer_avs_tuple_out_address;
		streamer_avs_tuple_out_byteenable_reg <= streamer_avs_tuple_out_byteenable;
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
		, .avs_tuple_in_read(streamer_avs_tuple_in_read_reg)
		, .avs_tuple_in_readdata(streamer_avs_tuple_in_readdata_reg)
		, .avs_tuple_in_write(streamer_avs_tuple_in_write_reg)
		, .avs_tuple_in_writedata(streamer_avs_tuple_in_writedata_reg)
		, .avs_tuple_in_address(streamer_avs_tuple_in_address_reg)
		, .avs_tuple_in_byteenable(streamer_avs_tuple_in_byteenable_reg)
		, .avs_tuple_out_read(streamer_avs_tuple_out_read_reg)
		, .avs_tuple_out_readdata(streamer_avs_tuple_out_readdata_reg)
		, .avs_tuple_out_write(streamer_avs_tuple_out_write_reg)
		, .avs_tuple_out_writedata(streamer_avs_tuple_out_writedata_reg)
		, .avs_tuple_out_address(streamer_avs_tuple_out_address_reg)
		, .avs_tuple_out_byteenable(streamer_avs_tuple_out_byteenable_reg)
	);



endmodule
