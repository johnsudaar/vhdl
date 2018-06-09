`include "addbit.v"

module fourbitadder (
  result,
  carry,
  r1,
  r2
);

input [3:0] r1;
input [3:0] r2;

output [3:0] result;
output carry;

wire [3:0] r1;
wire [3:0] r3;
wire [3:0] result;
wire carry;

wire c1;
wire c2;
wire c3;

supply0 c0;

addbit a0 (r1[0], r2[0], c0, result[0], c1 );
addbit a1 (r1[1], r2[1], c1, result[1], c2 );
addbit a2 (r1[2], r2[2], c2, result[2], c3 );
addbit a3 (r1[3], r2[3], c3, result[3], carry);


endmodule
