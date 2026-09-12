`include "question2.v"
`timescale 1ns/1ns

module question2_tb();

question2 q2();

initial
begin
    $dumpfile("question2.vcd");
    $dumpvars(0, question2_tb);

    #10 q2.reset_n = 0; q2.t = 0;
    #15 q2.reset_n = 1;
    #10 q2.t = 1;
    #15 q2.t = 0;
    #10 q2.t = 1;
    #20 q2.reset_n = 0;
    #10 q2.reset_n = 1;
    #20;
    
    $display("Test Complete");
    $finish;
end

always #5 q2.clk = ~q2.clk;

endmodule
