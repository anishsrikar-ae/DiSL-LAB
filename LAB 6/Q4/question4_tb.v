`include "question4.v"
`timescale 1ns/1ns

module question4_tb();
    reg [3:0] D;
    wire [1:0] Y;
    wire valid;

    integer i;
    question4 uut(D, Y, valid);

    initial begin
        $dumpfile("question4.vcd");
        $dumpvars(0, question4_tb);
        for (i = 0; i <= 15; i = i + 1) begin
            D = i;
            #20;
        end
        $display("Test Complete");
    end
endmodule
