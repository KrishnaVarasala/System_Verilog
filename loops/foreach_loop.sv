//foreach loop
module tb();
  
  bit [4:0]a[10];
  
  initial begin
    foreach(a[i])begin
      a[i]=i;
    end
    
    foreach(a[i])begin
      $display("at %0d : a = %0d",i,a[i]);
    end
  end
endmodule

output:
at 0 : a = 0
at 1 : a = 1
at 2 : a = 2
at 3 : a = 3
at 4 : a = 4
at 5 : a = 5
at 6 : a = 6
at 7 : a = 7
at 8 : a = 8
at 9 : a = 9

//what will be the output if trying to get the value for undeclared index

module tb();
  
  bit [4:0]a[10];
  
  initial begin
    foreach(a[i])begin
      a[i]=i;
    end
    $display("at 15 : a = %0d",a[15]);
  end
endmodule

output :
at 15 : a = 0
//0 because bit's default value
