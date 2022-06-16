module t_Lab2_full_sub;
wire diff,bout;
reg a,b,bin;

Lab2_full_sub M1(a,b,bin,diff,bout);




initial
begin
    $dumpfile("Lab2_full_sub.vcd");
    $dumpvars;
    end

initial
begin
    bin=1'b0;a=1'b0;b=1'b0;
#10 bin=1'b0;a=1'b0;b=1'b1;
#10 bin=1'b0;a=1'b1;b=1'b0;
#10 bin=1'b0;a=1'b1;b=1'b1;
#10 bin=1'b1;a=1'b0;b=1'b0;
#10 bin=1'b1;a=1'b0;b=1'b1;
#10 bin=1'b1;a=1'b1;b=1'b0;
#10 bin=1'b1;a=1'b1;b=1'b1;
end

initial #100 $finish;
endmodule
