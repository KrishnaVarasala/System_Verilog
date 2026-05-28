//Generate a 8 bit variable where number of 1's > Number of 0's

class pattern;
  rand bit [7:0] a;
  constraint c1 {$countones(a) > 4;}
endclass;

module tb();
  pattern p1;
  initial begin
    repeat(5)begin
    p1 = new();
    p1.randomize();
    $display("%b",p1.a);
    end
  end
endmodule

Output:
10111100
11111111
11110101
11111011
11110010
