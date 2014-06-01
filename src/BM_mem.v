module PM_mem(data_id,
			  PM_clk,
			  PM_rst,
		      PM_in,
		      pointer_in,
		      PM_out,
		      pointer_out,
		      data_id_out);
	input PM_clk,PM_rst;
	input [3:0] data_id;
	input [6:0] PM_in;
	output [3:0] data_id_out;
	output [6:0] PM_out;
	reg [3:0] data_id_out;
	reg [6:0] PM_out;

	always @(posedge PM_clk or negedge PM_rst) begin
		if (!PM_rst) begin
			PM_out <= 7'b0000000;
			data_id_out <= 4'b0000;
		end
		else
		begin
			PM_out <=PM_in;
			data_id_out <= data_id;
		end
	end

endmodule