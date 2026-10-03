module question2(D, CLK, Q);
input [3:0]D;
output reg [3:0]Q;
input CLK;

always@(posedge CLK)
Q<=D;

endmodule
