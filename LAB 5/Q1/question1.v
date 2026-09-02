module question1(A, B, I, AltB, AeqB, AgtB);
input [3:0] A, B;

output [3:0] I;
output AeqB, AltB, AgtB;

compare bit1(A[0], B[0], I[0]);
compare bit2(A[1], B[1], I[1]);
compare bit3(A[2], B[2], I[2]);
compare bit4(A[3], B[3], I[3]);

assign AeqB = I[0]&I[1]&I[2]&I[3];

assign AgtB =  (A[3] & ~B[3]) | (I[3] & A[2] & ~B[2]) | (I[3] & I[2] & A[1] & ~B[1])| (I[3] & I[2] & I[1] & A[0] & ~B[0]);

assign AltB = ~(AeqB | AgtB);

endmodule


module compare(a, b, i);
input a, b;
output i;

assign i = (a ~^b);

endmodule
