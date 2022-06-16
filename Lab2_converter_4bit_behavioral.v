module Lab2_converter_4bit_behavioral (input [3:0] E, output [3:0] B, output v);
wire[3:0] E;
reg[3:0] B;
reg v;

always @(*)
        casex(E)
            4'b000x: begin
                    B=4'bxxxx;
                    v=1'b0;
                end
            4'b0010: begin
                    B=4'bxxxx;
                    v=1'b0;
                end
            4'b1101: begin
                    B=4'bxxxx;
                    v=1'b0;
                end
            4'b111x: begin
                    B=4'bxxxx;
                    v=1'b0;
                end
            default: begin
                    B=E - 4'b0011;
                    v=1'b1;
                end
        endcase

endmodule
