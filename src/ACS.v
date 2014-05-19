module ACS(self_state,
		   data_recv,
		   BMin1,
		   BMin2,
		   BMout);

input [1:0] self_state,data_recv;
input [6:0] BMin1,BMin2;
output [6:0] BMout;

wire [6:0] BM_cal_1,BM_cal_2;
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

assign BM_cal_1 = BMin1+ham_dist_1;
assign BM_cal_2 = BMin2+ham_dist_2;
assign BMout = (BM_cal_1>BM_cal_2)?BM_cal_2:BM_cal_1;

endmodule