module tb_BCD_counter;
	reg clock,reset;
	wire [3:0]counter;
	BCD_counter uut(.clock(clock),.reset(reset),.counter(counter));
	initial #100 $finish;
	always #5 clock=~clock;
	initial
		fork 
			#0  reset=0;
				clock=0;
			#5	reset=1;
		join
endmodule
