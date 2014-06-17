module input_shifter_tb();
	
	reg clk,rst;
	reg [15:0] data_recv;

	wire [1:0] enc_bit_1,
			   enc_bit_2,
			   enc_bit_3,
			   enc_bit_4,
			   enc_bit_5,
			   enc_bit_6,
			   enc_bit_7,
			   enc_bit_8;

	initial begin
		//rst = 1;
		clk = 1'b1;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 0;
		#30 rst = 1;
	end

	initial begin
		$dumpfile("input_shifter_tb.vcd");
		$dumpvars;
		data_recv={$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 data_recv = {$random};
		#10 $finish;
	end

	input_shifter u_input_shifter(.clk(clk),
				  .rst(rst),
				  .data_recv(data_recv),
				  .enc_bit_1(enc_bit_1),
				  .enc_bit_2(enc_bit_2),
				  .enc_bit_3(enc_bit_3),
				  .enc_bit_4(enc_bit_4),
				  .enc_bit_5(enc_bit_5),
				  .enc_bit_6(enc_bit_6),
				  .enc_bit_7(enc_bit_7),
				  .enc_bit_8(enc_bit_8));

endmodule