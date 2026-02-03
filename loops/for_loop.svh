//for_loop in system verilog
//repeat a block for a specified number of times
module tb();
  
  initial begin
    for(bit[1:0]a=0;a<4;a=a+1)begin
      $display("inside for loop with value of a : %0d",a); 
    end
  end
endmodule

output:
//runs infinite times as the value of a is resetting to the 0 after 3 and loop is executing continuning
//to overcome this problem, take the varibale length which is not so narrow to the condition
//example below

module tb();
  
  initial begin
    for(bit[3:0]a=0;a<4;a=a+1)begin
      $display("inside for loop with value of a : %0d",a); 
    end
  end
endmodule

output:
inside for loop with value of a : 0
inside for loop with value of a : 1
inside for loop with value of a : 2
inside for loop with value of a : 3

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//what happens if the for loop is iterating more times than the size of the variable
module tb();
  int a[10] = '{0,1,2,3,4,5,6,7,8,9};                             //taking an array which has 10 locations and having elements 
  
  initial begin
    for (int i = 0; i<15; i ++)begin                             //iterating the loop for 14 times
      $display("i value = %0d || value of a = %0d",i,a[i]);
    end
  end
endmodule

output:
i value = 0 || value of a = 0
i value = 1 || value of a = 1
i value = 2 || value of a = 2
i value = 3 || value of a = 3
i value = 4 || value of a = 4
i value = 5 || value of a = 5
i value = 6 || value of a = 6
i value = 7 || value of a = 7
i value = 8 || value of a = 8
i value = 9 || value of a = 9
i value = 10 || value of a = 0          //for unavailable locations we will get default values of the variable
i value = 11 || value of a = 0          //variable is int; hence getting it's default value - 0
i value = 12 || value of a = 0          //if it is reg we will suppossed to get x
i value = 13 || value of a = 0
i value = 14 || value of a = 0

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

output if variable is reg:
  i value = 0 || value of a = 0
i value = 1 || value of a = 1
i value = 2 || value of a = 2
i value = 3 || value of a = 3
i value = 4 || value of a = 4
i value = 5 || value of a = 5
i value = 6 || value of a = 6
i value = 7 || value of a = 7
i value = 8 || value of a = 8
i value = 9 || value of a = 9
i value = 10 || value of a = x
i value = 11 || value of a = x
i value = 12 || value of a = x
i value = 13 || value of a = x
i value = 14 || value of a = x
