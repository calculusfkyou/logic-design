module D_flip_flop(Q,D,clk,reset);
	output reg Q;
	input D,clk,reset;
	always@(posedge clk,negedge reset)
		if(reset==0) Q<=0;
		else  Q<=D;
endmodule

module Johnson_counter(
	output A,B,C,E,
	input clk,clear_b
	);
	D_flip_flop D0(A,~E,clk,clear_b);
	D_flip_flop D1(B,A,clk,clear_b);
	D_flip_flop D2(C,B,clk,clear_b);
	D_flip_flop D3(E,C,clk,clear_b);
endmodule
