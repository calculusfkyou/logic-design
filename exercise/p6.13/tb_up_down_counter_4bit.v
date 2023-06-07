module tb_up_down_counter_4bit;
	wire [3:0]A;
	reg clear_b,clk,up,down;
	up_down_counter_4bit uut(.A(A),.clear_b(clear_b),.clk(clk),.up(up),.down(down));
	initial #100 $finish;
	always #5 clk=~clk;
	initial 
		begin 
			#0	clear_b=0;
				clk=0;
				up=0;
				down=0;
			#5	clear_b=1;
			#10	up=1;
			#10	down=1;
			#10	down=0;
			#10	up=0;
			#10 up=1;    
			    down=1;
		end
endmodule
