//forever will executes untill $finish is called
module tb();
  reg clk;
  
  initial begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
      $display("at %0t : inside forever loop with clk value of %0d",$time,clk);
    end
  end

initial begin
  #100;
  $finish();
end
endmodule

output:
at 5 : inside forever loop with clk value of 1
at 10 : inside forever loop with clk value of 0
at 15 : inside forever loop with clk value of 1
at 20 : inside forever loop with clk value of 0
at 25 : inside forever loop with clk value of 1
at 30 : inside forever loop with clk value of 0
at 35 : inside forever loop with clk value of 1
at 40 : inside forever loop with clk value of 0
at 45 : inside forever loop with clk value of 1
at 50 : inside forever loop with clk value of 0
at 55 : inside forever loop with clk value of 1
at 60 : inside forever loop with clk value of 0
at 65 : inside forever loop with clk value of 1
at 70 : inside forever loop with clk value of 0
at 75 : inside forever loop with clk value of 1
at 80 : inside forever loop with clk value of 0
at 85 : inside forever loop with clk value of 1
at 90 : inside forever loop with clk value of 0
at 95 : inside forever loop with clk value of 1
$finish called from file "forever.sv", line 14.
$finish at simulation time                  100

  //what happens, if the $finish is not called,

module tb();
  reg clk;
  
  initial begin
    clk = 0;
    forever begin
      #5 clk = ~clk;
      $display("at %0t : inside forever loop with clk value of %0d",$time,clk);
    end
  end
endmodule

output:
at 5 : inside forever loop with clk value of 1
at 10 : inside forever loop with clk value of 0
at 15 : inside forever loop with clk value of 1
  .
  .
  .
  .
at 24800 : inside forever loop with clk value of 0
at 24805 : inside forever loop with clk value of 1
Result reached the maximum of 5000 lines. Killing process.
Execution interrupted or reached maximum runtime.
//runtime error will occur
  

  
