module tb_addsub;
	reg [3:0] A,B;
	reg M;
	wire [3:0]S;
	wire C,V;
	
	addsub uut(
		.A(A),
		.B(B),
		.M(M),
		.S(S),
		.C(C),
		.V(V)
	);
	
	initial 	
		begin
			A=4'b0000;   B=4'b0000;    M=1'b1;
			#10 A=4'b1111;
				B=4'b1101;
				M='b0;
			#10 A=4'b1110;
				B=4'b1110;
				 M=1'b1;
			#10 A=4'b1000;
				B=4'b0010;
		end
	initial #40 $finish;
endmodule