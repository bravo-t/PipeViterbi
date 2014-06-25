module PM_mem(data_id,
			  PM_clk,
			  PM_rst,
		      PM_in,
//		      data_en,
		      addr_in,
		      dec_in,
		      term_in,
		      PM_out,
		      term_out,
		      addr_out,
//		      data_rdy,
		      dec_out,
		      data_id_out);
	input PM_clk,PM_rst,dec_in,term_in;
	input [1:0] addr_in;
	input [2:0] data_id;
	input [6:0] PM_in;
	output dec_out,term_out;
	output [1:0] addr_out;
	output [2:0] data_id_out;
	output [6:0] PM_out;
	reg dec_out,term_out;
	reg [1:0] addr_out;
	reg [2:0] data_id_out;
	reg [6:0] PM_out;

	always @(posedge PM_clk or negedge PM_rst) begin
		if (!PM_rst) begin
			dec_out <= 1'b0;
			addr_out <= 2'b00;
			PM_out <= 7'b0000000;
			data_id_out <= 3'b000;
			term_out <= 1'b1;
		end
		else
		begin
			dec_out <= dec_in;
			addr_out <= addr_in;
			PM_out <=PM_in;
			data_id_out <= data_id;
			term_out <= term_in;
		end
	end

endmodule