`include "fourbitadder.v"

module tb();

reg [3:0] r1, r2;
wire [3:0] result;
wire carry;

initial begin
  r1 = 0;
  r2 = 0;

  #10 r1 = 10;
  #10 r2 = 2;
  #10 $display ("---------");
  $finish;
end

fourbitadder U (result, carry, r1, r2);

initial begin
  $display("| r1 | r2 | u0.sum | u1.sum | u2.sum | u3.sum | result");
  $monitor("| %h | %h | %h | %h | %h | %h | %h |", r1, r2,tb.U.a0.sum, tb.U.a1.sum, tb.U.a2.sum, tb.U.a3.sum, result);
end

endmodule
