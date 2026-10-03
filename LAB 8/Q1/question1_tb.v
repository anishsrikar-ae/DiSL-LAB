`include "question1.v"
`timescale 1ns/1ns

module question1_tb();
reg CLK;
reg [5:0] D;
wire [5:0] Q;

question1 q1(D, CLK, Q);
initial
begin
CLK = 0;
forever #20 CLK = ~CLK;
end
initial begin
#200; $finish;
end
initial begin
	$dumpfile("question1.vcd");
	$dumpvars(0, question1_tb);
	D = 42; #20;
	D = 18; #20;
	$display("Test Complete!");
end
endmodule
