//encapusulation provides data hiding

class parent;
  local int a;
  protected int b;
  int c;
  function new();
    a = 78;
  endfunction
  function void display();
    $display("a = %0d || b = %0d || c = %0d",a,b,c);
  endfunction
endclass

module tb();
  parent p;
  initial begin
    p = new();
    p.b=43;
    p.c=61;
    p.display();
  end
endmodule

output:
Error-[SV-ICVA] Illegal class variable access
encapsulation.sv, 20
  Protected member 'b' of class 'parent' is not visible to scope 'tb'.
  Please make sure that the above member is accessed only from its own class 
  or inherited class properties as it is declared as protected.
  Please refer to the SystemVerilog LRM (1800-2012) Section 8.18 Data hiding 
  and encapsulation.

//now, accessing b with the extended class

class parent;
  local int a;
  protected int b;
  int c;
  
  function new();
    a = 78;
  endfunction
  
  function void display();
    $display("a = %0d || b = %0d || c = %0d",a,b,c);
  endfunction
endclass

class child extends parent;
  
  parent p;
  
  function new();
    b=43;
  endfunction
endclass

module tb();
  parent p;
  child ch;
  initial begin
    ch= new();
    ch.c=61;
    ch.display();
  end
endmodule

output:
a = 78 || b = 43 || c = 61

//variable a is local, you cannot access outside that class
//variable b is protected,you can access in the extended class but not outside other than that
//variable c is normal, which can be accessed from anywhere
