module BCD_counter(
	input clock,reset,
	output reg [3:0]counter
	);
	always@(posedge clock,negedge reset)
		if(reset==0) counter<=0;
		else
			case(counter)
				4'b0000:counter<=4'b0001;
				4'b0001:counter<=4'b0010;
				4'b0010:counter<=4'b0011;
				4'b0011:counter<=4'b0100;
				4'b0100:counter<=4'b0101;
				4'b0101:counter<=4'b0110;
				4'b0110:counter<=4'b0111;
				4'b0111:counter<=4'b1000;
				4'b1000:counter<=4'b1001;
				4'b1001:counter<=4'b0000;
			endcase
endmodule
