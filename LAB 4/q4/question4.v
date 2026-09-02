module adder_4bit(a, b, cin, sum, cout);
input [3:0] a, b;
input cin;
output [3:0] sum;
output cout;

assign {cout, sum} = a + b + cin;
endmodule


module question4(A, B, Cin, S, Cout);
input [3:0] A, B;
input Cin;
output [3:0] S;
output Cout;

wire [3:0] sum1;
wire cout1;
wire [3:0] correction;
wire needs_correction;


adder_4bit add1(A, B, Cin, sum1, cout1);
assign needs_correction = cout1 | (sum1[3] & (sum1[2] | sum1[1]));
assign Cout = needs_correction;
assign correction = {1'b0, needs_correction, needs_correction, 1'b0};
adder_4bit add2(sum1, correction, 1'b0, S, );

endmodule
