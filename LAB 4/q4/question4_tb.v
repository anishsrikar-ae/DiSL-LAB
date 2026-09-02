`timescale 1ns/1ns
`include "question4.v"

module question4_tb();
reg [3:0] A;
reg [3:0] B;
reg Cin;
wire [3:0] S;
wire Cout;

integer i, j, k;
question4 uut(A, B, Cin, S, Cout);

initial
begin
    $dumpfile("question4.vcd");
    $dumpvars(0, question4_tb);
    
    for (i = 0; i < 16; i = i + 1) begin
        for (j = 0; j < 16; j = j + 1) begin
            for (k = 0; k < 2; k = k + 1) begin
                A = i;
                B = j;
                Cin = k;
                #20;
            end
        end
    end
    $display("Test Complete!");
end
endmodule
