// Testbench for Simple_Circuit_prop_delay
module t_Simple_Circuit_prop_delay;
  wire	t_D, t_E;
  reg	t_A, t_B, t_C;

  Simple_Circuit_prop_delay M1 (t_A, t_B, t_C, t_D, t_E);  // Instance name required

  initial
    begin
      t_A = 1'b0; t_B = 1'b0; t_C = 1'b0;
      #100 t_A = 1'b1; t_B = 1'b1; t_C = 1'b1;
   end
  initial #200 $finish;
endmodule
