`timescale 1ns/1ns
`include "comparator_8bit_rtl.v" // includes the module definition for the full adder
module testbench;
    reg clk;
    reg [7:0] a, b;
    wire a_gt_b, a_lt_b, a_eq_b;

    comparator_8bit dut (
       	.clk(clk),
      	.a(a),
       	.b(b),
       	.a_gt_b(a_gt_b),
       	.a_lt_b(a_lt_b),
       	.a_eq_b(a_eq_b)
    );

    // Clock generation
    always #5 clk = ~clk;

initial begin
 	$fsdbDumpvars();
//Tool specific command. Creates novas.fsdb file. Used for waveform generation

        $display("Starting Testbench for 8-bit Comparator");
	a <= 0; b <= 0; clk <= 0;
// Reset inputs

        // Test 1: a > b
        #20; a = 8'd150; b = 8'd100;
        $display("a=150, b=100 => gt=%b lt=%b eq=%b", a_gt_b, a_lt_b, a_eq_b);

        // Test 2: a < b
        #20; a = 8'd60; b = 8'd180;
        $display("a=60, b=180 => gt=%b lt=%b eq=%b", a_gt_b, a_lt_b, a_eq_b);

        // Test 3: a == b
        #20; a = 8'd200; b = 8'd200;
        $display("a=200, b=200 => gt=%b lt=%b eq=%b", a_gt_b, a_lt_b, a_eq_b);

        #100 $finish;
    end

endmodule
