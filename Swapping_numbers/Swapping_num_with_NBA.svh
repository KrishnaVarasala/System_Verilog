//Method:2 Swapping without temp 
//using non blocking assignment statements
//should use $monitor for reporting statements as NBA Statements

module method_2();
  int a = 46;
  int b = 78;
  
  initial begin
    a<=b;
    b<=a;
  end
  initial begin
    $monitor("method 2 with NBA A= %0d B= %0d",a,b);
  end
endmodule

output:
method 2 with NBA A= 78 B= 46
