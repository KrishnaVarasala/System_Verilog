//KrishnaVarasala
//queue : special datatyp of system verilog which works under the principle of fifo
//it is non_blocking in nature, will not wait, if there is nothing to print, it will give default values

module tb();
  
  int my_q[$];
  
  initial begin
    for(int i=0;i<=3;i=i+1)begin
      my_q.push_front($urandom_range(1,100));
    end
    foreach(my_q[j])begin
      $write("[queue]%0d\t",my_q[j]);
    end
    $display("%0d",my_q[5]);
  end
endmodule

output:
[queue]71	[queue]74	[queue]61	[queue]39	0 

//here, i tried to print the value from the unoccupied index(i.e 5), values assigned only for 0 to 3 indexes
//as there is nothing in index 5, it is giving the default value o the datatype by which the queue is declared
