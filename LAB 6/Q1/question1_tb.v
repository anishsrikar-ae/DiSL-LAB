`include "question1.v"
`timescale 1ns/1ns

module question1_tb();
reg [2:0]W;
reg E;
wire [0:7] Y;

integer i,j;
question1 q1(W, E, Y);
initial
begin
	$dumpfile("question1.vcd");
	$dumpvars(0, question1_tb);
	for(i=0;i<=1;i=i+1) begin
		for(j=0;j<=7;j=j+1) begin
			W=j;E=i;
			#20;
		end
	end
	$display("Test Complete");
end
endmodule
