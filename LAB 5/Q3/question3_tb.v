`include "question3.v"
`timescale 1ns/1ns

module question3_tb();

reg [3:0] A, B, C, D, S;
wire f;

MUX16to1 uut (f, A, B, C, D, S);

initial 
begin
	
	$dumpfile("question3.vcd");
	$dumpvars(0, question3_tb);
	
	A = 4'b1010;
	B = 4'b1100;
	C = 4'b1111;
	D = 4'b0000;

	S = 4'b0000; #20;
	S = 4'b0011; #20;
	S = 4'b0100; #20;
	S = 4'b1111; #20;
	    
end
endmodule
