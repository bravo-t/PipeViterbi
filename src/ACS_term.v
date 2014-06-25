module ACS(self_state,
		   //input_sig,
		   data_recv,
		   addr_in_1,
		   term_1,
		   addr_in_2,
		   term_2,
		   PMin1,
		   PMin2,
		   PMout,
		   term_out,
		   addr_out,
		   //data_rdy,
		   dec_out);

//	input input_sig;
	input term_1,term_2;
	input [1:0] self_state,data_recv,addr_in_1,addr_in_2;
	input [6:0] PMin1,PMin2;
	output dec_out,term_out;
	output [1:0] addr_out;
	output [6:0] PMout;

	reg [6:0] PM_cal_1,PM_cal_2;
	reg [6:0] term_cal_1,term_cal_2;
	reg [6:0] PMout;
	wire [1:0] ham_dist_1,ham_dist_2;
	reg [1:0] path_id_1,path_id_2;
	reg [1:0] addr_out;
	reg dec_out,term_out;


	always @(*)
	begin
		case(self_state)
			2'b00:begin
				path_id_1=2'b00;
				path_id_2=2'b11;
				dec_out=0;
			end
			2'b01:begin
				path_id_1=2'b10;
				path_id_2=2'b01;
				dec_out=0;
			end
			2'b10:begin
				path_id_1=2'b11;
				path_id_2=2'b00;
				dec_out=1;
			end
			2'b11:begin
				path_id_1=2'b01;
				path_id_2=2'b10;
				dec_out=1;
			end
		endcase
		case({term_2,term_1})
			2'b00:begin
				PM_cal_1 = PMin1+ham_dist_1;
				PM_cal_2 = PMin2+ham_dist_2;
				if(PM_cal_1<PM_cal_2) begin
					PMout = PM_cal_1;
					addr_out = addr_in_1;
				end
				else if(PM_cal_1>PM_cal_2) begin
					PMout = PM_cal_2;
					addr_out = addr_in_2;
				end
				else begin
					if(ham_dist_1<ham_dist_2) begin
						PMout = PM_cal_1;
						addr_out = addr_in_1;
					end
					else begin
						PMout = PM_cal_2;
						addr_out = addr_in_2;
					end
				end
				term_cal_1 = PMin1+ham_dist_2;
				term_cal_2 = PMin2+ham_dist_1;
				if(term_cal_1<PM_cal_1 &&term_cal_2<PM_cal_2)
					term_out = 1;
			end
			2'b01:begin
				PMout = PMin2 + ham_dist_2;
				term_out = 0;
			end
			2'b10:begin
				PMout = PMin1 + ham_dist_1;
				term_out = 0;
			end
			2'b11:begin
				term_out = 1;
				PMout = 7'bxxxxxxx;
			end
		endcase

	end

	ham_compute u_ham_com_1(.data_recv(data_recv),.path_id(path_id_1),.ham_dist(ham_dist_1));
	ham_compute u_ham_com_2(.data_recv(data_recv),.path_id(path_id_2),.ham_dist(ham_dist_2));

endmodule