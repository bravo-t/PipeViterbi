module cmp_sel(clk,
				rst,
				PM_1,
				PM_2,
				PM_3,
				PM_4,
				data_in,
				data_out);
	
	input clk,rst;
	input [6:0] PM_1,PM_2,PM_3,PM_4;
	input [31:0] data_in;

	output [7:0] data_out;

	reg [7:0] data_out;

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			data_out <= 8'b00000000;
		end
		else 
		begin
			if((PM_1 <= PM_2) && (PM_1 <= PM_3) &&(PM_1 <= PM_4))
				data_out <= data_in[7:0];
			if((PM_2 < PM_1) && (PM_2 <= PM_3) &&(PM_2 <= PM_4))
				data_out <= data_in[15:8];
			if((PM_3 < PM_1) && (PM_3 < PM_2) && (PM_3 <= PM_4))
				data_out <= data_in[23:16];
			if((PM_4 < PM_1) && (PM_4 < PM_2) && (PM_4 < PM_3))
				data_out <= data_in[31:24];
		end
	end

endmodule