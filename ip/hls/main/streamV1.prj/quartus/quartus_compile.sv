module quartus_compile (
	  input logic resetn
	, input logic clock
	, input logic [351:0] streamer_s_in_data
	, output logic [0:0] streamer_s_in_ready
	, input logic [0:0] streamer_s_in_valid
	, output logic [351:0] streamer_s_out_data
	, input logic [0:0] streamer_s_out_ready
	, output logic [0:0] streamer_s_out_valid
	, input logic [0:0] streamer_start
	, output logic [0:0] streamer_busy
	, output logic [0:0] streamer_done
	, input logic [0:0] streamer_stall
	);

	logic [351:0] streamer_s_in_data_reg;
	logic [0:0] streamer_s_in_ready_reg;
	logic [0:0] streamer_s_in_valid_reg;
	logic [351:0] streamer_s_out_data_reg;
	logic [0:0] streamer_s_out_ready_reg;
	logic [0:0] streamer_s_out_valid_reg;
	logic [0:0] streamer_start_reg;
	logic [0:0] streamer_busy_reg;
	logic [0:0] streamer_done_reg;
	logic [0:0] streamer_stall_reg;


	always @(posedge clock) begin
		streamer_s_in_data_reg <= streamer_s_in_data;
		streamer_s_in_ready <= streamer_s_in_ready_reg;
		streamer_s_in_valid_reg <= streamer_s_in_valid;
		streamer_s_out_data <= streamer_s_out_data_reg;
		streamer_s_out_ready_reg <= streamer_s_out_ready;
		streamer_s_out_valid <= streamer_s_out_valid_reg;
		streamer_start_reg <= streamer_start;
		streamer_busy <= streamer_busy_reg;
		streamer_done <= streamer_done_reg;
		streamer_stall_reg <= streamer_stall;
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
		, .s_in_data(streamer_s_in_data_reg)
		, .s_in_ready(streamer_s_in_ready_reg)
		, .s_in_valid(streamer_s_in_valid_reg)
		, .s_out_data(streamer_s_out_data_reg)
		, .s_out_ready(streamer_s_out_ready_reg)
		, .s_out_valid(streamer_s_out_valid_reg)
		, .start(streamer_start_reg)
		, .busy(streamer_busy_reg)
		, .done(streamer_done_reg)
		, .stall(streamer_stall_reg)
	);



endmodule
