//enum: it is used to define set of constants under one name
//days is the name and sundays, monday... are constants with values assigned automatically from 0
//any constant value is updated, then it will be next value.

module tb();
  
  typedef enum{sunday,monday,tuesday,wednesday=43,thursday,friday,saturday} days;
  
  initial begin
    days d;
    d=sunday;
    $display("value of day = %0d",d);
    d=thursday;
    $display("value of day = %0d",d);
    d=saturday;
    $display("name of day = %0s",d);
  end
endmodule

output:
value of day = 0                     //0 value
value of day = 44                    //next value after wednesday-43
name of day = saturday               //can be reported as string
