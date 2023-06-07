module t_Mealy_Zero_Detector;
	wire y_out;
	reg x_in,clock,reset;
	Mealy_Zero_Detector M1(.y_out(y_out),.x_in(x_in),.clock(clock),.reset(reset));
	initial #100 $finish;
	always #10 clock=~clock;
	initial
		fork
			#0  clock=0;
				reset=0;
			#3	reset=1;
			#10 x_in=1;
			#20	x_in=0;
		join
endmodule
