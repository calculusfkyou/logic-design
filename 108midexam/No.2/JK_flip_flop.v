module JK_flip_flop(Q,J,K,Clk);
	output Q;
	input J,K,Clk;
	reg Q;
	always@(posedge Clk)
		case({J,K})
			2'b00:Q<=Q;
			2'b01:Q<=0;
			2'b10:Q<=1;
			2'b11:Q<=(~Q);
		endcase
endmodule
