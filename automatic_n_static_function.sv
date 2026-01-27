//Automatic Function

module automatic_function();           
  
  function automatic int count();
    count++;
    $display("Count is %0d",count);
  endfunction
  
  initial begin
  count();
  count();
  count();      //calling the same function for 3 times
  end
  
endmodule

output:
Count is 1    //each call will gets its own space
Count is 1
Count is 1      //Every time new memory will be created

////////////////////////////////////////////////////////////////////////////////////////////////
//Static Function

module Static_function();
  function incr();
    int count;
    count++;
    $display("Count is %0d",count);
  endfunction
  initial begin
  incr();
  incr();
  incr();
  end
endmodule

output:
Count is 1
Count is 2
Count is 3

