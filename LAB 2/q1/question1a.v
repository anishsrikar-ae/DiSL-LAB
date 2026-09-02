module question1a(a,b,c,d,f);

input a, b, c, d;
output f;

not(bb, b);
not(cb, c);
not(db, d);
not(ab, a);

and(l, c, d);
and(m, c, bb);
and(n, b, cb, db);
and(o, ab, b);

or (f, l, m, n, o);

endmodule
