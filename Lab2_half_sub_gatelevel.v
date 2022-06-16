module Lab2_half_sub_gatelevel(input a, b, output diff, bout);


wire w1;

not  G1(w1,a);
xor  #(4) G2(diff,a,b);
and  #(2) G3(bout,w1,b);

endmodule
