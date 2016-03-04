`timescale 1ns / 1ps



module dff_test;

	// Inputs
	reg d;
	reg c;
	reg r;

	// Outputs
	wire q;

	
	dff uut (
		.d(d), 
		.c(c), 
		.r(r), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		c = 0;
		r = 0;

		// Wait 100 ns for global reset to finish
		#6;
		
		d=1;
		#3
		d=0;
		#3;
		d=1;
		#3
		r=1;
		#3;
		d=1;
        
		// Add stimulus here

	end
	always #2	c=~c;
      
endmodule

