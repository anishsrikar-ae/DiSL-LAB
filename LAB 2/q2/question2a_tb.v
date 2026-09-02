`timescale 1ns/1ns
`include "question2a.v"

module question2a_tb();

reg a, b, c, d;
wire f;

question2a q2(a, b, c, d, f);
initial
begin

	$dumpfile("question2a_tb.vcd");
	$dumpvars(0, question2a_tb);
	
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
