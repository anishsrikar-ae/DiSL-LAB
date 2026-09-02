module question4(D, Y, valid);
    input [3:0] D;
    output reg [1:0] Y;
    output reg valid;

    always @(*) begin
        casex (D)
            4'b1xxx: begin Y = 2'b11; valid = 1'b1; end
            4'b01xx: begin Y = 2'b10; valid = 1'b1; end
            4'b001x: begin Y = 2'b01; valid = 1'b1; end
            4'b0001: begin Y = 2'b00; valid = 1'b1; end
            default: begin Y = 2'b00; valid = 1'b0; end
        endcase
    end
endmodule
