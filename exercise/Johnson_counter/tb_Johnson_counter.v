module tb_Johnson_counter;
	wire A,B,C,E;
	reg clk,clear_b;
	Johnson_counter uut(.A(A),.B(B),.C(C),.E(E),.clk(clk),.clear_b(clear_b));
	initial #100 $finish;
	always #5 clk=~clk;
	initial
		begin 
			#0	clear_b=0;
				clk=0;
			#5	clear_b=1;
		end
endmodule
