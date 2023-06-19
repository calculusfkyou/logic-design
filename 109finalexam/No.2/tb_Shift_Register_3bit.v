module tb_Shift_Register_3bit;
	wire [3:0]A_par;
	reg [3:0]I_par;
	reg s1,s0,MSB_in,LSB_in,CLK,Clear_b;
	Shift_Register_3bit uut(.A_par(A_par),.I_par(I_par),.s1(s1),.s0(s0),.MSB_in(MSB_in),.LSB_in(LSB_in),.CLK(CLK),.Clear_b(Clear_b));
	initial #150 $finish;
	always #5 CLK=~CLK;
	initial
		fork
			#0 Clear_b=0;
				CLK=0;
				MSB_in=0;
				LSB_in=0;
				I_par=4'b1010;
			#5	Clear_b=1;
				s1=0;
				s0=0;
			#15	MSB_in=1;
				s1=0;
				s0=1;
			#30 LSB_in=1;
				s1=1;
				s0=1;
			#50 MSB_in=0;
				LSB_in=0;
			#60	s1=1;
				s0=0;
			#85 s1=1;
				s0=0;
			#95	s1=0;
				s0=1;
		join
endmodule
