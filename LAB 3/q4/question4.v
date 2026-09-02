module question4(a,b,c,d,f);

input a,b,c,d;
output f;

nand(ab,a,a);
nand(bb, b, b);
nand(db, d, d);

nand(p, c, d);
nand(q, bb, db);
nand(r, ab, bb);

nand(f, p, q, r);


endmodule
