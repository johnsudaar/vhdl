module addbit (
  a,
  b,
  ci,
  sum,
  co
);

input a; // Bit 1
input b; // Bit 2
input ci; // Carry

output sum; // Sum
output co; // Carry out

wire a;
wire b;
wire ci;
wire sum;
wire co;

assign {co, sum} = a + b + ci;

endmodule
