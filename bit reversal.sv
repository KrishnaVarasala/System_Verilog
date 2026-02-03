//Bit reversal
module tb();
  bit[7:0] a = 8'b11110000;      //input value
  bit [7:0] b;                   //variable to store output
  
  initial begin
    b = {<<{a}};                 //using operator to reverse the bit
    $display("%b",b);
  end
endmodule


//output:
00001111

////////////////////////////////////////////////////////////////////
//string reversal
module tb();
 
  string data = "krishna";                        //input string 
  int len = data.len();                           //variable to calculate the length --> later we will use in for loop
  string reverse_data;                            //variable to store the reversed string data
 
  initial begin 
    for(int i = len-1;i>=0;i--)begin             //iterates from the end, stops if i reaches the 0th index
      reverse_data = {reverse_data,data[i]};     //stores the every element in the index along with previous element
   end
    $display("%0s",reverse_data);               //displaying the reverese odered string
  end
endmodule

output:
anhsirk

