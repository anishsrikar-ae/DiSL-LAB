module question2(W, E, Y);

input [3:0] W;
input E;
output [0:15] Y;

wire [0:15] Y1, Y2;

dec3to8 d1(W, E, Y1);
dec3to8 d2(W, ~E, Y2);

assign Y = Y1 | Y2;

endmodule


module dec3to8(W, E, Y);
input [3:0] W;
input E;
output reg [0:15] Y;
integer k;

always @(*) begin
for (k = 0; k <= 7; k = k + 1) begin
if (E) begin
Y[k]   = (W[1:0] == k);
Y[k+8] = 1'b0;
end else begin
Y[k]   = 1'b0;
Y[k+8] = (W[1:0] == k);
end
end
end
endmodule
