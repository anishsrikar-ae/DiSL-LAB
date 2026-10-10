`include "question2.v"
`timescale 1ns/1ns

module question2_tb();
    reg CLK;
    reg x;
    wire [1:0] Q;

    question2 q2(x, CLK, Q);

    initial begin
        CLK = 0;
        forever #20 CLK = ~CLK;
    end

    initial begin
        #300; 
        $finish;
    end

    initial begin
        $dumpfile("question2.vcd");
        $dumpvars(0, question2_tb);
        
        x = 0; #60;
        x = 1; #80;
        x = 0; #80;
        x = 1; #60;
        
        $display("Test Complete!");
    end

endmodule
