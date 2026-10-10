module question1(E, x, CLK, Q);
    input E, x, CLK;
    output [1:0] Q;

    wire JA, KA, JB, KB;
    wire A, B;

    assign JA = E ? (x ? B : ~B) : 1'b0;
    assign KA = E ? (x ? B : ~B) : 1'b0;
    assign JB = E;
    assign KB = E;

    jk_ff ff_a(JA, KA, CLK, A);
    jk_ff ff_b(JB, KB, CLK, B);

    assign Q = {A, B};

endmodule

module jk_ff(J, K, CLK, Q);
    input J, K, CLK;
    output reg Q;

    initial Q = 1'b0;

    always @(posedge CLK) begin
        case ({J, K})
            2'b00: Q <= Q;
            2'b01: Q <= 1'b0;
            2'b10: Q <= 1'b1;
            2'b11: Q <= ~Q;
        endcase
    end
endmodule
