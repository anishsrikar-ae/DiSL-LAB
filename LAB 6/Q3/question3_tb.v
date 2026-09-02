`include "question3.v"
`timescale 1ns/1ns

module question3_tb();
    reg [3:0] W;
    reg E;
    wire [15:0] Y;

    integer i, j;
    question3 uut(W, E, Y);

    initial begin
        $dumpfile("question3.vcd");
        $dumpvars(0, question3_tb);
        for (i = 0; i <= 1; i = i + 1) begin
            for (j = 0; j <= 15; j = j + 1) begin
                E = i;
                W = j;
                #20;
            end
        end
        $display("Test Complete");
    end
endmodule
