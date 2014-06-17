module PipeViterbi_tb();

	
endmodule

module Cov_gen(clk,
			   rst,
			   )

module sierial_gen(clk,
				   rst,
				   data_gen,
				   sierial_out);
	
	input clk,rst;

	output sierial_out;
	output [7:0] data_gen;

	reg sierial_out;
	reg [2:0] counter;
	reg [7:0] data_gen;

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			counter <= 3'b000;
		end
		else begin
			case(counter)
				3'b000:begin
					data_gen <= $random;
					sierial_out <= data_gen[0];
				end
				3'b001:sierial_out <= data_gen[1];
				3'b010:sierial_out <= data_gen[2];
				3'b011:sierial_out <= data_gen[3];
				3'b100:sierial_out <= data_gen[4];
				3'b101:sierial_out <= data_gen[5];
				3'b110:sierial_out <= data_gen[6];
				3'b111:sierial_out <= data_gen[7];
			endcase
			counter = counter + 1'b1;
		end
	end

endmodule

module enc_paralleler(clk,
					  rst,
					  data_in,
					  para_out);

	input clk,rst;
	input [1:0] data_in;

	output [15:0] para_out;

	reg [2:0] counter;
	reg [15:0] shifter;
	reg [15:0] para_out;

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			counter <= 3'b000;
		end
		else begin
			case(counter)
				3'b000:begin
					shifter[0] <= data_in[0];
					shifter[1] <= data_in[1];
				end
				3'b001:begin
					shifter[2] <= data_in[0];
					shifter[3] <= data_in[1];
				end
				3'b010:begin
					shifter[4] <= data_in[0];
					shifter[5] <= data_in[1];
				end
				3'b011:begin
					shifter[6] <= data_in[0];
					shifter[7] <= data_in[1];
				end
				3'b100:begin
					shifter[8] <= data_in[0];
					shifter[9] <= data_in[1];
				end
				3'b101:begin
					shifter[10] <= data_in[0];
					shifter[11] <= data_in[1];
				end
				3'b110:begin
					shifter[12] <= data_in[0];
					shifter[13] <= data_in[1];
				end
				3'b111:begin
					shifter[14] <= data_in[0];
					shifter[15] <= data_in[1];
					para_out[15:0] <= shifter[15:0];
				end
			endcase
		end
	end

endmodule

module clk_gen(clk);
	 output clk;
	 reg clk;

	 always begin
	 	clk = 0;
	 	forever #1 clk = ~clk;
	 end

endmodule

module clk_div(clk,
			   rst,
			   clk_div);

	input clk,rst;
	output clk_div;
	
	reg [2:0] counter;

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			counter <= 3'b000;
		end
		else begin
			counter = counter + 1;
		end
	end

	assign clk_div = (counter == 3'b111);

endmodule