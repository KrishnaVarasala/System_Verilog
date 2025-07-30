//Krishna_Varasala - 478
//List out the data types in system verilog and print the default values
module tb();
reg a;
int b;
bit c;
byte d;
logic e;
integer f;

initial begin
  $display("reg : %0d \nint : %0d\nbit : %0d\nbyte : %0d\nlogic :%0d\ninteger : %0d",a,b,c,d,e,f);
end
endmodule

output:
reg : x 
int : 0
bit : 0
byte : 0
logic :x
integer : x
