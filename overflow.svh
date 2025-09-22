//what will happen if the value assigned is more than the capacity of the datatype variable
//example : Assign a maximum value for an Int Variable and increment it

module tb;
  int a = 2147483647;          //Initilaized int a with its maximum Value
  
  initial begin
    a++;                      //Iincrementing a;
    $display("value of a after INCR: %0d",a);
  end
endmodule

output:
value of a after INCR: -2147483648   

//a is going back to its minimum/starting value
//Hence, when Overflow occurs the variable will go back to its minimum/starting value

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Example :2 with bit datatype varibale

module tb;
  bit[3:0] a= 15;
  
  initial begin
    a++;
    $display("value of a after INCR: %0d",a);
  end
endmodule

output:
value of a after INCR: 0   

//coming back to 0 if overflow occurs
