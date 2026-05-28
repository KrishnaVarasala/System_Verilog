//generate unique numbers in a 6 length array of intgers
//numbers should be 1 to 20 
class pattern;
  rand int a[6];
  constraint c2 {foreach(a[i])
    a[i]>1 && a[i]<21;
                }
  constraint c1 {foreach(a[i])
    foreach(a[j])
      if(i!=j)
        a[i]!=a[j];
                }
  function void display();
      $display("%0p",a);
  endfunction
  
endclass

module tb();
  pattern p1;
  initial begin
    p1 = new();
    p1.randomize();
    p1.display();
  end
endmodule

output :
'{3, 5, 18, 17, 7, 20} 
