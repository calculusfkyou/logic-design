module tb_synchronous_counter_4bit;
	wire [3:0]A;
	reg count_enable,clk,rst;
	synchronous_counter_4bit uut(.A(A),.count_enable(count_enable),.clk(clk),.rst(rst));
	initial #100 $finish;
	always #5 clk=~clk;
	initial	
		begin
			#0  rst=0;
				clk=0;
				count_enable=0;
			#5	rst=1;
				count_enable=1;
		end
endmodule
