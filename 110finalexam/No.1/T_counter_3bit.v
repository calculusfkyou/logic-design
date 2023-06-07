module Toggle_flip_flop(Q,T,Clk,rst);
	output reg Q;
	input T,Clk,rst;
	always@(posedge Clk,negedge rst)
		if(rst==0) Q<=0;
		else Q<=(Q^T);
endmodule

module T_counter_3bit(
	input clock,reset,
	output [2:0]A
	);
	Toggle_flip_flop t0(A[0],1,clock,reset);
	Toggle_flip_flop t1(A[1],A[0],clock,reset);
	Toggle_flip_flop t2(A[2],A[0]&A[1],clock,reset);
endmodule
