module Binary_Counter_4_Par_Load(
    output reg [3:0]A_count,
    output c_out,
    input [3:0]data_in,
    input count,load,clear_b,clk
);  
    assign c_out=A_count[3]&A_count[2]&A_count[1]&A_count[0]&((!load)&count);
    always@(posedge clk,negedge clear_b)
        if(clear_b==0) A_count<=0;
        else if(load) A_count<=data_in;
        else if(count) A_count<=A_count+1'b1;
        else A_count<=A_count;
endmodule