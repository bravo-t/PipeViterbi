// Chip top with IO pad

// IO module used in this design:
// module PDC0204CDG_18 (I,DS,OEN,PAD,C,PS,PE,IE);
// when IE = 1'b1, data flow PAD -> C;
// when OEN = 1'b0, data flow I -> PAD;
// DS = 1'b1, PS = 1'b0, PE = 1'b0;

module chip(clk_PAD,
			rst_PAD,
			data_recv_PAD,
			data_dec_PAD);
	
	input clk_PAD,rst_PAD;
	input [15:0] data_recv_PAD;
	output [7:0] data_dec_PAD;

	wire io_clk,io_rst;
	wire [15:0] io_data_recv;
	wire [7:0] io_data_dec;

	PDC0204CDG_18 PAD1  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(clk_PAD),.C(io_clk),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD2  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(rst_PAD),.C(io_rst),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD3  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[0]),.C(io_data_recv[0]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD4  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[1]),.C(io_data_recv[1]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD5  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[2]),.C(io_data_recv[2]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD6  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[3]),.C(io_data_recv[3]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD7  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[4]),.C(io_data_recv[4]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD8  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[5]),.C(io_data_recv[5]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD9  (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[6]),.C(io_data_recv[6]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD10 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[7]),.C(io_data_recv[7]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD11 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[8]),.C(io_data_recv[8]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD12 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[9]),.C(io_data_recv[9]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD13 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[10]),.C(io_data_recv[10]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD14 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[11]),.C(io_data_recv[11]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD15 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[12]),.C(io_data_recv[12]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD16 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[13]),.C(io_data_recv[13]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD17 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[14]),.C(io_data_recv[14]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD18 (.I(1'b0),.DS(1'b1),.OEN(1'b1),.PAD(data_recv_PAD[15]),.C(io_data_recv[15]),.PS(1'b0),.PE(1'b0),.IE(1'b1));
	PDC0204CDG_18 PAD19 (.I(io_data_dec[0]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[0]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD20 (.I(io_data_dec[1]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[1]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD21 (.I(io_data_dec[2]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[2]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD22 (.I(io_data_dec[3]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[3]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD23 (.I(io_data_dec[4]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[4]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD24 (.I(io_data_dec[5]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[5]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD25 (.I(io_data_dec[6]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[6]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));
	PDC0204CDG_18 PAD26 (.I(io_data_dec[7]),.DS(1'b1),.OEN(1'b0),.PAD(data_dec_PAD[7]),.C(1'b0),.PS(1'b0),.PE(1'b0),.IE(1'b0));

	PVDD1CDG_18 VDD1();
	PVDD1CDG_18 VDD2();
	PVDD1CDG_18 VDD3();
	PVDD1CDG_18 VDD4();
	PVSS1CDG_18 VSS1();
	PVSS1CDG_18 VSS2();
	PVSS1CDG_18 VSS3();
	PVSS1CDG_18 VSS4();

	PCORNERG_18 cornerll();
	PCORNERG_18 cornerlr();
	PCORNERG_18 cornerul();
	PCORNERG_18 cornerru();

	PipeViterbi(.clk(io_clk),.rst(.io_rst),.data_recv(io_data_recv),.data_dec(io_data_dec)); 



endmodule

module PVDD1CDG_18 (VDD);
    inout   VDD;
    supply1 VDD;
endmodule

module PVSS1CDG_18 (VSS);
    inout   VSS;
    supply0 VSS;
endmodule

module PDC0204CDG_18 (I,DS,OEN,PAD,C,PS,PE,IE);
   input I,DS,OEN,PS,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den;
initial begin
  pull_uen = 0;
  pull_den = 0;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule

module PCORNERG_18();
endmodule