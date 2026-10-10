`include "question1.v"
`timescale 1ns/1ns

module question1_tb();
    reg CLK;
    reg E;
    reg x;
    wire [1:0] Q;

    question1 q1(E, x, CLK, Q);

    initial begin
        CLK = 0;
        forever #20 CLK = ~CLK;
    end

    initial begin
        #300; 
        $finish;
    end

    initial begin
        $dumpfile("question1.vcd");
        $dumpvars(0, question1_tb);
        
        E = 0; x = 0; #40;
        
        E = 1; x = 1; #100; 
        
        E = 1; x = 0; #100; 
        
        E = 0; x = 1; #40;
        
        $display("Test Complete!");
    end

endmodule
