`timescale 1ns / 1ps

module tb_logic_gates;
    // Inputs
    reg a;
    reg b;

    // Outputs 
    wire out_and;
    wire out_or;
    wire out_not;
    wire out_nand;
    wire out_nor;
    wire out_xor;

    // Instantiate all the logic gate modules
    and_gate uut_and (.a(a), .b(b), .out(out_and));
    or_gate  uut_or  (.a(a), .b(b), .out(out_or));
    not_gate uut_not (.a(a),        .out(out_not));
    nand_gate uut_nand(.a(a), .b(b), .out(out_nand));
    nor_gate uut_nor (.a(a), .b(b), .out(out_nor));
    xor_gate uut_xor (.a(a), .b(b), .out(out_xor));

    initial begin
        //GTKWave to generate the waveform file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_logic_gates);

        // Display header
        $display("Time\tA\tB\tAND\tOR\tNOT\tNAND\tNOR\tXOR");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", $time, a, b, out_and, out_or, out_not, out_nand, out_nor, out_xor);

        // Apply truth table 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        
        $finish;
    end

endmodule
