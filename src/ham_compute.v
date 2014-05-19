module ham_compute(data_recv,
				   path_id,
				   ham_dist);

	input [1:0] data_recv,path_id;
	output [1:0] ham_dist;
	reg [1:0] ham_dist;

	always @(*) begin
		if ((data_recv[0]==path_id[0])&&(data_recv[1]==path_id[1])) ham_dist=2'b00;
		if ((data_recv[0]!=path_id[0])&&(data_recv[1]==path_id[1])) ham_dist=2'b01;
		if ((data_recv[0]==path_id[0])&&(data_recv[1]!=path_id[1])) ham_dist=2'b01;
		if ((data_recv[0]!=path_id[0])&&(data_recv[1]!=path_id[1])) ham_dist=2'b10;
	end

endmodule
