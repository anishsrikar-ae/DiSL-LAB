`include "question3.v"
`timescale 1ns/1ns

module question3_tb();

question3 q3();

initial
begin
    $dumpfile("question3.vcd");
    $dumpvars(0, question3_tb);

    #10 q3.reset = 1; q3.j = 0; q3.k = 0;
    #15 q3.reset = 0; q3.j = 1; q3.k = 0;
    #15 q3.j = 0; q3.k = 1;
    #15 q3.j = 1; q3.k = 1;
    #15 q3.j = 0; q3.k = 0;
    #10 q3.reset = 1;
    #10 q3.reset = 0; q3.j = 1; q3.k = 1;
    #20;
    
    $display("Test Complete");
    $finish;
end

always #5 q3.clk = ~q3.clk;

endmodule
