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
