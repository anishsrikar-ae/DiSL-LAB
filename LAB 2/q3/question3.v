module question3(a,b,c,d,f);
input a, b, c, d;
output f;

and(l, a, b, c);
and(m, b, c, d);
and(n, c, d, a);
and(o, d, a, b);

or(f, l, m, n, o);

endmodule
