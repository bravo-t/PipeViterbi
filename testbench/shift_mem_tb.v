module shift_mem_tb();
	reg clk,rst; //bus_sig_n = {data_id,addr_4,dec_bit_4,addr_3,dec_bit_3,addr_2,dec_bit_2,addr_1,dec_bit_1}
	reg [14:0] bus_sig_1,bus_sig_2,bus_sig_3,bus_sig_4,bus_sig_5,bus_sig_6,bus_sig_7,bus_sig_8;
	wire [31:0] data_out;

	initial begin
		rst = 0;
		#50 rst = 1;
	end

	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial
	begin
		$dumpfile("shift_mem.vcd");
		$dumpvars;
		bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		rst = 1;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 bus_sig_1={$random}%32768;bus_sig_2={$random}%32768;bus_sig_3={$random}%32768;bus_sig_4={$random}%32768;bus_sig_5={$random}%32768;bus_sig_6={$random}%32768;bus_sig_7={$random}%32768;bus_sig_8={$random}%32768;
		#5 $finish;
	end



	shift_mem u_shift_mem(.clk(clk),
				 		  .rst(rst),
				 .bus_sig_1(bus_sig_1),
				 .bus_sig_2(bus_sig_2),
				 .bus_sig_3(bus_sig_3),
				 .bus_sig_4(bus_sig_4),
				 .bus_sig_5(bus_sig_5),
				 .bus_sig_6(bus_sig_6),
				 .bus_sig_7(bus_sig_7),
				 .bus_sig_8(bus_sig_8),
				 .data_out(data_out));

endmodule