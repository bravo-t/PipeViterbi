module input_shifter(clk,
					 rst,
					 data_recv,
					 enc_bit_1,
					 enc_bit_2,
					 enc_bit_3,
					 enc_bit_4,
					 enc_bit_5,
					 enc_bit_6,
					 enc_bit_7,
					 enc_bit_8);
	
	input clk,rst;
	input [15:0] data_recv;

	output [1:0] enc_bit_1,
				 enc_bit_2,
				 enc_bit_3,
				 enc_bit_4,
				 enc_bit_5,
				 enc_bit_6,
				 enc_bit_7,
				 enc_bit_8;

	wire [15:0] w_data_1,
				w_data_2,
				w_data_3,
				w_data_4,
				w_data_5,
				w_data_6,
				w_data_7,
				w_data_8;

	input_fifo u_input_fifo(.clk(clk),
			   				.rst(rst),
			   				.data_rcv(data_recv),
			   				.data_out_1(w_data_1),
			   				.data_out_2(w_data_2),
			   				.data_out_3(w_data_3),
			   				.data_out_4(w_data_4),
			   				.data_out_5(w_data_5),
			   				.data_out_6(w_data_6),
			   				.data_out_7(w_data_7),
			   				.data_out_8(w_data_8));

	input_split U_input_split(.clk(clk),
							  .rst(rst),
							  .data_enc_1(w_data_1),
							  .data_enc_2(w_data_2),
							  .data_enc_3(w_data_3),
							  .data_enc_4(w_data_4),
							  .data_enc_5(w_data_5),
							  .data_enc_6(w_data_6),
							  .data_enc_7(w_data_7),
							  .data_enc_8(w_data_8),
							  .out_bit_1(enc_bit_1),
							  .out_bit_2(enc_bit_2),
							  .out_bit_3(enc_bit_3),
							  .out_bit_4(enc_bit_4),
							  .out_bit_5(enc_bit_5),
							  .out_bit_6(enc_bit_6),
							  .out_bit_7(enc_bit_7),
							  .out_bit_8(enc_bit_8));

endmodule

module input_fifo(clk,
				  rst,
				  data_rcv,
				  data_out_1,
				  data_out_2,
				  data_out_3,
				  data_out_4,
				  data_out_5,
				  data_out_6,
				  data_out_7,
				  data_out_8);

	input clk,rst;
	input [15:0] data_rcv;

	output [15:0] data_out_1,
				 data_out_2,
				 data_out_3,
				 data_out_4,
				 data_out_5,
				 data_out_6,
				 data_out_7,
				 data_out_8;

	reg [15:0] data_out_1,
			  data_out_2,
			  data_out_3,
			  data_out_4,
			  data_out_5,
			  data_out_6,
			  data_out_7,
			  data_out_8;

    reg [2:0] counter;

    always @(posedge clk or negedge rst) begin
    	if (!rst) begin
    		// reset
    		counter <= 3'b000;
    		data_out_1 <= 16'b0000000000000000;
			data_out_2 <= 16'b0000000000000000;
			data_out_3 <= 16'b0000000000000000;
			data_out_4 <= 16'b0000000000000000;
			data_out_5 <= 16'b0000000000000000;
			data_out_6 <= 16'b0000000000000000;
			data_out_7 <= 16'b0000000000000000;
			data_out_8 <= 16'b0000000000000000;
    	end
    	else begin
    		counter = counter + 1'b1;
    		case(counter)
    			3'b000:data_out_1 <= data_rcv;
    			3'b001:data_out_2 <= data_rcv;
    			3'b010:data_out_3 <= data_rcv;
    			3'b011:data_out_4 <= data_rcv;
    			3'b100:data_out_5 <= data_rcv;
    			3'b101:data_out_6 <= data_rcv;
    			3'b110:data_out_7 <= data_rcv;
    			3'b111:data_out_8 <= data_rcv;
    		endcase
    	end
    end

endmodule

module input_split(clk,
				   rst,
				   data_enc_1,
				   data_enc_2,
				   data_enc_3,
				   data_enc_4,
				   data_enc_5,
				   data_enc_6,
				   data_enc_7,
				   data_enc_8,
				   out_bit_1,
				   out_bit_2,
				   out_bit_3,
				   out_bit_4,
				   out_bit_5,
				   out_bit_6,
				   out_bit_7,
				   out_bit_8);

	input clk,rst;
	input [15:0] data_enc_1,
				 data_enc_2,
				 data_enc_3,
				 data_enc_4,
				 data_enc_5,
				 data_enc_6,
				 data_enc_7,
				 data_enc_8;

	output [1:0] out_bit_1,
				 out_bit_2,
				 out_bit_3,
				 out_bit_4,
				 out_bit_5,
				 out_bit_6,
				 out_bit_7,
				 out_bit_8;

	reg [1:0] out_bit_1,
			  out_bit_2,
		   	  out_bit_3,
		      out_bit_4,
			  out_bit_5,
			  out_bit_6,
			  out_bit_7,
			  out_bit_8;
	reg [2:0] counter;

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			counter <= 3'b000;
			out_bit_1 <= 2'b00;
			out_bit_2 <= 2'b00;
			out_bit_3 <= 2'b00;
			out_bit_4 <= 2'b00;
			out_bit_5 <= 2'b00;
			out_bit_6 <= 2'b00;
			out_bit_7 <= 2'b00;
			out_bit_8 <= 2'b00;
		end
		else begin
			counter <= counter + 1'b1;
			case(counter)
				3'b000:begin
					out_bit_1 <= data_enc_1[1:0];
					out_bit_2 <= data_enc_8[3:2];
					out_bit_3 <= data_enc_7[5:4];
					out_bit_4 <= data_enc_6[7:6];
					out_bit_5 <= data_enc_5[9:8];
					out_bit_6 <= data_enc_4[11:10];
					out_bit_7 <= data_enc_3[13:12];
					out_bit_8 <= data_enc_2[15:14];
				end
				3'b001:begin
					out_bit_1 <= data_enc_2[1:0];
					out_bit_2 <= data_enc_1[3:2];
					out_bit_3 <= data_enc_8[5:4];
					out_bit_4 <= data_enc_7[7:6];
					out_bit_5 <= data_enc_6[9:8];
					out_bit_6 <= data_enc_5[11:10];
					out_bit_7 <= data_enc_4[13:12];
					out_bit_8 <= data_enc_3[15:14];
				end
				3'b010:begin
					out_bit_1 <= data_enc_3[1:0];
					out_bit_2 <= data_enc_2[3:2];
					out_bit_3 <= data_enc_1[5:4];
					out_bit_4 <= data_enc_8[7:6];
					out_bit_5 <= data_enc_7[9:8];
					out_bit_6 <= data_enc_6[11:10];
					out_bit_7 <= data_enc_5[13:12];
					out_bit_8 <= data_enc_4[15:14];
				end
				3'b011:begin
					out_bit_1 <= data_enc_4[1:0];
					out_bit_2 <= data_enc_3[3:2];
					out_bit_3 <= data_enc_2[5:4];
					out_bit_4 <= data_enc_1[7:6];
					out_bit_5 <= data_enc_8[9:8];
					out_bit_6 <= data_enc_7[11:10];
					out_bit_7 <= data_enc_6[13:12];
					out_bit_8 <= data_enc_5[15:14];
				end
				3'b100:begin
					out_bit_1 <= data_enc_5[1:0];
					out_bit_2 <= data_enc_4[3:2];
					out_bit_3 <= data_enc_3[5:4];
					out_bit_4 <= data_enc_2[7:6];
					out_bit_5 <= data_enc_1[9:8];
					out_bit_6 <= data_enc_8[11:10];
					out_bit_7 <= data_enc_7[13:12];
					out_bit_8 <= data_enc_6[15:14];
				end
				3'b101:begin
					out_bit_1 <= data_enc_6[1:0];
					out_bit_2 <= data_enc_5[3:2];
					out_bit_3 <= data_enc_4[5:4];
					out_bit_4 <= data_enc_3[7:6];
					out_bit_5 <= data_enc_2[9:8];
					out_bit_6 <= data_enc_1[11:10];
					out_bit_7 <= data_enc_8[13:12];
					out_bit_8 <= data_enc_7[15:14];
				end
				3'b110:begin
					out_bit_1 <= data_enc_7[1:0];
					out_bit_2 <= data_enc_6[3:2];
					out_bit_3 <= data_enc_5[5:4];
					out_bit_4 <= data_enc_4[7:6];
					out_bit_5 <= data_enc_3[9:8];
					out_bit_6 <= data_enc_2[11:10];
					out_bit_7 <= data_enc_1[13:12];
					out_bit_8 <= data_enc_8[15:14];
				end
				3'b111:begin
					out_bit_1 <= data_enc_8[1:0];
					out_bit_2 <= data_enc_7[3:2];
					out_bit_3 <= data_enc_6[5:4];
					out_bit_4 <= data_enc_5[7:6];
					out_bit_5 <= data_enc_4[9:8];
					out_bit_6 <= data_enc_3[11:10];
					out_bit_7 <= data_enc_2[13:12];
					out_bit_8 <= data_enc_1[15:14];
				end
			endcase
		end
	end

endmodule