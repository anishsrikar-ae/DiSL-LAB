module question1b(a,b,c,d,f);
input a, b, c, d;
output f;


not(ab,a);
not(bb, b);
not(cb, c);
not(db, d);

and(l,ab,bb);
and(m,b,cb,db);
and(n,bb,d);
and(o,bb,c);

or(f,l,m,n,o);

endmodule
