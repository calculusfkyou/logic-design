module JK_flip_flop(Q,J,K,clk,rst);
    output reg Q;
    input J,K,clk,rst;
    always@(posedge clk,negedge rst)
        if(rst==0) Q<=0;
        else
            case({J,K})
                2'b00:Q<=Q;
                2'b01:Q<=0;
                2'b10:Q<=1;
                2'b11:Q<=(~Q);
            endcase
endmodule

module counter(
    output A,B,C,
    input clk,rst
);
    JK_flip_flop f0(A,B,B,clk,rst);
    JK_flip_flop f1(B,C,1,clk,rst);
    JK_flip_flop f2(C,~B,1,clk,rst);
endmodule