`timescale 1ns/1ns
`include "question3.v"

module question3_tb();
reg [1:0] A;
reg [1:0] B;
wire [3:0] P;


integer i,j;
question3 m(A, B, P);

initial
begin
    $dumpfile("question3.vcd");
    $dumpvars(0, question3_tb);
    
    for (i = 0; i < 4; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
            A = i;
            B = j;
            #20;
        end
    end
    $display("Test Complete!");
end
endmodule
