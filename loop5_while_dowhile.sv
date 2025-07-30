//while and do_while loop

module tb();
  int a;
  int b;
  
  initial begin
    a = 3;
    b = 6;
    do begin
      $display("do while : inside while loop");
    end while (a>b);
    $display("do while : while loop failed");
  end
  
   initial begin
    a = 3;
    b = 6;
     while(a>b) begin
       $display("while loop: inside while loop");
    end
     $display("while loop: while loop failed");
  end
  
  initial begin
    #100;
    $finish();
  end
endmodule

output:
do while : inside while loop
do while : while loop failed
while loop: while loop failed

  //while executes if the condition is true and will not execute if the condition is false
  //do_while executes if the condition is true and atleast executes one time and stops executing if the condition is false
