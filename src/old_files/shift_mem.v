module shift_mem(clk,
				 rst,
				 bus_sig_1,  //bus_sig_n = {data_id,addr_4,dec_bit_4,
				 bus_sig_2,  //						addr_3,dec_bit_3,
				 bus_sig_3,  //						addr_2,dec_bit_2,
				 bus_sig_4,  //						addr_1,dec_bit_1}
				 bus_sig_5,
				 bus_sig_6,
				 bus_sig_7,
				 bus_sig_8,
				// self_state,
				 data_out);
	
	input clk,rst;
	input [14:0] bus_sig_1,bus_sig_2,bus_sig_3,bus_sig_4,bus_sig_5,bus_sig_6,bus_sig_7,bus_sig_8;
	output [31:0] data_out;

	reg [11:0] addr_dec_1,addr_dec_2,addr_dec_3,addr_dec_4,addr_dec_5,addr_dec_6,addr_dec_7,addr_dec_8;

	wire [31:0] data_out_1,data_out_2,data_out_3,data_out_4,data_out_5,data_out_6,data_out_7,data_out_8;

	always @(bus_sig_1,bus_sig_2,bus_sig_3,bus_sig_4,bus_sig_5,bus_sig_6,bus_sig_7,bus_sig_8) begin
		case(bus_sig_1[14:12])
			3'b000: addr_dec_1 = bus_sig_1[11:0];
			3'b001: addr_dec_1 = bus_sig_2[11:0];
			3'b010: addr_dec_1 = bus_sig_3[11:0];
			3'b011: addr_dec_1 = bus_sig_4[11:0];
			3'b100: addr_dec_1 = bus_sig_5[11:0];
			3'b101: addr_dec_1 = bus_sig_6[11:0];
			3'b110: addr_dec_1 = bus_sig_7[11:0];
			3'b111: addr_dec_1 = bus_sig_8[11:0];
		endcase
		case(bus_sig_2[14:12])
			3'b000: addr_dec_2 = bus_sig_1[11:0];
			3'b001: addr_dec_2 = bus_sig_2[11:0];
			3'b010: addr_dec_2 = bus_sig_3[11:0];
			3'b011: addr_dec_2 = bus_sig_4[11:0];
			3'b100: addr_dec_2 = bus_sig_5[11:0];
			3'b101: addr_dec_2 = bus_sig_6[11:0];
			3'b110: addr_dec_2 = bus_sig_7[11:0];
			3'b111: addr_dec_2 = bus_sig_8[11:0];
		endcase
		case(bus_sig_3[14:12])
			3'b000: addr_dec_3 = bus_sig_1[11:0];
			3'b001: addr_dec_3 = bus_sig_2[11:0];
			3'b010: addr_dec_3 = bus_sig_3[11:0];
			3'b011: addr_dec_3 = bus_sig_4[11:0];
			3'b100: addr_dec_3 = bus_sig_5[11:0];
			3'b101: addr_dec_3 = bus_sig_6[11:0];
			3'b110: addr_dec_3 = bus_sig_7[11:0];
			3'b111: addr_dec_3 = bus_sig_8[11:0];
		endcase
		case(bus_sig_4[14:12])
			3'b000: addr_dec_4 = bus_sig_1[11:0];
			3'b001: addr_dec_4 = bus_sig_2[11:0];
			3'b010: addr_dec_4 = bus_sig_3[11:0];
			3'b011: addr_dec_4 = bus_sig_4[11:0];
			3'b100: addr_dec_4 = bus_sig_5[11:0];
			3'b101: addr_dec_4 = bus_sig_6[11:0];
			3'b110: addr_dec_4 = bus_sig_7[11:0];
			3'b111: addr_dec_4 = bus_sig_8[11:0];
		endcase
		case(bus_sig_5[14:12])
			3'b000: addr_dec_5 = bus_sig_1[11:0];
			3'b001: addr_dec_5 = bus_sig_2[11:0];
			3'b010: addr_dec_5 = bus_sig_3[11:0];
			3'b011: addr_dec_5 = bus_sig_4[11:0];
			3'b100: addr_dec_5 = bus_sig_5[11:0];
			3'b101: addr_dec_5 = bus_sig_6[11:0];
			3'b110: addr_dec_5 = bus_sig_7[11:0];
			3'b111: addr_dec_5 = bus_sig_8[11:0];
		endcase
		case(bus_sig_6[14:12])
			3'b000: addr_dec_6 = bus_sig_1[11:0];
			3'b001: addr_dec_6 = bus_sig_2[11:0];
			3'b010: addr_dec_6 = bus_sig_3[11:0];
			3'b011: addr_dec_6 = bus_sig_4[11:0];
			3'b100: addr_dec_6 = bus_sig_5[11:0];
			3'b101: addr_dec_6 = bus_sig_6[11:0];
			3'b110: addr_dec_6 = bus_sig_7[11:0];
			3'b111: addr_dec_6 = bus_sig_8[11:0];
		endcase
		case(bus_sig_7[14:12])
			3'b000: addr_dec_7 = bus_sig_1[11:0];
			3'b001: addr_dec_7 = bus_sig_2[11:0];
			3'b010: addr_dec_7 = bus_sig_3[11:0];
			3'b011: addr_dec_7 = bus_sig_4[11:0];
			3'b100: addr_dec_7 = bus_sig_5[11:0];
			3'b101: addr_dec_7 = bus_sig_6[11:0];
			3'b110: addr_dec_7 = bus_sig_7[11:0];
			3'b111: addr_dec_7 = bus_sig_8[11:0];
		endcase
		case(bus_sig_8[14:12])
			3'b000: addr_dec_8 = bus_sig_1[11:0];
			3'b001: addr_dec_8 = bus_sig_2[11:0];
			3'b010: addr_dec_8 = bus_sig_3[11:0];
			3'b011: addr_dec_8 = bus_sig_4[11:0];
			3'b100: addr_dec_8 = bus_sig_5[11:0];
			3'b101: addr_dec_8 = bus_sig_6[11:0];
			3'b110: addr_dec_8 = bus_sig_7[11:0];
			3'b111: addr_dec_8 = bus_sig_8[11:0];
		endcase
	end

	shift_mem_col u_shift_mem_col_1(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_1[11:0]),
									.data_out(data_out_1));
	shift_mem_col u_shift_mem_col_2(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_2[11:0]),
									.data_out(data_out_2));
	shift_mem_col u_shift_mem_col_3(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_3[11:0]),
									.data_out(data_out_3));
	shift_mem_col u_shift_mem_col_4(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_4[11:0]),
									.data_out(data_out_4));
	shift_mem_col u_shift_mem_col_5(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_5[11:0]),
									.data_out(data_out_5));
	shift_mem_col u_shift_mem_col_6(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_6[11:0]),
									.data_out(data_out_6));
	shift_mem_col u_shift_mem_col_7(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_7[11:0]),
									.data_out(data_out_7));
	shift_mem_col u_shift_mem_col_8(.clk(clk),
									.rst(rst),
									.addr_dec_sig(bus_sig_8[11:0]),
									.data_out(data_out_8));

	out_sel_unit u_out_sel_unit(.clk(clk),
								.rst(rst),
								.data_in_1(data_out_1),
								.data_in_2(data_out_2),
								.data_in_3(data_out_3),
								.data_in_4(data_out_4),
								.data_in_5(data_out_5),
								.data_in_6(data_out_6),
								.data_in_7(data_out_7),
								.data_in_8(data_out_8),
								.data_out(data_out));

endmodule


module shift_mem_col(clk,
				 rst,
				// self_addr,
				 addr_dec_sig,  //addr_dec_sig = {addr_4,dec_bit_4,addr_3,dec_bit_3,
				 data_out);		//				  addr_2,dec_bit_2,addr_1,dec_bit_1}

	input clk,rst;
	input [11:0] addr_dec_sig;
	output [31:0] data_out;

	reg dec_1,dec_2,dec_3,dec_4;

	wire [7:0] data_out_1,data_out_2,data_out_3,data_out_4;
	
	always @(addr_dec_sig) begin
		case(addr_dec_sig[2:1])
			2'b00: dec_1 = addr_dec_sig[0];
			2'b01: dec_2 = addr_dec_sig[0];
			2'b10: dec_3 = addr_dec_sig[0];
			2'b11: dec_4 = addr_dec_sig[0];
		endcase
		case(addr_dec_sig[5:4])
			2'b00: dec_1 = addr_dec_sig[3];
			2'b01: dec_2 = addr_dec_sig[3];
			2'b10: dec_3 = addr_dec_sig[3];
			2'b11: dec_4 = addr_dec_sig[3];
		endcase
		case(addr_dec_sig[8:7])
			2'b00: dec_1 = addr_dec_sig[6];
			2'b01: dec_2 = addr_dec_sig[6];
			2'b10: dec_3 = addr_dec_sig[6];
			2'b11: dec_4 = addr_dec_sig[6];
		endcase
		case(addr_dec_sig[11:10])
			2'b00: dec_1 = addr_dec_sig[9];
			2'b01: dec_2 = addr_dec_sig[9];
			2'b10: dec_3 = addr_dec_sig[9];
			2'b11: dec_4 = addr_dec_sig[9];
		endcase
	end

	shift_reg u_shift_reg_1(.clk(clk),
							.rst(rst),
							.data_in(dec_1),
							.data_out(data_out_1));
	shift_reg u_shift_reg_2(.clk(clk),
							.rst(rst),
							.data_in(dec_2),
							.data_out(data_out_2));
	shift_reg u_shift_reg_3(.clk(clk),
							.rst(rst),
							.data_in(dec_3),
							.data_out(data_out_3));
	shift_reg u_shift_reg_4(.clk(clk),
							.rst(rst),
							.data_in(dec_4),
							.data_out(data_out_4));

	assign data_out = {data_out_4,data_out_3,data_out_2,data_out_1};

endmodule

module shift_reg(clk,
				 rst,
				 data_in,
				 data_out);
	input clk,rst,data_in;
	output [7:0] data_out;
	reg [7:0] data_out;
	
	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			data_out <= 8'b00000000;
		end
		else
		begin
			data_out[0] <= data_in;
			data_out[1] <= data_out[0];
			data_out[2] <= data_out[1];
			data_out[3] <= data_out[2];
			data_out[4] <= data_out[3];
			data_out[5] <= data_out[4];
			data_out[6] <= data_out[5];
			data_out[7] <= data_out[6];
		end
	end

endmodule

module out_sel_unit(clk,
					rst,
					data_in_1,
					data_in_2,
					data_in_3,
					data_in_4,
					data_in_5,
					data_in_6,
					data_in_7,
					data_in_8,
					data_out);
	input clk,rst;
	input [31:0] data_in_1,data_in_2,data_in_3,data_in_4,data_in_5,data_in_6,data_in_7,data_in_8;
	output [31:0] data_out;
	
	reg [2:0] counter;
	reg [31:0] data_out;

	always @(posedge clk or negedge rst) begin
		if (!rst) 
		begin
			// reset
			counter <= 3'b000;
		end
		else 
		begin
			counter <= counter + 1'b1;
		end
	end

	always @(*) begin
		case(counter)
			3'b000:data_out = data_in_1;
			3'b001:data_out = data_in_2;
			3'b010:data_out = data_in_3;
			3'b011:data_out = data_in_4;
			3'b100:data_out = data_in_5;
			3'b101:data_out = data_in_6;
			3'b110:data_out = data_in_7;
			3'b111:data_out = data_in_8;
		endcase
	end

endmodule