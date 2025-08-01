//semaphore : it is a system verilog construct used to grant access for the shared resources among the processes

module tb();
  semaphore sema;
  
  initial begin
    sema = new(2);
    fork
    begin
      $display("A: waiting for key");
      sema.get(2);
      $display("A : Accquired key");
      sema.put(1);
      
    end
    
    begin
      $display("B: waiting for key");
      sema.get(2);
      $display("B : Accquired key");
    end
    join
  end
endmodule

output:
A: waiting for key
A : Accquired key
B: waiting for key

  //B is still waiting because the A returned only one key when B requires 2 keys to moveforward
