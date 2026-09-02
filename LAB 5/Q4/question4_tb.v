`include "question4.v"
`timescale 1ns/1ns

module question4_tb();

reg [7:0] A, B;
reg [3:0] S;
wire f;

MUX16to1 uut (f, A, B, S);

initial 
begin
	$dumpfile("question4.vcd");
	$dumpvars(0, question4_tb);
	
	A = 8'b10101010;
	B = 8'b11001100;

	S = 4'b0000; #20;
	S = 4'b0011; #20;
	S = 4'b0111; #20;
	S = 4'b1000; #20;
	S = 4'b1011; #20;
	S = 4'b1111; #20; 

    $finish;
end

endmodule
