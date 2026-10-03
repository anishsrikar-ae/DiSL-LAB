`include "question3.v"
`timescale 1ns/1ns

module question3_tb();
reg CLK;
reg reset;
wire [4:0] Q;

question3 q3(CLK, reset, Q);
initial begin
CLK = 0;
forever #20 CLK = ~CLK;
end
initial begin
#200; $finish;
end
initial begin
	$dumpfile("question3.vcd");
	$dumpvars(0, question3_tb);
	reset = 1; 
        #45;reset = 0; 
        #100;
        reset = 1; 
        #20;
        reset = 0;
        #35;
	$display("Test Complete!");
end
endmodule
