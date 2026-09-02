module question3(a,b,c,d,f);

input a, b, c, d;
output f;

nor(cb, c, c);
nor(db, d, d);

nor(p, cb, d);
nor(q, a, db);

nor(r, p, q);
nor(f, r, r);

endmodule
