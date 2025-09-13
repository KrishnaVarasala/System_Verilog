//method:4 Swapping can be achived also with EXOR operation

module method_4();
  int a = 46;
  int b = 78;
  initial begin
    a = a^b;
    b = a^b;
    a = a^b;
    $display("method 4 without NBA and Temp and addition A= %0d B= %0d",a,b);
  end
endmodule

output:
method 4 without NBA and Temp and addition A= 78 B= 46
