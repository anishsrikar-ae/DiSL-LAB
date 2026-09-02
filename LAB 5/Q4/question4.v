module MUX2to1(f, A, B, S);
input A, B;
input S;
output f;

assign f = S ? B : A;

endmodule

module MUX8to1(f, I, S);
input [7:0] I;
input [2:0] S;
output reg f;

always @(*) begin
    case (S)
        3'b000: f = I[0];
        3'b001: f = I[1];
        3'b010: f = I[2];
        3'b011: f = I[3];
        3'b100: f = I[4];
        3'b101: f = I[5];
        3'b110: f = I[6];
        3'b111: f = I[7];
        default: f = 1'b0;
    endcase
end

endmodule

module MUX16to1(f, A, B, S);
input [7:0] A, B;
input [3:0] S;
output f;

wire w0, w1;

MUX8to1 m0 (w0, A, S[2:0]);
MUX8to1 m1 (w1, B, S[2:0]);
MUX2to1 m_final (f, w0, w1, S[3]);

endmodule
