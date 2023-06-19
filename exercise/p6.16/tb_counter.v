module tb_counter;
    wire A,B,C;
    reg clk,rst;
    counter uut(.A(A),.B(B),.C(C),.clk(clk),.rst(rst));
    initial #100 $finish;
    always #5 clk=~clk;
    initial 
        begin
            #0  rst=0;
                clk=0;
            #5  rst=1;
        end
endmodule