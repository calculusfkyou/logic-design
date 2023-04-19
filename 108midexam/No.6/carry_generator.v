module carry_generator(
	output C1,C2,C3,
	input C0,
	input [2:0]P,G
	);
	wire W1,W2,W3,W4,W5,W6;
	
	and G1(W1,C0,P[0],P[1],P[2]);
	and G2(W2,G[0],P[1],P[2]);
	and G3(W3,G[1],P[2]);
	and G4(W4,C0,P[0],P[1]);
	and G5(W5,G[0],P[1]);
	and G6(W6,P[0],C0);
	or G7(C3,W1,W2,W3,G[2]);
	or G8(C2,W4,W5,G[1]);
	or G9(C1,W6,G0);
endmodule