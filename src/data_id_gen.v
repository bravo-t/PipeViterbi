module data_id_gen(clk,
				   rst,
				   data_id);

	input clk;
	input rst;
	output [2:0] data_id;
	reg [2:0] data_id;

	always @(posedge clk or negedge rst) begin
		if (!rst) 
			data_id <= 3'b000;
		else
		begin
			data_id <= data_id + 1'b1;
		end
	end

endmodule