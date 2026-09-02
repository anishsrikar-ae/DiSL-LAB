module half_adder(a, b, sum, carry);
input a, b;
output sum, carry;

assign sum = a ^ b;
assign carry = a & b;
endmodule

module question3(A, B, P);
input [1:0] A;
input [1:0] B;
output [3:0] P;

wire pp1, pp2, pp3;
wire ha1_sum, ha1_carry;
wire ha2_sum, ha2_carry;


assign P[0] = A[0] & B[0];
assign pp1  = A[1] & B[0];
assign pp2  = A[0] & B[1];
assign pp3  = A[1] & B[1];

half_adder ha1(pp1, pp2, ha1_sum, ha1_carry);
assign P[1] = ha1_sum;
half_adder ha2(ha1_carry, pp3, P[2], P[3]);

endmodule
