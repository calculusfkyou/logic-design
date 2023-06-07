module tb_detector_more3;
	wire y_out;
	reg x_in,clock,reset;
	detector_more3 uut(.y_out(y_out),.x_in(x_in),.clock(clock),.reset(reset));
	initial #50 $finish;
	always #5 clock=~clock;
	initial
		begin
			#0	reset=0;
				clock=0;
			#5	reset=1;
			#5	x_in=0;
			#5	x_in=1;
			#5	x_in=1;
			#5	x_in=1;
			#5	x_in=1;
			#5	x_in=0;
			#5	x_in=0;
		end
endmodule
