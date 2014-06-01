module ACS(self_state,
		   data_recv,
		   PMin1,
		   PMin2,
		   PMout);

input [1:0] self_state,data_recv;
input [6:0] PMin1,PMin2;
output [6:0] PMout;

wire [6:0] PM_cal_1,PM_cal_2;
wire [1:0] ham_dist_1,ham_dist_2;
reg [1:0] path_id_1,path_id_2;

always @(*)
begin
	case(self_state)
	2'b00:begin
		path_id_1=2'b00;
		path_id_2=2'b11;
	end
	2'b01:begin
		path_id_1=2'b10;
		path_id_2=2'b01;
	end
	2'b10:begin
		path_id_1=2'b11;
		path_id_2=2'b00;
	end
	2'b11:begin
		path_id_1=2'b01;
		path_id_2=2'b10;
	end
	endcase
end

ham_compute u_ham_com_1(.data_recv(data_recv),.path_id(path_id_1),.ham_dist(ham_dist_1));
ham_compute u_ham_com_2(.data_recv(data_recv),.path_id(path_id_2),.ham_dist(ham_dist_2));

assign PM_cal_1 = PMin1+ham_dist_1;
assign PM_cal_2 = PMin2+ham_dist_2;
assign PMout = (PM_cal_1>PM_cal_2)?PM_cal_2:PM_cal_1;

endmodule