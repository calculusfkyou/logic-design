module tb_mag_compare;
	wire A_lt_B, A_eq_B,A_gt_B;
	reg [3:0]A,B;
	
	mag_compare uut(A_lt_B, A_eq_B,A_gt_B,A,B);
	
	initial
		begin
			A=4'b0000;B=4'b0000;
			#10	A=4'b1000;
				B=4'b0001;
			#10	A=4'b0100;
				B=4'b0100;
			#10	A=4'b1000;
				B=4'b1011;
		end
	initial #40 $finish;
endmodule