module Lab2_4_bit_BLS_dataflow (input [3:0] A, B, input bin, output [3:0] D,output bout);

wire G0,G1,G2,G3;
wire P0,P1,P2,P3;
wire B1,B2,B3;

assign G0=!A[0]&B[0],G1=!A[1]&B[1],G2=!A[2]&B[2],G3=!A[3]&B[3];
assign P0=(!A[0]^B[0]),P1=(!A[1]^B[1]),P2=(!A[2]^B[2]),P3=(!A[3]^B[3]);
assign B1=G0|(P0&bin),B2=G1|(P1&B1),B3=G2|(P2&B2);
assign D[0]=(!P0^bin),D[1]=(!P1^B1),D[2]=(!P2^B2),D[3]=(!P3^B3);

endmodule
