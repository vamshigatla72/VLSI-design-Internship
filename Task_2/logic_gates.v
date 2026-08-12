// AND gate Impelementation
module and_gate(a, b, out);
input a, b;
output out;
assign out = a & b;
endmodule

// OR gate Impelementation
module or_gate(a, b, out);
input a, b;
output out;
assign out = a | b;
endmodule

// NOT gate Impelementation
module not_gate(a, out);
input a;
output out;
assign out = ~a;
endmodule

// NAND gate Impelementation
module nand_gate(a, b, out);
input a, b;
output out;
assign out = ~(a & b);
endmodule

// NOR gate Impelementation
module nor_gate(a, b, out);
input a, b;
output out;
assign out = ~(a | b);
endmodule

// XOR gate Impelementation
module xor_gate(a, b, out);
input a, b;
output out;
assign out = a ^ b;
endmodule
