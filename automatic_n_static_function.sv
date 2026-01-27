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
    incr();  //calling 3 times 
    incr(); 
    incr();  
  end
endmodule

output:
Count is 1   //memory will be shared
Count is 2   //older value will be updated after every call
Count is 3

