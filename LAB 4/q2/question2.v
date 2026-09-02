module question2(x, y, sum, carryout, control);
input [3:0] x;
input [3:0] y;
input control;
output [3:0] sum;
output [3:0] carryout;

fulladd stage0(carryout[0], sum[0], x[0], y[0], control, control);
fulladd stage1(carryout[1], sum[1], x[1], y[1], control, carryout[0]);
fulladd stage2(carryout[2], sum[2], x[2], y[2], control, carryout[1]);
fulladd stage3(carryout[3], sum[3], x[3], y[3], control, carryout[2]);
endmodule


module fulladd(carryout, sum, x, y, control, carryin);
input x,y,control,carryin;
output carryout, sum;

assign carryout = x&(y^control) | x&carryin | (y^control)&carryin;
assign sum = x^(y^control)^carryin;

endmodule
