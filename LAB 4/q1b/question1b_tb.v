`timescale 1ns/1ns
`include "question1b.v"

module question1b_tb();
reg a,b,carryin;
wire sum, carryout;


question1b q1(a,b,carryin,sum, carryout);
initial
begin
	$dumpfile("question1b.vcd");
	$dumpvars(0, question1b_tb);
	
	a = 1'b0; b = 1'b0; carryin = 1'b0;
	#20;
	
	a = 1'b0; b = 1'b1;carryin = 1'b0;
	#20
	
	a = 1'b1; b = 1'b0;carryin = 1'b0;
	#20
	
	a = 1'b1; b = 1'b1;carryin = 1'b0;
	#20
	
	a = 1'b0; b = 1'b0; carryin = 1'b1;
	#20;
	
	a = 1'b0; b = 1'b1;carryin = 1'b1;
	#20
	
	a = 1'b1; b = 1'b0;carryin = 1'b1;
	#20
	
	a = 1'b1; b = 1'b1;carryin = 1'b1;
	#20
	
	$display("Test Complete!");
end
endmodule
