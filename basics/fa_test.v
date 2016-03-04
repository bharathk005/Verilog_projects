`timescale 1ns / 1ps



module fa_test;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg clk;
	reg [0:15] theta;
	// Outputs
	wire s;
	wire ca;
	wire [0:15] sine;
	wire [0:15] cos;
	// Instantiate the Unit Under Test (UUT)
	fa uut (
		.a(a), 
		.b(b), 
		.c(c),
		.clk(clk),
		.theta(theta),
		.s(s), 
		.ca(ca),
		.sine(sine),
		.cos(cos)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		clk = 0;
		theta = 0;

		// Wait 100 ns for global reset to finish
	
		

		// Add stimulus here
	
	end
   
	always #5 clk = ~clk;  

endmodule

