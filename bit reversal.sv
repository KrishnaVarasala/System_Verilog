//Bit reversal
// Code your testbench here
// or browse Examples
module tb();
  bit[7:0] a = 8'b11110000;
  bit [7:0] b;
  
  initial begin
    b = {<<{a}};
    $display("%b",b);
  end
endmodule


//output:
00001111
