module comp #(parameter WIDTH = 8) (
                                    input logic in1[WIDTH-1:0]
                                    input logic in2[WIDTH-1:0]
                                    output logic gr, eq, ls);

        assign gr = in1 > in2  ? 1'b1 : 1'b0;
        assign eq = in1 == in2 ? 1'b1 : 1'b0;
        assign ls = in1 < in2  ? 1'b1 : 1'b0;                           

endmodule