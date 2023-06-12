module tb_Binary_Counter_4_Par_Load;
    wire  [3:0]A_count;
    wire  c_out;
    reg [3:0]data_in;
    reg count,load,clear_b,clk;
    Binary_Counter_4_Par_Load uut(.A_count(A_count),.c_out(c_out),.data_in(data_in),.count(count),.load(load),.clear_b(clear_b),.clk(clk));
    initial #60 $finish;
    always #5 clk=~clk;
    initial 
        begin 
            #0  clear_b=0;
                clk=0;
                load=0;
                data_in=4'b1010;
                count=0;
            #5  clear_b=1;
            #5  load=1;
            #10 load=0;
            #5  count=1;
            #10 load=1;
            #10  count=0;
                load=0;
            #5  count=1;
        end
endmodule