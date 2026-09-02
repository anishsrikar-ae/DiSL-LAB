`timescale 1ns/1ns
`include "question1.v"

module question1_tb();

reg [3:0] A, B;

wire [3:0] I;
wire AeqB, AltB, AgtB;

integer i,j;

question1 q1(A, B, I, AltB, AeqB, AgtB);
initial
begin
	$dumpfile("question1.vcd");
	$dumpvars(0, question1_tb);

	for(i=0;i<4;i=i+1) begin
		for(j=0; j<4; j=j+1) begin
			A = i;
			B = j;
			#20;			
		end
	end
end
endmodule
