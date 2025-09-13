//Method:1 with Temporary registers
//storing a value in temp and b value in 

module method_1();
  int a = 46;
  int b = 78;
  int tmp;
  
  initial begin
    tmp = a;
    a= b;
    b = tmp;
    $display("Method 1 with Temp A = %0d B = %0d",a,b);
  end
endmodule

output:
Method 1 with Temp A = 78 B = 46
