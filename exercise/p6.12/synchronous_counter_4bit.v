module JK_flip_flop(Q,j,k,clk,rst);
	output reg Q;
	input j,k,clk,rst;
	always@(posedge clk,negedge rst)
		if(rst==0) Q<=0;
		else
			case({j,k})
				2'b00:Q<=Q;
				2'b01:Q<=0;
				2'b10:Q<=1;
				2'b11:Q<=(~Q);
			endcase
endmodule

module synchronous_counter_4bit(
	output [3:0]A,
	input count_enable,clk,rst
	);
	wire c_en1,c_en2,c_en3;
	assign c_en1=count_enable&A[0],
		c_en2=c_en1&A[1],
		c_en3=c_en2&A[2];
	JK_flip_flop J0(A[0],count_enable,count_enable,clk,rst);
	JK_flip_flop J1(A[1],c_en1,c_en1,clk,rst);
	JK_flip_flop J2(A[2],c_en2,c_en2,clk,rst);
	JK_flip_flop J3(A[3],c_en3,c_en3,clk,rst);
endmodule	
