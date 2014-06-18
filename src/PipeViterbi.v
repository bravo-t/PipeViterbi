// Top module
module PipeViterbi(clk,
				   rst,
				   input_valid,
				   data_recv,
				   data_dec); 

	input clk,rst,input_valid;
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

	wire [2:0] w_data_id;

	wire [6:0] w_PM_1,
			   w_PM_2,
			   w_PM_3,
			   w_PM_4;

	wire [14:0] w_bus_sig_1,
				w_bus_sig_2,
				w_bus_sig_3,
				w_bus_sig_4,
				w_bus_sig_5,
				w_bus_sig_6,
				w_bus_sig_7,
				w_bus_sig_8;

	wire [31:0] w_data;

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

	data_id_gen u_data_id_gen(.clk(clk),
				   			  .rst(rst),
				   			  .data_id(w_data_id));

	ACS_matrix u_ACS_matrix(.clk(clk),
				  			.rst(rst),
				  			.data_id(w_data_id),
				  			.input_valid(input_valid),
				  			.data_recv_1(w_enc_bit_1),
				  			.data_recv_2(w_enc_bit_2),
				  			.data_recv_3(w_enc_bit_3),
				  			.data_recv_4(w_enc_bit_4),
				  			.data_recv_5(w_enc_bit_5),
				  			.data_recv_6(w_enc_bit_6),
				  			.data_recv_7(w_enc_bit_7),
				  			.data_recv_8(w_enc_bit_8),
				  			.bus_sig_1(w_bus_sig_1),
				  			.bus_sig_2(w_bus_sig_2),
				  			.bus_sig_3(w_bus_sig_3),
				  			.bus_sig_4(w_bus_sig_4),
				  			.bus_sig_5(w_bus_sig_5),
				  			.bus_sig_6(w_bus_sig_6),
				  			.bus_sig_7(w_bus_sig_7),
				  			.bus_sig_8(w_bus_sig_8),
				  			.PM_8_1(w_PM_1),
				  			.PM_8_2(w_PM_2),
				  			.PM_8_3(w_PM_3),
				  			.PM_8_4(w_PM_4));

	shift_mem u_shift_mem(.clk(clk),
				 		  .rst(rst),
				 		  .bus_sig_1(w_bus_sig_1),
				 		  .bus_sig_2(w_bus_sig_2),
				 		  .bus_sig_3(w_bus_sig_3),
				 		  .bus_sig_4(w_bus_sig_4),
				 		  .bus_sig_5(w_bus_sig_5),
				 		  .bus_sig_6(w_bus_sig_6),
				 		  .bus_sig_7(w_bus_sig_7),
				 		  .bus_sig_8(w_bus_sig_8),
				 		  .data_out(w_data));

	cmp_sel u_cmp_sel(.clk(clk),
					  .rst(rst),
					  .PM_1(w_PM_1),
					  .PM_2(w_PM_2),
					  .PM_3(w_PM_3),
					  .PM_4(w_PM_4),
					  .data_in(w_data),
					  .data_out(data_dec));

endmodule