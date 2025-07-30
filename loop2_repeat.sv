//repeat loop repeats the block for given number of times

module tb();
  initial begin
    repeat(7)begin
      $display("inside repeat block");
    end
  end
endmodule

output:
inside repeat block
inside repeat block
inside repeat block
inside repeat block
inside repeat block
inside repeat block
inside repeat block
