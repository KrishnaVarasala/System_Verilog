//how to change a lower case srting into uppr case string
//ASCII value of A is 65 and a is 97
//difference is 32 between upper and lower cases.

module tb();
  string data="krishna";
  
  initial begin
    for(int i=0;i<=8;i=i+1)begin
      data[i]=data[i]-32;
      $write("%s",data[i]);
    end
  end
endmodule

output:
KRISHNA
