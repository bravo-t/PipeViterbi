module ACS_tb();
	reg [6:0] BM_1_test,BM_2_test;
	reg [1:0] data_recv_test,self_state_test;
	wire [6:0] BM_out_test;

	initial
	begin
		$dumpfile("ACS.vcd");
		$dumpvars;
		$monitor("%g  %b %b %b %d %b %d %b %d",$time,self_state_test,data_recv_test,BM_1_test,BM_1_test,BM_2_test,BM_2_test,BM_out_test,BM_out_test);
		self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;BM_1_test={$random}%32;BM_2_test={$random}%32;
		#5 $finish;
	end

	ACS ACS1(.self_state(self_state_test),.data_recv(data_recv_test),.BMin1(BM_1_test),.BMin2(BM_2_test),.BMout(BM_out_test));

endmodule