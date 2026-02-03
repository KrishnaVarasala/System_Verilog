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

////////////////////////////////////////////////////////////////////
//string reversal
module tb();
 
  string data = "krishna";
  int len = data.len();
  string reverse_data;
 
  initial begin 
   for(int i = len-1;i>=0;i--)begin
    reverse_data = {reverse_data,data[i]};
   end
    $display("%0s",reverse_data);
  end
endmodule

output:
anhsirk

