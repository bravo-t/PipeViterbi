module ACS_tb();
	reg [6:0] PM_1_test,PM_2_test;
	reg [1:0] data_recv_test,self_state_test;
	reg input_signal;
	reg [1:0] addr_in_1,addr_in_2;
	wire dec_bit;
	wire [6:0] PM_out_test;
	wire [1:0] addr_out;

	initial
	begin
		$dumpfile("ACS.vcd");
		$dumpvars;
		$monitor("%g  %b %b %b %d %b %d %b %d %b %b %b",$time,self_state_test,data_recv_test,PM_1_test,PM_1_test,PM_2_test,PM_2_test,PM_out_test,PM_out_test,data_rdy,addr_out,dec_bit);
		addr_in_1=2'b00;
		addr_in_2=2'b11;
		input_signal=0;
		self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 input_signal=1;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b00;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b01;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b10;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 self_state_test=2'b11;data_recv_test={$random}%4;PM_1_test={$random}%32;PM_2_test={$random}%32;
		#5 $finish;
	end

	ACS ACS1(.input_sig(input_signal),
			.self_state(self_state_test),
			.data_recv(data_recv_test),
			.addr_in_1(addr_in_1),
			.addr_in_2(addr_in_2),
			.PMin1(PM_1_test),
			.PMin2(PM_2_test),
			.PMout(PM_out_test),
			.addr_out(addr_out),
			.data_rdy(data_ready),
			.dec_out(dec_bit));

endmodule