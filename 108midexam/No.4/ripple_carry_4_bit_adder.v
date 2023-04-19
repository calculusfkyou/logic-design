module half_adder(S,C,x,y);
	output S,C;
	input x,y;
	
	xor(S,x,y);
	and(C,x,y);
endmodule

module full_adder(S,C,x,y,z);
	output S,C;
	input x,y,z;
	
	wire S1,C1,C2;
	half_adder add1(S1,C1,x,y);
	half_adder add2(S,C2,S1,z);
	assign C=C1||C2;
endmodule

module ripple_carry_4_bit_adder(S,C4,A,B,C0);
	output [3:0] S;
	output C4;
	input [3:0] A,B;
	input C0;
	wire C1,C2,C3;
	
	full_adder
		FA0(S[0],C1,A[0],B[0],C0),
		FA1(S[1],C2,A[1],B[1],C1),
		FA2(S[2],C3,A[2],B[2],C2),
		FA3(S[3],C4,A[3],B[3],C3);
endmodule