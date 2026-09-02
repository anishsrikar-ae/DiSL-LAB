`timescale 1ns/1ns
`include "question2.v"

module question2_tb();

reg [3:0] x;
reg [3:0] y;
reg control;
wire [3:0] sum;
wire [3:0] carryout;

integer i, j, k;
question2 q2(x, y, sum, carryout, control);
initial
begin

	$dumpfile("question2.vcd");
	$dumpvars(0, question2_tb);
	for (k = 0; k < 2; k = k + 1) begin
	    for (i = 0; i < 16; i = i + 1) begin
		for (j = 0; j < 16; j = j + 1) begin
			x = i;
			y = j;
			control = k;
			#20;
		    end
		end
	    end	
	
	
	$display("Test Complete!");
	
end
endmodule
