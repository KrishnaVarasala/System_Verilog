// mailbox: it is a system verilog constructor which is used to send data from one component to another component in testbench
//blocking in nature, means it will wait if there is no data to recieve, does not through error or will not give any default data

module test();
  mailbox #(int) mb;                                               //declares mailbox
  int data;
  initial
 fork
   begin
     for(int i=0;i<=3;i=i+1)begin
       mb = new();                                                //constructor for the handle
       data = $urandom_range(1,100);
       $display("[mailbox]at %0t : data at master : %0d",$time,data);
       mb.put(data);                                              //sends the randomized data through the mailbox
       #10;
     end
   end
   
   begin
     int rcv;
     for(int j=0;j<=6;j=j+1)begin
       mb.get(rcv);                                               //recieves the data from the mailbox
       $display("[mailbox]at %0t : data at slave : %0d",$time,rcv);
       #10;
     end
   end
 join
endmodule


output:
[mailbox]at 0 : data at master : 90
[mailbox]at 0 : data at slave : 90
[mailbox]at 10 : data at master : 49
[mailbox]at 10 : data at slave : 49
[mailbox]at 20 : data at master : 20
[mailbox]at 20 : data at slave : 20
[mailbox]at 30 : data at master : 48
[mailbox]at 30 : data at slave : 48

//master sent data 4 times and slave recived 4 times although the slave have to do it for 6 times according to the loop condition.
//it will block for other 2 times until master sends.
