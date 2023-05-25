module problem4(
  output reg y_out, 
  input x_in, clock, reset
);
  reg [1:0]state;
  parameter	S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;

  always@(posedge clock,negedge reset)
    if (reset==0) state<=S0;
    else case(state)
      S0:if(x_in) begin state<=S1;assign y_out=1;end  else begin state<=S2;assign y_out=1;end
      S1:if(x_in) begin state<=S1;assign y_out=1;end  else begin state<=S1;assign y_out=0;end
      S2:if(x_in) begin state<=S1;assign y_out=1;end  else begin state<=S3;assign y_out=1;end
      S3:if(x_in) begin state<=S1;assign y_out=0;end  else begin state<=S2;assign y_out=0;end
    endcase 	
endmodule 
