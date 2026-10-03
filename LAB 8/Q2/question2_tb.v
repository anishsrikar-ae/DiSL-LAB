`include "question2.v"
`timescale 1ns/1ns

module question2_tb();
reg [3:0] D;
reg CLK;
wire [3:0] Q;

question2 q2(D, CLK, Q);
initial
begin
CLK = 0;
forever #20 CLK = ~CLK;
end
initial begin
#200; $finish;
end
initial begin
	$dumpfile("question2.vcd");
	$dumpvars(0, question2_tb);
	D = 14; #20;
	D = 3; #20;
	D = 9; #20;
	D = 6; #20;
	$display("Test Complete!");
end
endmodule
