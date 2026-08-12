// Full Adder
module full_adder(a, b, cin, sum, cout);
// Declaration of input and output ports
input a, b, cin;
output sum, cout;
// Assigning the operation
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin);
endmodule
