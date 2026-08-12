`timescale 1ns / 1ps

module tb_half_adder;
    // Inputs
    reg a;
    reg b;

    // Outputs 
    wire sum;
    wire carry;

    // Instantiate the half adder module
    half_adder uut (.a(a), .b(b), .sum(sum), .carry(carry));

    initial begin
        //GTKWave to generate the waveform file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_half_adder);

        // Display header
        $display("Time\tA\tB\tSUM\tCARRY");
        $monitor("%0t\t%b\t%b\t%b\t%b", $time, a, b, sum, carry);

        // Apply truth table 
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        
        $finish;
    end
endmodule
