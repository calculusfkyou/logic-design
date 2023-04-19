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

module addsub(
	input [3:0] A,B,
	input M,
	output [3:0]S,
	output C,V
	);
	
	wire C1,C2,C3;
	wire XOR1,XOR2,XOR3,XOR4;
	
	xor G1(XOR1,M,B[0]);
	xor G2(XOR2,M,B[1]);
	xor G3(XOR3,M,B[2]);
	xor G4(XOR4,M,B[3]);
	xor G5(V,C3,C);
	
	full_adder
		FA0(S[0],C1,A[0],XOR1,M),
		FA1(S[1],C2,A[1],XOR2,C1),
		FA2(S[2],C3,A[2],XOR3,C2),
		FA3(S[3],C,A[3],XOR4,C3);
endmodule