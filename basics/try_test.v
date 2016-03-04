`timescale 1ns / 1ps



module try_test;

	// Inputs
	reg x;

	// Outputs
	wire a;

	// Instantiate the Unit Under Test (UUT)
	try uut (
		.a(a), 
		.x(x)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		// Add stimulus here
		x=1;
		#6;
		x=0;
		#6;
		x=1;
		#6;
		x=1;
		#6;
		x=0;
		end
		
		initial 
		$monitor("%d",a);


      
endmodule

