`include "question5.v"
`timescale 1ns/1ns

module question5_tb();
    reg [15:0] D;
    wire [3:0] Y;
    wire valid;

    question5 uut(D, Y, valid);

    initial begin
        $dumpfile("question5.vcd");
        $dumpvars(0, question5_tb);
        D = 16'h0001; #20;
        D = 16'h0002; #20;
        D = 16'h0080; #20;
        D = 16'h8000; #20;
        D = 16'hF0F0; #20;
        D = 16'h0000; #20;
        $display("Test Complete");
    end
endmodule
