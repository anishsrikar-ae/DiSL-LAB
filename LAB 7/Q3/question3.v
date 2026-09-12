module question3;
    reg clk = 0;
    reg reset = 0;
    reg j = 0;
    reg k = 0;
    reg q = 0;

    always @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else begin
            case ({j, k})
                2'b00: q <= q;
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1;
                2'b11: q <= ~q;
            endcase
        end
    end

endmodule
