module T_flip_flop(Q,t,clk,rst);
	output reg Q;
	input t,clk,rst;
	always@(posedge clk,negedge rst)
		if(rst==0) Q<=0;
		else Q<=(Q^t);
endmodule

module up_down_counter_4bit(
	output [3:0]A,
	input clear_b,clk,up,down
	);
	wire w1,w2,w3,w4,w5,w6,w7,t0,t1,t2,t3;
	assign w1=(~up)&down,
		w2=(~A[0])&w1,
		w3=A[0]&up,
		w4=w2&(~A[1]),
		w5=w3&A[1],
		w6=w4&(~A[2]),
		w7=w5&A[2],
		t0=up|w1,
		t1=w2|w3,
		t2=w4|w5,
		t3=w6|w7;
	T_flip_flop T0(A[0],t0,clk,clear_b);
	T_flip_flop T1(A[1],t1,clk,clear_b);
	T_flip_flop T2(A[2],t2,clk,clear_b);
	T_flip_flop T3(A[3],t3,clk,clear_b);
endmodule
