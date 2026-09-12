module question1;
    reg clk = 0;
    reg reset = 0;
    reg d = 0;
    reg q = 0;

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
