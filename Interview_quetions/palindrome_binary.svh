//Palindrome binary number

class pattern;
  rand bit[7:0] a;
  
  constraint c1 {foreach(a[i])
    a[i]==a[7-i];
                }
endclass

module tb();
  pattern p1;
  initial begin
    p1 = new();
    repeat(5)begin
    p1.randomize();
    $display("%b",p1.a);
    end
  end
endmodule

output :
10111101
01100110
10000001
01000010
00100100
