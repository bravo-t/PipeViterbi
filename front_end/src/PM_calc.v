module PM_calc(clk,
			   rst,
			   PM_in,
			   data_recv,
			   path_id,
			   PM_out);

	input clk,rst;
	input [1:0] data_recv,path_id;
	input [6:0] PM_in;
	output [6:0] PM_out;
	reg [1:0] ham_dist;
	reg [6:0] PM_out;

	always @(*) begin
		if ((data_recv[0]==path_id[0])&&(data_recv[1]==path_id[1])) ham_dist=2'b00;
		if ((data_recv[0]!=path_id[0])&&(data_recv[1]==path_id[1])) ham_dist=2'b01;
		if ((data_recv[0]==path_id[0])&&(data_recv[1]!=path_id[1])) ham_dist=2'b01;
		if ((data_recv[0]!=path_id[0])&&(data_recv[1]!=path_id[1])) ham_dist=2'b10;
	end

	always @(posedge clk or negedge rst) begin
		if (!rst) PM_out <= 7'b0;
		else begin
			PM_out <= PM_in + ham_dist;
		end
	end

endmodule
