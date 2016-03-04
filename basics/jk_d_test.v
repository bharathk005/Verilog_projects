`timescale 1ns / 1ps


module jk_d_test;

	// Inputs
	reg j;
	reg k;
	reg c;
	reg r;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	jk_d uut (
		.j(j), 
		.k(k), 
		.c(c), 
		.r(r), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;
		c = 0;
		r = 1;

		// Wait 100 ns for global reset to finish
		#6;
		
		r=0;
		
		#6;
		
		j = 1;
		k = 0;
		
		#6;
		
		j=1;
		k=1;
		
		#6;
		
		j=0;
		k=0;
		
		#6;
		r=1;
		
		#6;
		j=1;
		k=0;
		
		#6;
		j=0;
		k=1;
		
        
		// Add stimulus here

	end
   always   #2 c=~c;
endmodule

