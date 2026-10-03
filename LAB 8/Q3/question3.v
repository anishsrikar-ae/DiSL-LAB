module question3(CLK, reset, Q);
input CLK;
input reset;
output reg [4:0] Q;

always @(posedge CLK or posedge reset) begin
    if (reset)
        Q <= 5'b00000;
    else begin
        Q <= {Q[3:0], ~Q[4]};
    end
end
endmodule
