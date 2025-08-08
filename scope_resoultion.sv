//scope resolution is used to access the static funtions and static variables from other scopes like packages...etc


class packet;
  
  int a;
  
  static function int square(int a);
    return a*a;
  endfunction
  
endclass

module tb();
  
  initial begin
    
    int result = packet::square(5);
    $display("static function's output :%0d",result);
  end
endmodule

class packet_2;
  
  static int counter;
  
  function new();
    counter++;
  endfunction
  
endclass

module test();
  
  initial begin
    packet_2 p1 = new();
    packet_2 p2 = new();
    $display("static member's display : %0d",packet_2::counter);
  end
endmodule

output:
static function's output :25
static member's display : 2        

