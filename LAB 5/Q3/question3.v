module MUX4to1(f, A, B, C, D, S);

input A, B, C, D;
input [1:0] S;

output f;

assign f = S[1] ? (S[0] ? A:B) : (S[0] ? C:D);

endmodule

module MUX16to1(f, A, B, C, D, S);

input [3:0] A, B, C, D, S;
output f;

wire w0, w1, w2, w3;

MUX4to1 m0 (w0, A[3], A[2], A[1], A[0], S[1:0]);
MUX4to1 m1 (w1, B[3], B[2], B[1], B[0], S[1:0]);
MUX4to1 m2 (w2, C[3], C[2], C[1], C[0], S[1:0]);
MUX4to1 m3 (w3, D[3], D[2], D[1], D[0], S[1:0]);

MUX4to1 m_final (f, w0, w1, w2, w3, S[3:2]);

endmodule
