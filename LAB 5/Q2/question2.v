module question2(A, B, C, D, S, out);

input A, B, C, D;
input [1:0] S;

output out;

MUX4to1 x(out, A, B, C, D, S);

endmodule


module MUX4to1(f, A, B, C, D, S);

input A, B, C, D;
input [1:0] S;

output f;
wire x, y;

MUX2to1 a(x, A, B, S[0]);
MUX2to1 b(y, C, D, S[0]);
MUX2to1 c(f, x, y, S[1]);

endmodule

module MUX2to1(f, A, B, S);

input A, B, S;
output reg f;
always @(*)
begin
    if(S == 0)
    begin
        f = A;
    end
    else
    begin
        f = B;
    end
end

endmodule
