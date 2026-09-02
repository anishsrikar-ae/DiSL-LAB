module question1b(a,b,carryin,sum,carryout);
input a,b,carryin;
output sum,carryout;

assign sum = a^b^carryin;
assign carryout = a&b | a&carryin | b&carryin;

endmodule
