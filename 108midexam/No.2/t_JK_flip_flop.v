module t_JK_flip_flop;
	wire Q;
	reg J,K,Clk;
	JK_flip_flop M1(.Q(Q),.J(J),.K(K),.Clk(Clk));
	initial #200 $finish;
	initial begin Clk=0;forever #10 Clk=~Clk;end
	initial
		fork
			#0  J=0;
				K=0;
			#20 K=1;
			#40 J=1;
			#80 K=0;
			#90 J=0;
		join
endmodule
