//inheritance : allows user to create an extended class from the existing class
//can inheritant the parents methods and can have its own methods


class parent;
  
  int a;
  
  function void display();
    $display("from parent class -> a : %0d",a);
  endfunction
  
endclass

class child extends parent;
  
  int data;
  
  function void display_1();
    $display("from child class data -> : %0d",data);
  endfunction
endclass

module tb();
  child c;
  
  initial begin
    c = new();                                   //memory allocation should be done to child class only
    c.a = 43;
    c.display();
    c.data = 78;
    c.a=61;                                    //variable a from parent is modifying from child class handle as it is extended from parent
    c.display_1();
    c.display();
  end
endmodule

output:
from parent class -> a : 43
from child class data -> : 78
from parent class -> a : 61

//if the memory allocation is done for both parent and child, then they will be in separate memory locations
//hence if you change the parents variable from child, then you are changing child's own variable at different location, hence not updated in parent
