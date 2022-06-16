module t_Lab2_converter_4bit();
    reg[3:0] E;
    wire[3:0] B_gate, B_data, B_behave;
    wire v_gate, v_data, v_behave;

    Lab2_converter_4bit_gatelevel converter_4bit_gate(E, B_gate, v_gate);
    Lab2_converter_4bit_dataflow converter_4bit_data(E, B_data, v_data);
    Lab2_converter_4bit_behavioral converter_4bit_behave(E, B_behave, v_behave);

    initial #160 $finish;

    initial begin
        E=4'b0000;
        repeat(15) #10 E=E+1'b1;
    end

    initial begin
        $dumpfile("Lab2_converter_4bit.vcd");
        $dumpvars;
    end
endmodule

