`include "question1.v"
`timescale 1ns/1ns

module question1_tb();

reg a, b;

wire sum, carry;


question1 q1(a,b,sum,carry);
initial
begin
	$dumpfile("question1.vcd");
	$dumpvars(0, question1_tb);
	
	a = 1'b0; b = 1'b0;
	#20;
	
	a = 1'b0; b = 1'b1;
	#20
	
	a = 1'b1; b = 1'b0;
	#20
	
	a = 1'b1; b = 1'b1;
	#20

	$display("Test Complete!");
end
endmodule
