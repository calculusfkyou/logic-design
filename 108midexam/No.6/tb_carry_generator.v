module tb_carry_generator;
	wire C1,C2,C3;
	reg C0;
	reg [2:0]P,G;
	
	carry_generator uut(
		.C1(C1),
		.C2(C2),
		.C3(C3),
		.C0(C0),
		.P(P),
		.G(G)
		);
	
	initial 
		begin
			C0=1'b1;P=3'b000;G=3'b000;
			#10 P=3'b001;
				G=3'b010;
			#10 P=3'b101;
				G=3'b000;
			#10 P=3'b010;
				G=3'b111;
		end
	initial #40 $finish;
endmodule