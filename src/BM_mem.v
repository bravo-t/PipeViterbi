module BM_mem(data_id,
			  BM_clk,
			  BM_rst,
		      BM_in,
		      BM_out,
		      data_id_out);
	input BM_clk,BM_rst;
	input [3:0] data_id;
	input [6:0] BM_in;
	output [3:0] data_id_out;
	output [6:0] BM_out;
	reg [3:0] data_id_out;
	reg [6:0] BM_out;

	always @(posedge BM_clk or negedge BM_rst) begin
		if (!BM_rst) begin
			BM_out <= 7'b0000000;
			data_id_out <= 4'b0000;
		end
		else
		begin
			BM_out <=BM_in;
			data_id_out <= data_id;
		end
	end

endmodule