module cmp_sel_tb();

	reg [6:0] PM_1,PM_2,PM_3,PM_4;
	reg [31:0] data_in;
	reg clk,rst;

	wire [7:0] data_out;

	initial
	begin
		rst = 1;
		clk = 0;
		forever #5 clk = ~clk;
	end

	initial
	begin
		$dumpfile("cmp_sel.vcd");
		$dumpvars;
		PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 PM_1={$random}%128;PM_2={$random}%128;PM_3={$random}%128;PM_4={$random}%128;data_in={$random};
		#10 $finish;
	end

	cmp_sel u_cmp_sel(.clk(clk),
			.rst(rst),
			.PM_1(PM_1),
			.PM_2(PM_2),
			.PM_3(PM_3),
			.PM_4(PM_4),
			.data_in(data_in),
			.data_out(data_out));

endmodule