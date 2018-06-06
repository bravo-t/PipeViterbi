// Top module
module PipeViterbi(clk,
				   rst,
				   data_recv,
				   data_dec); 

	input clk,rst;
	input [15:0] data_recv;

	output [7:0] data_dec;

	wire [1:0] w_enc_bit_1,
			   w_enc_bit_2,
			   w_enc_bit_3,
			   w_enc_bit_4,
			   w_enc_bit_5,
			   w_enc_bit_6,
			   w_enc_bit_7,
			   w_enc_bit_8;


	wire [6:0] w_PM_1,
			   w_PM_2,
			   w_PM_3,
			   w_PM_4;


	wire [7:0] w_data_1,
			   w_data_2,
			   w_data_3,
			   w_data_4;

	input_shifter u_input_shifter(.clk(clk),
				  				  .rst(rst),
				  				  .data_recv(data_recv),
				  				  .enc_bit_1(w_enc_bit_1),
				  				  .enc_bit_2(w_enc_bit_2),
				  				  .enc_bit_3(w_enc_bit_3),
				  				  .enc_bit_4(w_enc_bit_4),
				  				  .enc_bit_5(w_enc_bit_5),
				  				  .enc_bit_6(w_enc_bit_6),
				  				  .enc_bit_7(w_enc_bit_7),
				  				  .enc_bit_8(w_enc_bit_8));
	
	ACS_matrix u_ACS_matrix(.clk(clk),
				  			.rst(rst),
				  			.data_recv_1(w_enc_bit_1),
				  			.data_recv_2(w_enc_bit_2),
				  			.data_recv_3(w_enc_bit_3),
				  			.data_recv_4(w_enc_bit_4),
				  			.data_recv_5(w_enc_bit_5),
				  			.data_recv_6(w_enc_bit_6),
				  			.data_recv_7(w_enc_bit_7),
				  			.data_recv_8(w_enc_bit_8),
				  			.data_out_1(w_data_1),
				  			.data_out_2(w_data_2),
				  			.data_out_3(w_data_3),
				  			.data_out_4(w_data_4),
				  			.PM_out_1(w_PM_1),
				  			.PM_out_2(w_PM_2),
				  			.PM_out_3(w_PM_3),
				  			.PM_out_4(w_PM_4));


	cmp_sel u_cmp_sel(.clk(clk),
					  .rst(rst),
					  .PM_1(w_PM_1),
					  .PM_2(w_PM_2),
					  .PM_3(w_PM_3),
					  .PM_4(w_PM_4),
					  .data_in_1(w_data_1),
					  .data_in_2(w_data_2),
					  .data_in_3(w_data_3),
					  .data_in_4(w_data_4),
					  .data_out(data_dec));

endmodule
