`timescale 1ns/1ns
`include "question4.v"

module question4_tb();

reg a,b,c,d;
wire f;

question4 q4(a,b,c,d,f);


initial
begin

	$dumpfile("question4_tb.vcd");
	$dumpvars(0, question4_tb);
	
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
