//polymorphism allows the same method to act in many forms depending upon the from which hnadle it is calling

class parent;
  
 virtual function void display();           //declaring the function as virtual as it needs to be overridden in child class which are extended                   
    $display("Inside parent class");
  endfunction
  
endclass

class child_1 extends parent;
  
  function void display();
    $display("Inside child_1 class");
  endfunction
  
endclass

class child_2 extends parent;
  
  function void display();
    $display("Inside child_2 class");
  endfunction
  
endclass

class child_3 extends parent;
  
  function void display();
    $display("Inside child_3 class");
  endfunction
  
endclass

module tb();
  parent p1,p2,p3,p4;
  child_1 c1;
  child_2 c2;
  child_3 c3;
  
  initial begin
    c1=new();c2=new();c3=new();
    p4=new();                              //having seperate handle for parent class
    p1=c1;                                 //child_1 is assign to parent
    p2=c2;                                 //child_2 is assign to parent
    p3=c3;                                 //child_3 is assign to parent
    p1.display();                          //calling display function with p1(i.e is c1)
    p2.display();                          //calling display function with p2(i.e is c2)
    p3.display();                          //calling display function with p3(i.e is c3)
    p4.display();                          //calling display function with p4(i.e is from parent)
  end
endmodule

output:

Inside child_1 class
Inside child_2 class
Inside child_3 class
Inside parent class
