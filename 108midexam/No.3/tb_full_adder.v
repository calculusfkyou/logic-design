module tb_full_adder;
	wire S,C;
	reg x,y,z;
	
	full_adder uut(.S(S),.C(C),.x(x),.y(y),.z(z));
	
	initial 
		begin
		  x=1'b1;y=1'b1;z=1'b1;
			#10 x=1'b1;
				y=1'b1;
				z=1'b1;
			#10 x=1'b0;
				y=1'b0;
				z=1'b1;
			#10 x=1'b1;
				y=1'b0;
				z=1'b1;
		end
	initial #40 $finish;
endmodule
