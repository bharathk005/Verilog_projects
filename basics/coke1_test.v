`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:56 05/21/2015
// Design Name:   coke1
// Module Name:   C:/Users/bharath/Documents/Xilinx/test/coke1_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: coke1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module coke1_test;

	// Inputs
	reg [0:1] m;
	reg n;

	// Outputs
	wire y;
	wire [0:1] ch;

	// Instantiate the Unit Under Test (UUT)
	coke1 uut (
		.y(y), 
		.ch(ch), 
		.m(m), 
		.n(n)
	);

	initial begin
		// Initialize Inputs
		m = 0;
		n = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

