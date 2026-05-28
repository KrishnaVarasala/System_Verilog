//generate array of 10 elements
//no two adjacent elements are equal

class pattern;
  rand int a[10];
 
  constraint c1 {foreach(a[i])
    if(i>=0 && i<=8)
    a[i]!=a[i+1];
                }
  constraint c2 {foreach(a[i])
                a[i]>1 && a[i]<10;
                }
endclass

module tb();
  pattern p1;
  initial begin
    p1 = new();
    repeat(5)begin
    p1.randomize();
     $display("%p",p1.a);
    end
  end
endmodule

output:
'{9, 2, 6, 2, 4, 7, 3, 2, 5, 8} 
'{6, 9, 5, 3, 9, 4, 6, 5, 4, 3} 
'{3, 7, 6, 8, 5, 9, 2, 6, 2, 3} 
'{3, 8, 6, 2, 9, 8, 3, 4, 2, 8} 
'{5, 3, 6, 8, 2, 5, 2, 8, 6, 4} 
