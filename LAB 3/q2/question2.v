module question2(a,b,c,d,f);

input a,b,c,d;
output f;

nor(p, b, d);
nor(q, b, c);

nor(r, p, q);
nor(f, r, r);


endmodule
