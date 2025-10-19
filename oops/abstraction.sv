//abstraction : An Abstract class which is declared as Virtual class cannot be directly instantiated
//data in virtual class cannot be printed with parent handle as it is virtual class
virtual class parent;
  int data;
  function new();
    data = 46;
  endfunction
endclass

module tb();
  parent p;
  initial begin
    p = new();
    $display("data : %0d",p.data);
  end
endmodule

output:
Error-[SV-ACCNBI] An abstract class cannot be instantiated
testbench.sv, 17
tb, "p = new();"
  Instantiation of the object 'p' can not be done because its type 'parent' is
  an abstract base class.
  Perhaps there is a derived class that should be used.

    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //this data can be printed with child class handle which is extended from parent
    //hence, virtual class cannot be instantiated directly, it can be instatiated from the extended class
    
virtual class parent;
  int data;
  function new();
    data = 46;
  endfunction
endclass

class child extends parent;
  
endclass

module tb();
  child c;
  initial begin
    c = new();
    $display("data : %0d",c.data);
  end
endmodule

output:
data : 46
