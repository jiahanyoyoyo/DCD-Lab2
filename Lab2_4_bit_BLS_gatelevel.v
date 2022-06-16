module Lab2_4_bit_BLS_gatelevel (input [3:0] A, B, input bin, output [3:0] D, output bout);

wire Ga0,Ga1,Ga2,Ga3;//A'
wire g0,g1,g2,g3;//G
wire p0,p1,p2,p3;//P'
wire P0,P1,P2,P3;//Pi
wire b0,b1,b2,b3;//PiBINi
wire Bin1,Bin2,Bin3;//BINi+1
wire d0,d1,d2,d3;//D'

not Gi0(Ga0,A[0]),Gi1(Ga1,A[1]),Gi2(Ga2,A[2]),Gi3(Ga3,A[3]);
and #2 G0(g0,B[0],Ga0),G1(g1,B[1],Ga1),G2(g2,B[2],Ga2),G3(g3,B[3],Ga3);
xor #4 p0(p0,A[0],B[0]),p1(p1,A[1],B[1]),p2(p2,A[2],B[2]),p3(p3,A[3],B[3]);
not P0(P0,p0),P1(P1,p1),P2(P2,p2),P3(P3,p3);
and #2 b0(b0,P0,bin),b1(b1,P1,Bin1),b2(b2,P2,Bin2),b3(b3,P3,Bin3);
or  #2 Bin1(Bin1,g0,b0),Bin2(Bin2,g1,b1),Bin3(Bin3,g2,b2),bout(bout,g3,b3);
xor #4 d0(d0,P0,bin),d1(d1,P1,Bin1),d2(d2,P2,Bin2),d3(d3,P3,Bin3);
not D0(D[0],d0),D1(D[1],d1),D2(D[2],d2),D3(D[3],d3);

endmodule
