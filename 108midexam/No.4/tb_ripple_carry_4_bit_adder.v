module tb_ripple_carry_4_bit_adder;
	wire [3:0] S;
	wire C4;
	reg [3:0] A,B;
	reg C0;
	
	ripple_carry_4_bit_adder uut(S,C4,A,B,C0);
	initial
		begin
			A=4'b0000;B=4'b0000;C0=1'b0;
			#10 A=4'b0000;
				B=4'b1101;
			#10 A=4'b1011;
				B=4'b1101;
			#10 A=4'b1111;
				B=4'b1111;
		end
	initial #40 $finish;
endmodule