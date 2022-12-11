module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [351:0] projection_stream_in_tuple_data
	, output logic [0:0] projection_stream_in_tuple_ready
	, input logic [0:0] projection_stream_in_tuple_valid
	, output logic [351:0] projection_stream_out_tuple_data
	, input logic [0:0] projection_stream_out_tuple_ready
	, output logic [0:0] projection_stream_out_tuple_valid
	, input logic [0:0] projection_start
	, output logic [0:0] projection_busy
	, output logic [0:0] projection_done
	, input logic [0:0] projection_stall
	, input logic [351:0] windowing_stream_in_tuple_data
	, output logic [0:0] windowing_stream_in_tuple_ready
	, input logic [0:0] windowing_stream_in_tuple_valid
	, output logic [351:0] windowing_stream_out_tuple_data
	, input logic [0:0] windowing_stream_out_tuple_ready
	, output logic [0:0] windowing_stream_out_tuple_valid
	, input logic [0:0] windowing_start
	, output logic [0:0] windowing_busy
	, output logic [0:0] windowing_done
	, input logic [0:0] windowing_stall
	);

	logic [351:0] projection_stream_in_tuple_data_reg;
	logic [0:0] projection_stream_in_tuple_ready_reg;
	logic [0:0] projection_stream_in_tuple_valid_reg;
	logic [351:0] projection_stream_out_tuple_data_reg;
	logic [0:0] projection_stream_out_tuple_ready_reg;
	logic [0:0] projection_stream_out_tuple_valid_reg;
	logic [0:0] projection_start_reg;
	logic [0:0] projection_busy_reg;
	logic [0:0] projection_done_reg;
	logic [0:0] projection_stall_reg;
	logic [351:0] windowing_stream_in_tuple_data_reg;
	logic [0:0] windowing_stream_in_tuple_ready_reg;
	logic [0:0] windowing_stream_in_tuple_valid_reg;
	logic [351:0] windowing_stream_out_tuple_data_reg;
	logic [0:0] windowing_stream_out_tuple_ready_reg;
	logic [0:0] windowing_stream_out_tuple_valid_reg;
	logic [0:0] windowing_start_reg;
	logic [0:0] windowing_busy_reg;
	logic [0:0] windowing_done_reg;
	logic [0:0] windowing_stall_reg;


	always @(posedge clock) begin
		projection_stream_in_tuple_data_reg <= projection_stream_in_tuple_data;
		projection_stream_in_tuple_ready <= projection_stream_in_tuple_ready_reg;
		projection_stream_in_tuple_valid_reg <= projection_stream_in_tuple_valid;
		projection_stream_out_tuple_data <= projection_stream_out_tuple_data_reg;
		projection_stream_out_tuple_ready_reg <= projection_stream_out_tuple_ready;
		projection_stream_out_tuple_valid <= projection_stream_out_tuple_valid_reg;
		projection_start_reg <= projection_start;
		projection_busy <= projection_busy_reg;
		projection_done <= projection_done_reg;
		projection_stall_reg <= projection_stall;
	end


	always @(posedge clock) begin
		windowing_stream_in_tuple_data_reg <= windowing_stream_in_tuple_data;
		windowing_stream_in_tuple_ready <= windowing_stream_in_tuple_ready_reg;
		windowing_stream_in_tuple_valid_reg <= windowing_stream_in_tuple_valid;
		windowing_stream_out_tuple_data <= windowing_stream_out_tuple_data_reg;
		windowing_stream_out_tuple_ready_reg <= windowing_stream_out_tuple_ready;
		windowing_stream_out_tuple_valid <= windowing_stream_out_tuple_valid_reg;
		windowing_start_reg <= windowing_start;
		windowing_busy <= windowing_busy_reg;
		windowing_done <= windowing_done_reg;
		windowing_stall_reg <= windowing_stall;
	end


	reg [2:0] sync_resetn;
	always @(posedge clock or negedge resetn) begin
		if (!resetn) begin
			sync_resetn <= 3'b0;
		end else begin
			sync_resetn <= {sync_resetn[1:0], 1'b1};
		end
	end


	projection projection_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .stream_in_tuple_data(projection_stream_in_tuple_data_reg)
		, .stream_in_tuple_ready(projection_stream_in_tuple_ready_reg)
		, .stream_in_tuple_valid(projection_stream_in_tuple_valid_reg)
		, .stream_out_tuple_data(projection_stream_out_tuple_data_reg)
		, .stream_out_tuple_ready(projection_stream_out_tuple_ready_reg)
		, .stream_out_tuple_valid(projection_stream_out_tuple_valid_reg)
		, .start(projection_start_reg)
		, .busy(projection_busy_reg)
		, .done(projection_done_reg)
		, .stall(projection_stall_reg)
	);



	windowing windowing_inst (
		  .resetn(sync_resetn[2])
		, .clock(clock)
		, .stream_in_tuple_data(windowing_stream_in_tuple_data_reg)
		, .stream_in_tuple_ready(windowing_stream_in_tuple_ready_reg)
		, .stream_in_tuple_valid(windowing_stream_in_tuple_valid_reg)
		, .stream_out_tuple_data(windowing_stream_out_tuple_data_reg)
		, .stream_out_tuple_ready(windowing_stream_out_tuple_ready_reg)
		, .stream_out_tuple_valid(windowing_stream_out_tuple_valid_reg)
		, .start(windowing_start_reg)
		, .busy(windowing_busy_reg)
		, .done(windowing_done_reg)
		, .stall(windowing_stall_reg)
	);



endmodule
