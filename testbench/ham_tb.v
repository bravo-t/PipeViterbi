module ham_tb();
	reg [1:0] data_recv_test,path_id_test;
	wire [1:0] ham_dist_out;

	initial
	begin
		$dumpfile("ham.vcd");
		$dumpvars;
		$monitor("%g\t %b %b %b",$time,data_recv_test,path_id_test,ham_dist_out);

		data_recv_test=2'b00;path_id_test=2'b00;
		#5 data_recv_test=2'b00;path_id_test=2'b01;
		#5 data_recv_test=2'b00;path_id_test=2'b10;
		#5 data_recv_test=2'b00;path_id_test=2'b11;
		#5 data_recv_test=2'b01;path_id_test=2'b00;
		#5 data_recv_test=2'b01;path_id_test=2'b01;
		#5 data_recv_test=2'b01;path_id_test=2'b10;
		#5 data_recv_test=2'b01;path_id_test=2'b11;
		#5 data_recv_test=2'b10;path_id_test=2'b00;
		#5 data_recv_test=2'b10;path_id_test=2'b01;
		#5 data_recv_test=2'b10;path_id_test=2'b10;
		#5 data_recv_test=2'b10;path_id_test=2'b11;
		#5 data_recv_test=2'b11;path_id_test=2'b00;
		#5 data_recv_test=2'b11;path_id_test=2'b01;
		#5 data_recv_test=2'b11;path_id_test=2'b10;
		#5 data_recv_test=2'b11;path_id_test=2'b11;
		#5 $finish;
	end

	ham_compute ham1(.data_recv(data_recv_test),.path_id(path_id_test),.ham_dist(ham_dist_out));

endmodule