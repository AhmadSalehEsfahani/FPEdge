module ALU #(parameter WIDTH = 8) ( input  [WIDTH-1:0] A,
                                    input  [WIDTH-1:0] B,
                                    input  [3:0] func,
                                    output [WIDTH-1:0] sout,
	                                output [3:0] flags);

    reg carry , zero , overflow , negative;
	reg [WIDTH-1:0] temp_result;
	reg [WIDTH  :0] tmp_add_sub;


	assign sout = temp_result;
    assign flags = {carry, zero , overflow, negative};
    
	always_comb
    begin
        if(func == 4'b0000) begin
            temp_result = A + B ;
            tmp_add_sub = {1'b0, A} + {1'b0, B};
            carry = tmp_add_sub[WIDTH];
            negative = temp_result[WIDTH-1];
            overflow = (~A[WIDTH-1] & ~B[WIDTH-1] & temp_result[WIDTH-1]) 
                            | (A[WIDTH-1] & B[WIDTH-1] & ~temp_result[WIDTH-1]);
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0001) begin
            temp_result = A - B ;
            tmp_add_sub = {1'b0, A} - {1'b0, B};
            carry = tmp_add_sub[WIDTH];
            negative = temp_result[WIDTH-1];
            overflow = (~A[WIDTH-1] & ~B[WIDTH-1] & temp_result[WIDTH-1]) 
                                | (A[WIDTH-1] & B[WIDTH-1] & ~temp_result[WIDTH-1]);
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0010) begin
            temp_result = A & B ;
            tmp_add_sub = WIDTH'b0;
            carry = 1'b0;
            negative = temp_result[WIDTH-1];
            overflow = 1'b0;
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0011) begin
            temp_result = A | B ;
            tmp_add_sub = WIDTH'b0;
            carry = 0;
            negative = temp_result[WIDTH-1];
            overflow = 0;
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0100) begin
            temp_result = A ^ B ;
            tmp_add_sub = WIDTH'b0;
            carry = 0;
            overflow = 0;
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0101) begin
            temp_result = ~ A;
            tmp_add_sub = WIDTH'b0;
            overflow = (temp_result[WIDTH-1] == A[WIDTH-1]);
            carry = A[0];
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0110) begin
            temp_result = $signed(A) >>> B ;
            tmp_add_sub = WIDTH'b0;
            overflow = (temp_result[WIDTH-1] == A[WIDTH-1]);
            carry = A[0];
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b0111) begin
            temp_result = A >> B ;
            tmp_add_sub = WIDTH'b0;
            overflow = (temp_result[WIDTH-1] == A[WIDTH-1]);
            carry = A[0];
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);
                
        end else if(func == 4'b1000) begin
            temp_result = $signed(A) <<< B;
            tmp_add_sub = WIDTH'b0;
            overflow = (temp_result[WIDTH-1] == A[WIDTH-1]);
            carry = A[WIDTH-1];
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b1010) begin
            temp_result = (A << B) | (A >> ~B);
            tmp_add_sub = WIDTH'b0;
            overflow = (temp_result[WIDTH-1] == A[WIDTH-1]);
            carry = A[WIDTH-1];
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);

        end else if(func == 4'b1011) begin
            temp_result = (A << ~B) | (A >> B);
            tmp_add_sub = WIDTH'b0;
            overflow = (temp_result[WIDTH-1] == A[WIDTH-1]);
            carry = A[0];
            negative = temp_result[WIDTH-1];
            zero = (temp_result == WIDTH'b0);   
        end else begin
            //add in default
            temp_result = A + B ;
            tmp_add_sub = {1'b0, A} + {1'b0, B};
            carry = tmp_add_sub[WIDTH];
            negative = temp_result[WIDTH-1];
            overflow = (~A[WIDTH-1] & ~B[WIDTH-1] & temp_result[WIDTH-1]) 
                            | (A[WIDTH-1] & B[WIDTH-1] & ~temp_result[WIDTH-1]);
            zero = (temp_result == WIDTH'b0);

        end

		  
    end
endmodule
