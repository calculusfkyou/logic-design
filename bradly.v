module BCD2Excess6(A,B,C,D,W,X,Y,Z);
  output W,X,Y,Z;
  input A,B,C,D;
    assign W =(A||B||C),
    X=(((!B)&&(!C))||((B)&&(C))),
    Y=(!C),
    Z=(D);
endmodule