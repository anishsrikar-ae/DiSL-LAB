module question1a(a,b,c,d,f);
input a,b,c,d;
output f;

not(ab, a);
not(bb, b);
not(cb, c);

and(l, ab, cb, d);
and(m, bb, cb, d);

or(f, l, m, d);

endmodule
