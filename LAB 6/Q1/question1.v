module question1(W, E, Y);

input [2:0] W;
input E;
output [0:7] Y;

wire [0:7] Y1, Y2;

dec2to4 d1(W, E, Y1);
dec2to4 d2(W, ~E, Y2);

assign Y = Y1 | Y2;

endmodule


module dec2to4(W, E, Y);
input [2:0] W;
input E;
output reg [0:7] Y;
integer k;

always @(*) begin
for (k = 0; k <= 3; k = k + 1) begin
if (E) begin
Y[k]   = (W[1:0] == k);
Y[k+4] = 1'b0;
end else begin
Y[k]   = 1'b0;
Y[k+4] = (W[1:0] == k);
end
end
end
endmodule
