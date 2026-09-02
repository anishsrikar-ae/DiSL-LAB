`timescale 1ns/1ns
`include "question2.v"

module question2_tb();
reg A, B, C, D;
reg [1:0] S;

wire out;

integer i;

question2 q2(A, B, C, D, S, out);
initial
begin
	$dumpfile("question2.vcd");
	$dumpvars(0, question2_tb);

    	{A, B, C, D, S} = 6'b0;
    	for (i = 0; i < 64; i = i + 1) begin
		{A, B, C, D, S} = i;
		#20;
    	end

end
endmodule
