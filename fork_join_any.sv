//join_any means, fork block completes as soon say any one of the processes completed
//any one begin end should complete first then process 3 outside the fork block will get executes

module tb();
  
  initial begin
  fork
     begin
       $display("process 1 at %0t",$time);
       $display("process 1A at %0t",$time); 
     end
     begin
       $display("process 2 at %0t",$time);
      $display("Process 2A at %0t",$time);
     end
  join_any
      $display("Process 3 at %0t",$time);
  end
endmodule

output:
process 1 at 0
process 1A at 0
Process 3 at 0
process 2 at 0
Process 2A at 0

//now introduce delay in the first block, then observe

module tb();
  
  initial begin
  fork
     begin
       $display("process 1 at %0t",$time);
       #1;                       
       $display("process 1A at %0t",$time); 
     end
     begin
       $display("process 2 at %0t",$time);
      $display("Process 2A at %0t",$time);
     end
  join_any
      $display("Process 3 at %0t",$time);
  end
endmodule

output:
process 1 at 0
process 2 at 0
Process 2A at 0
Process 3 at 0
process 1A at 1

//process 1 and 2 will start initially, because of the delay 1A gets delayed, so the 2 and 2A will completed and the process 3 will get executes
//and then the 1A will get executes
