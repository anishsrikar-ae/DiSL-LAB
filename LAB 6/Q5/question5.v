module question5(D, Y, valid);
    input [15:0] D;
    output reg [3:0] Y;
    output reg valid;
    integer i;

    always @(*) begin
        Y = 4'b0000;
        valid = 1'b0;
        for (i = 15; i >= 0; i = i - 1) begin
            if (D[i]) begin
                Y = i[3:0];
                valid = 1'b1;
            end
        end
    end
endmodule
