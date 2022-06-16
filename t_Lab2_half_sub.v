module t_Lab2_half_sub;

    wire diff,bout;
    reg a,b;


Lab2_half_sub_gatelevel M(a,b,diff,bout);

initial
    begin
            a=1'b0;b=1'b0;
        #10 a=1'b0;b=1'b1;
        #10 a=1'b1;b=1'b0;
        #10 a=1'b1;b=1'b1;
    end
    initial
    begin
        $dumpfile("Lab2_half_sub.vcd");
    $dumpvars;
    end
    initial #50 $finish;


endmodule
