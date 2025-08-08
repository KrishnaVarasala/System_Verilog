//union is same as struct but it will have a shared memory of each field.

module tb();
  
  typedef union packed{
   // string name;   //cannot use string in union
    int id;
    int salary;
  } details;
  
  initial begin
    
    details d1,d2;
    d1.id = 478;
    $display("id : %0d",d1.id);
    d1.salary = 700000;
    $display("id %0d | salaray: %0d ",d1.id,d1.salary);
    
    d2.id = 443;
    d2.salary = 10000000;
    $display("%p",d2);
    
    //accessing individual elements
     $display("id : %0d , id : %0d",d1.id,d2.id);
  end
endmodule

output:
id : 478                                //here ID is 478
id 700000 | salaray: 700000             //when salary value is updated, ID value also updated as memory is same for salaray and id field
'{id:10000000}
id : 700000 , id : 10000000              //size of the union is it's largest value
