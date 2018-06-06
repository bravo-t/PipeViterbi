module ACS_mem(rst,
			   clk,
			   self_state,
			   data_recv,
			   PM_in_1,
			   PM_in_2,
			   data_in_1,
			   data_in_2,
			   PM_out,
			   data_out);

	input rst,clk;
	input [1:0] self_state,data_recv;
	input [6:0] PM_in_1,PM_in_2;
	input [7:0] data_in_1,data_in_2;
	output [6:0] PM_out;
	output [7:0] data_out;

	wire w_select,w_dec_out;
	wire [6:0] w_PM;
	wire [7:0] w_data_out,w_data_1,w_data_2;

	ACS u_ACS(.clk(clk),
			  .rst(rst),
			  .self_state(self_state),
			  .data_recv(data_recv),
			  .PMin1(PM_in_1),
			  .PMin2(PM_in_2),
			  .data_in_1(data_in_1),
			  .data_in_2(data_in_2),
			  .PMout(w_PM),
			  .select(w_select),
			  .data_out_1(w_data_1),
			  .data_out_2(w_data_2),
			  .dec_out(w_dec_out));

	app_men u_app_mem(.dec_in(w_dec_out),
			   		  .data_in_1(w_data_1),
			   		  .data_in_2(w_data_2),
			   		  .select_in(w_select),
			   		  .data_out(w_data_out));

	MEM u_MEM(.rst(rst),
		   	  .clk(clk),
		   	  .PM_in(w_PM),
		   	  .data_in(w_data_out),
		   	  .PM_out(PM_out),
		   	  .data_out(data_out));

endmodule

module ACS(clk,
		   rst,
		   self_state,
		   data_recv,
		   PMin1,
		   PMin2,
		   data_in_1,
		   data_in_2,
		   PMout,
		   data_out_1,
		   data_out_2,
		   select,		//PMout = select ? PMin2 : PMin1;
		   dec_out);

	input rst,clk;
	input [1:0] self_state,data_recv;
	input [6:0] PMin1,PMin2;
	input [7:0] data_in_1,data_in_2;
	output dec_out,select;
	output [6:0] PMout;
	output [7:0] data_out_1,data_out_2;

	wire [6:0] PM_cal_1,PM_cal_2;
	reg [7:0] data_out_1,data_out_2;
	wire [1:0] ham_dist_1,ham_dist_2;
	reg [1:0] path_id_1,path_id_2;
	reg dec_out,select;


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
		if(PM_cal_1<PM_cal_2) begin
			select = 0;
		end
		else if(PM_cal_1>PM_cal_2) begin
			select = 1;
		end
		else begin
			if(ham_dist_1<ham_dist_2) begin
				select = 0;
			end
			else begin
				select = 1;
			end
		end
	end

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			data_out_1 <= 8'b0;
			data_out_2 <= 8'b0;
		end
		else begin
			data_out_1 <= data_in_1;
			data_out_2 <= data_in_2;
		end
	end

	assign PMout = select ? PM_cal_2 : PM_cal_1;

	PM_calc u_PM_calc_1(.clk(clk),
						.rst(rst),
			   			.PM_in(PMin1),
			   			.data_recv(data_recv),
			   			.path_id(path_id_1),
			   			.PM_out(PM_cal_1));
	PM_calc u_PM_calc_2(.clk(clk),
						.rst(rst),
			   			.PM_in(PMin2),
			   			.data_recv(data_recv),
			   			.path_id(path_id_2),
			   			.PM_out(PM_cal_2));

endmodule

module app_men(dec_in,
			   data_in_1,
			   data_in_2,
			   select_in,
			   data_out);

	input dec_in,select_in;
	input [7:0] data_in_1,data_in_2;
	output [7:0] data_out;

	reg [7:0] data_append;

	always @(select_in or data_in_1[7:0] or data_in_2[7:0] or dec_in) begin
		if (select_in == 0) begin
			data_append[7] = data_in_1[6];
			data_append[6] = data_in_1[5];
			data_append[5] = data_in_1[4];
			data_append[4] = data_in_1[3];
			data_append[3] = data_in_1[2];
			data_append[2] = data_in_1[1];
			data_append[1] = data_in_1[0];
		end
		else begin
			data_append[7] = data_in_2[6];
			data_append[6] = data_in_2[5];
			data_append[5] = data_in_2[4];
			data_append[4] = data_in_2[3];
			data_append[3] = data_in_2[2];
			data_append[2] = data_in_2[1];
			data_append[1] = data_in_2[0];
		end
		data_append[0] = dec_in;
	end

	assign data_out = data_append;

endmodule

module MEM(rst,
		   clk,
		   PM_in,
		   data_in,
		   PM_out,
		   data_out);

	input clk,rst;
	input [6:0] PM_in;
	input [7:0] data_in;
	output [6:0] PM_out;
	output [7:0] data_out;

	reg [6:0] PM_out;
	reg [7:0] data_out;

	always @(posedge clk or negedge rst) begin
		if (!rst) begin
			// reset
			PM_out <= 7'b0;
			data_out <= 8'b0;
		end
		else
		begin
			if(PM_out[6] != PM_in[6])
				PM_out[6] <= PM_in[6];
			if(PM_out[5] != PM_in[5])
				PM_out[5] <= PM_in[5];
			if(PM_out[4] != PM_in[4])
				PM_out[4] <= PM_in[4];
			if(PM_out[3] != PM_in[3])
				PM_out[3] <= PM_in[3];
			if(PM_out[2] != PM_in[2])
				PM_out[2] <= PM_in[2];
			if(PM_out[1] != PM_in[1])
				PM_out[1] <= PM_in[1];
			if(PM_out[0] != PM_in[0])
				PM_out[0] <= PM_in[0];
			if(data_out[7] != data_in[7])
				data_out[7] <= data_in[7];
			if(data_out[6] != data_in[6])
				data_out[6] <= data_in[6];
			if(data_out[5] != data_in[5])
				data_out[5] <= data_in[5];
			if(data_out[4] != data_in[4])
				data_out[4] <= data_in[4];
			if(data_out[3] != data_in[3])
				data_out[3] <= data_in[3];
			if(data_out[2] != data_in[2])
				data_out[2] <= data_in[2];
			if(data_out[1] != data_in[1])
				data_out[1] <= data_in[1];
			if(data_out[0] != data_in[0])
				data_out[0] <= data_in[0];
		end
	end

endmodule
