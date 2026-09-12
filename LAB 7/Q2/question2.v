module question2;
    reg clk = 0;
    reg reset_n = 1;
    reg t = 0;
    reg q = 0;

    always @(negedge clk or negedge reset_n) begin
        if (!reset_n)
            q <= 1'b0;
        else if (t)
            q <= ~q;
    end

endmodule
