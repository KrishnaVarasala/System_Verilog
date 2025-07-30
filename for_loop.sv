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
