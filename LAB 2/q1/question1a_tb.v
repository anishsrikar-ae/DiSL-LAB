`timescale 1ns/1ns
`include "question1a.v"

module question1a_tb();

reg a, b, c, d;
wire f;

question1a q1(a, b, c, d, f);
initial
begin

	$dumpfile("question1a_tb.vcd");
	$dumpvars(0, question1a_tb);
	
	a = 1'b0;b=1'b0;c=1'b0;d=1'b0;
	#20
	
	a = 1'b0;b=1'b0;c=1'b0;d=1'b1;
	#20
	
	a = 1'b0;b=1'b0;c=1'b1;d=1'b0;
	#20
	
	a = 1'b0;b=1'b0;c=1'b1;d=1'b1;
	#20
	
	a = 1'b0;b=1'b1;c=1'b0;d=1'b0;
	#20
	
	a = 1'b0;b=1'b1;c=1'b0;d=1'b1;
	#20
	
	a = 1'b0;b=1'b1;c=1'b1;d=1'b0;
	#20
	
	a = 1'b0;b=1'b1;c=1'b1;d=1'b1;
	#20
	
	a = 1'b1;b=1'b0;c=1'b0;d=1'b0;
	#20
	
	a = 1'b1;b=1'b0;c=1'b0;d=1'b1;
	#20
	
	a = 1'b1;b=1'b0;c=1'b1;d=1'b0;
	#20
	
	a = 1'b1;b=1'b0;c=1'b1;d=1'b1;
	#20
	
	a = 1'b1;b=1'b1;c=1'b0;d=1'b0;
	#20
	
	a = 1'b1;b=1'b1;c=1'b0;d=1'b1;
	#20
	
	a = 1'b1;b=1'b1;c=1'b1;d=1'b0;
	#20
	
	a = 1'b1;b=1'b1;c=1'b1;d=1'b1;
	#20
	
	$display("Test complete");
end
endmodule
