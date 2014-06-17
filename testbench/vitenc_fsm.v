//==================================================================================================
//  Filename      : vitenc_fsm.v
//  Created On    : 2014-02-23 16:01:25
//  Last Modified : 2014-02-23 16:34:00
//  Revision      : 
//
//  Description   : finite state machine model of a viterbi encoder
//
//
//==================================================================================================
module vitenc_fsm(/*autoport*/
//output
			vitenc,
//input
			datain,
			clk);
	input datain;
	input clk;
	output [1:0]vitenc;
	reg [1:0]vitenc;
	reg [1:0]state;
	initial
	begin
		state=2'b00;
		vitenc=2'b00;
	end
	always @(posedge clk ) begin
		case(state)
		2'b00:
		begin
			state<=datain?2'b10:2'b00;
			vitenc<=datain?2'b11:2'b00;
		end
		2'b01:
		begin
			state<=datain?2'b10:2'b00;
			vitenc<=datain?2'b00:2'b11;
		end
		2'b10:
		begin
			state<=datain?2'b11:2'b01;
			vitenc<=datain?2'b01:2'b10;
		end
		2'b11:
		begin
			state<=datain?2'b11:2'b01;
			vitenc<=datain?2'b10:2'b01;
		end
		default:state<=2'b00; //should never happen
		endcase
	end
endmodule