module tb_BCD2Excess6;

  reg [3:0] I;
  wire [3:0] O;

  BCD2Excess6 uut(
    .A(I[3]),
    .B(I[2]),
    .C(I[1]),
    .D(I[0]),
    .W(O[3]),
    .X(O[2]),
    .Y(O[1]),
    .Z(O[0])
  );

  initial 
    begin
      #10 I = 4'h0;
      #10 I = 4'h9;
      #10 I = 4'h6;
      #10 I = 4'hf;
      #10 I = 4'h1;
      // #10 A = 0 ; B = 0 ; C = 0 ; D = 0;
      // #10 A = 1 ; B = 0 ; C = 0 ; D = 1;
      // #10 A = 0 ; B = 1 ; C = 1 ; D = 0;
      // #10 A = 1 ; B = 1 ; C = 1 ; D = 1;
    end
  initial #60 $finish;

endmodule