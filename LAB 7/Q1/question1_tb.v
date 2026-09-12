`include "question1.v"
`timescale 1ns/1ns

module question1_tb();

question1 q1();

initial
begin
    $dumpfile("question1.vcd");
    $dumpvars(0, question1_tb);

    #10 q1.reset = 1; q1.d = 0;
    #15 q1.reset = 0;
    #10 q1.d = 1;
    #15 q1.d = 0;
    #10 q1.d = 1;
    #20;
    
    $display("Test Complete");
    $finish;
end

always #5 q1.clk = ~q1.clk;

endmodule
