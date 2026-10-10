module question2(x, CLK, Q);
    input x, CLK;
    output [1:0] Q;

    wire T1, T0;
    wire Q1, Q0;

    assign T1 = (~Q1 & Q0) | (Q0 & ~x);
    assign T0 = (~Q0 & ~x) | (Q1 & ~x) | (~Q1 & Q0 & x);

    t_ff ff_1(T1, CLK, Q1);
    t_ff ff_0(T0, CLK, Q0);

    assign Q = {Q1, Q0};

endmodule

module t_ff(T, CLK, Q);
    input T, CLK;
    output reg Q;

    initial Q = 1'b0;

    always @(posedge CLK) begin
        if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end
endmodule
