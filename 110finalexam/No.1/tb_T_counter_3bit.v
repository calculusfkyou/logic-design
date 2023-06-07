module tb_T_counter_3bit;
	reg clock,reset;
	wire [2:0]A;
	T_counter_3bit uut(.clock(clock),.reset(reset),.A(A));
	initial #50 $finish;
	always #5 clock=~clock;
	initial	
		begin
			#0 reset=0;
				clock=0;
			#10 reset=1;
		end
endmodule
