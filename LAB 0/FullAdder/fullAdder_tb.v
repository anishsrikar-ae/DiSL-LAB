`timescale 1ns/1ns
`include "fullAdder.v"

module fullAdder_tb();
reg a, b, cin;
wire s, cout;

fullAdder fa(a, b, cin, s, cout);
initial
begin

	$dumpfile("fullAdder_tb.vcd");
	$dumpvars(0, fullAdder_tb);
	
	a=1'b0;b=1'b0;cin=1'b0;
	#20;
	
	a=1'b0;b=1'b0;cin=1'b1;
	#20;
	
	a=1'b0;b=1'b1;cin=1'b0;
	#20;
	
	a=1'b0;b=1'b1;cin=1'b1;
	#20;
	
	a=1'b1;b=1'b0;cin=1'b0;
	#20;
	
	a=1'b1;b=1'b0;cin=1'b1;
	#20;
	
	a=1'b1;b=1'b1;cin=1'b0;
	#20;
	
	a=1'b1;b=1'b1;cin=1'b1;
	#20;
	
end
endmodule
