module tb_mux4x1;
	wire Y;
	reg [3:0] I;
	reg [1:0] S;
	
	mux4x1 uut(Y,I,S);
	
	initial
		begin
			#10 S[0]=1'b0;
				S[1]=1'b0;
				I[0]=4'b0;
				I[1]=4'b1;
				I[2]=4'b0;
				I[3]=4'b1;
			#10 S[0]=1'b1;
				S[1]=1'b0;
			#10 S[0]=1'b1;
				S[1]=1'b1;
		end
		initial #40 $finish;
endmodule
