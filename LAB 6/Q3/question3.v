module question3(W, E, Y);
    input [3:0] W;
    input E;
    output [15:0] Y;

    wire [3:0] sub_E;

    assign sub_E[0] = E & (W[3:2] == 2'b00);
    assign sub_E[1] = E & (W[3:2] == 2'b01);
    assign sub_E[2] = E & (W[3:2] == 2'b10);
    assign sub_E[3] = E & (W[3:2] == 2'b11);

    decoder2to4 d0(W[1:0], sub_E[0], Y[3:0]);
    decoder2to4 d1(W[1:0], sub_E[1], Y[7:4]);
    decoder2to4 d2(W[1:0], sub_E[2], Y[11:8]);
    decoder2to4 d3(W[1:0], sub_E[3], Y[15:12]);
endmodule

module decoder2to4(A, E, Y);
    input [1:0] A;
    input E;
    output reg [3:0] Y;

    always @(*) begin
        if (!E) begin
            Y = 4'b1111;
        end else begin
            case (A)
                2'b00: Y = 4'b1110;
                2'b01: Y = 4'b1101;
                2'b10: Y = 4'b1011;
                2'b11: Y = 4'b0111;
                default: Y = 4'b1111;
            endcase
        end
    end
endmodule
