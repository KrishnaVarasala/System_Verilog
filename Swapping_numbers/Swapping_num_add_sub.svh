//Method:3 with some arithmetic operations
//this can be achived without temp, NBA 

module method_3();
  int a = 46;
  int b = 78;
  initial begin
    a = a+b;
    b = a-b;
    a = a-b;
    $display("method 3 without NBA and Temp A= %0d B= %0d",a,b);
  end
endmodule

output:
method 3 without NBA and Temp A= 78 B= 46
