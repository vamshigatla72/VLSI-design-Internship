module half_adder(a, b, sum, carry);
// Declaration of input and output ports
input a, b;
output sum, carry;
// assinging the sum of the half adder
assign sum = a ^ b ;
// Carry of the half adder
assign carry = a& b;
endmodule
