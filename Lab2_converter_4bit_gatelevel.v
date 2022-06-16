module Lab2_converter_4bit_gatelevel (input [3:0] E, output [3:0] B, output v);

wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;

not z1(B[0],E[0]);//B[0]

xor y1(B[1],E[1],E[0]);//B[1]

and x1(w1,E[1],E[2],E[0]);//B[2]
not x2(w2,B[2]);
nand x3(w3,E[1],E[0]);
and x4(w4,w2,w3);
or x5(B[2],w1,w4);

and w1(w5,E[3],E[2]);//B[3]
and w2(w6,E[0],E[1],E[3]);
or w3(B[3],w5,w6);

xor v1(w7,E[3],E[2]);//v
nor v2(w8,E[1],E[0]);
and v3(w9,E[2],w8);
not v4(w10,E[3]);
and v5(w11,w10,E[1],E[0]);
or v6(v,w7,w9,w11);

endmodule
