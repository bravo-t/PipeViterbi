module PM_mem(data_id,
			  PM_clk,
			  PM_rst,
		      PM_in,
		      data_en,
		      addr_in,
		      dec_in,
		      PM_out,
		      addr_out,
		      data_rdy,
		      dec_out,
		      data_id_out);
	input PM_clk,PM_rst,dec_in,data_en;
	input [1:0] addr_in;
	input [3:0] data_id;
	input [6:0] PM_in;
	output dec_out,data_rdy;
	output [1:0] addr_out;
	output [3:0] data_id_out;
	output [6:0] PM_out;
	reg dec_out,data_rdy;
	reg [1:0] addr_out;
	reg [3:0] data_id_out;
	reg [6:0] PM_out;

	always @(posedge PM_clk or negedge PM_rst) begin
		if (!PM_rst) begin
			dec_out <= 1'b0;
			data_rdy <= 1'b0;
			addr_out <= 2'b00;
			PM_out <= 7'b0000000;
			data_id_out <= 4'b0000;
		end
		else
		begin
			dec_out <= dec_in;
			data_rdy <= data_en;
			addr_out <= addr_in;
			PM_out <=PM_in;
			data_id_out <= data_id;
		end
	end

endmodule