module question1(D, CLK, Q);
input CLK;
output [5:0] Q;
input [5:0] D;

register r1(D[0], CLK, Q[0]);
register r2(D[1], CLK, Q[1]);
register r3(D[2], CLK, Q[2]);
register r4(D[3], CLK, Q[3]);
register r5(D[4], CLK, Q[4]);
register r6(D[5], CLK, Q[5]);


endmodule

module register(D, CLK, Q);
input D, CLK;
output reg Q;

always@(posedge CLK)
Q<=D;

endmodule
