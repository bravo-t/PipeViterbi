module test();

	reg clk,rst;
	wire [7:0] data_dec;

	initial
	begin
		$dumpfile("FixedInput.vcd");
		$dumpvars;
		rst=0;
		#5 rst=1;
		#100 $finish;
	end

	initial begin
		clk = 0;
		forever #1 clk = ~clk;
	end

PipeViterbi u_PipeViterbi(.clk(clk),
				   .rst(rst),
				   .data_recv(16'b1101100100111100),
				   .data_dec(data_dec));

endmodule