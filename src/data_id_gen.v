module data_id_gen(clk,
				   rst,
				   data_id);

	input clk;
	input rst;
	output [3:0] data_id;
	reg [3:0] data_id;

	always @(posedge clk or negedge rst) begin
		if (!rst) 
			data_id <= 4'b0000;
		else
		begin
			if (data_id < 4'b1000)
				data_id <= data_id + 1'b1;
			else
				data_id <= 4'b0000;
		end
	end

endmodule