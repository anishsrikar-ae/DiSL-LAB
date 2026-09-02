module question2b(a,b,c,d,f);
input a, b, c, d;
output f;


not(ab,a);
not(bb, b);
not(cb, c);
not(db, d);

and(l,bb,cb,db);
and(m,ab,bb);
and(n,b,d);
and(o,a,b,c);

or(f,l,m,n,o);

endmodule
