module question2a(a,b,c,d,f);
input a, b, c, d;
output f;

not(bb, b);

and(l, b, d);
and(m, bb, c);

or(f,l,m);

endmodule
