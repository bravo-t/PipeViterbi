// Top module
module PipeViterbi(clk,
				   rst,
				   data_rcv,
				   data_dec); 

	input clk,rst;
	input [15:0] data_recv;

	output [7:0] data_dec;

	input_shifter u_input_shifter(clk,
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

	ACS_matrix u_ACS_matrix(clk,
				  rst,
				  data_id,
				  input_valid,
				  data_recv_1,
				  data_recv_2,
				  data_recv_3,
				  data_recv_4,
				  data_recv_5,
				  data_recv_6,
				  data_recv_7,
				  data_recv_8,
				  bus_sig_1,
				  bus_sig_2,
				  bus_sig_3,
				  bus_sig_4,
				  bus_sig_5,
				  bus_sig_6,
				  bus_sig_7,
				  bus_sig_8,
				  PM_8_1,
				  PM_8_2,
				  PM_8_3,
				  PM_8_4);

	shift_mem u_shift_mem(clk,
				 rst,
				 bus_sig_1,
				 bus_sig_2,
				 bus_sig_3,
				 bus_sig_4,
				 bus_sig_5,
				 bus_sig_6,
				 bus_sig_7,
				 bus_sig_8,
				 data_out);

	cmp_sel u_cmp_sel(clk,
				rst,
				PM_1,
				PM_2,
				PM_3,
				PM_4,
				data_in,
				data_out);

endmodule