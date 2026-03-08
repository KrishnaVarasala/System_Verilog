//Here in this example i am trying to merge two Queues in alternate position
//like a[0],b[0],a[1],b[1],a[2],b[2]
module tb();
  int a [$] = {1,2,3,4,5,6,7,8,9};
  int b [$] = {10,20,30,40,50,60,70,80,90};
  int c [$];
  
  initial begin
      for(int i=0; i<= a.size()-1;i=i+1)begin
             c.push_back(a[i]);
             c.push_back(b[i]);
      end
    $display("%p",c);
  end
endmodule

output:
'{1, 10, 2, 20, 3, 30, 4, 40, 5, 50, 6, 60, 7, 70, 8, 80, 9, 90} 
