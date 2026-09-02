module question1(a,b,c,d,f);
input a,b,c,d;
output f;

nand(ab, a, a);
nand(cb, c, c);

nand(p, ab, cb);
nand(q, ab, d);
nand(r, b, cb);
nand(s, b, d);

nand(f, p, q, r, s);

endmodule
