//Struct is a user define data type, which can hold variables of different types. 
//Every field will have individual memory to store

module tb();
  
  typedef struct {
    string name;
    int id;
    int salary;
  } details;
  
  initial begin
    
    details d1,d2;
    d1.name = "Missy cooper";
    d1.id = 478;
    d1.salary = 700000;
    $display("%p",d1);
    
    d2.name = "sheldon cooper";
    d2.id = 443;
    d2.salary = 10000000;
    $display("%p",d2);
    
    //accessing individual elements
    $display("name : %s , name : %s",d1.name,d2.name);
  end
endmodule

output :
