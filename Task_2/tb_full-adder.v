`timescale 1ns / 1ps
module tb_full_adder;
    // Inputs
    reg a;
    reg b;
    reg cin;
    // Outputs 
    wire sum;
    wire cout;

    // Instantiate the full adder module
    full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        //GTKWave to generate the waveform file
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_full_adder);

        // Display header
        $display("Time\tA\tB\tCIN\tSUM\tCOUT");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, a, b, cin, sum, cout);

        // Apply truth table 
        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10;
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;

        
        $finish;
    end
endmodule
