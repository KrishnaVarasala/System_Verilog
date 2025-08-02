//deep_copy : copy the contents of the class along with the contents of the extended objects and creates a seperate memory for all the contents

class parent;
  int p_addr;
  int p_data;
  
  function void display(string name);
    $display("[%0s] p_addr: %0d, p_data : %0d",name,p_addr,p_data);
  endfunction
  
endclass

class child extends parent;

  int child_data;
  int child_addr;
  parent p;
  
  function new();
  p=new();
  endfunction
  
  function void display(string name);
    $display("[%0s]p_addr: %0d, p_data : %0d\n\tchild_addr : %0d child_data : %0d",name,p.p_addr,p.p_data,child_addr,child_data);
  endfunction
  
  function deep_copy (child c);
    this.child_addr = c.child_addr;
    this.child_data = c.child_data;
    this.p.p_addr = c.p.p_addr;
    this.p.p_data = c.p.p_data;
  endfunction
  
endclass

module tb();
  child c1,c2;
  initial begin
    c1= new();
    c1.child_addr = 78;
    c1.child_data = 43;
    c1.p.p_addr = 61;
    c1.p.p_data = 28;
    c1.display("child original");
    c2=new();
    c2.deep_copy(c1);
    $display("\n---------------after shallow copy------------------\n");
    c2.display("child duplicate");
    c1.p.display("from parent");
    c2.child_addr = 666;
    c2.child_data = 444;
    c2.p.p_addr = 200;
    c2.p.p_data = 100;
    $display("\n---------------changing values in copy--------------\n");
    c1.display("child original");
    c2.display("child duplicate");
    c1.p.display("parent original");
    c2.p.display("parent duplicate");
  end
endmodule

output:
[child original]p_addr: 61, p_data : 28
	child_addr : 78 child_data : 43

---------------after shallow copy------------------

[child duplicate]p_addr: 61, p_data : 28
	child_addr : 78 child_data : 43
[from parent] p_addr: 61, p_data : 28

---------------changing values in copy--------------

[child original]p_addr: 61, p_data : 28                      //original values
	child_addr : 78 child_data : 43
[child duplicate]p_addr: 200, p_data : 100                   //values of copied one 
	child_addr : 666 child_data : 444
[parent original] p_addr: 61, p_data : 28                   //extended class values in original
[parent duplicate] p_addr: 200, p_data : 100                //extended class values in duplicate


//both are seperate, as the seperate memeory has been created


