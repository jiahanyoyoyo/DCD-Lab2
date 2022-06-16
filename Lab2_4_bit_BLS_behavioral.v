module Lab2_4_bit_BLS_behavioral(input [3:0]A,B,input bin,output [3:0]D,output bout);

reg [3:0]D;reg bout;
reg b1,b2,b3;


always@(A[0],B[0],bin)
begin
     D[0]=A[0]^B[0]^bin;
     b1=(!A[0]&B[0])|((!A[0]^B[0])&bin);
end

always@(A[1],B[1],b1)
begin
     D[1]=A[1]^B[1]^b1;
     b2=(!A[1]&B[1])|((!A[1]^B[1])&b1);
end

always@(A[2],B[2],b2)
begin
     D[2]=A[2]^B[2]^b2;
     b3=(!A[2]&B[2])|((!A[2]^B[2])&b2);
end

always@(A[3],B[3],b3)
begin
     D[3]=A[3]^B[3]^b3;
     bout=(!A[3]&B[3])|((!A[3]^B[3])&b3);
end

endmodule
