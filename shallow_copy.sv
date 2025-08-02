shallow_copy : copy the contents in a class along with the memory of the contents but not the memory for the extented objects 

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
  
  parent p=new();
  
  function void display(string name);
    $display("[%0s]p_addr: %0d, p_data : %0d\n\tchild_addr : %0d child_data : %0d",name,p.p_addr,p.p_data,child_addr,child_data);
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
    c2=new c1;
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
    c1.p.display("parent");
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

[child original]p_addr: 200, p_data : 100
	child_addr : 78 child_data : 43
[child duplicate]p_addr: 200, p_data : 100
	child_addr : 666 child_data : 444
[parent] p_addr: 200, p_data : 100
