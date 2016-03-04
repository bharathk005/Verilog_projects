`timescale 1ns / 1ps



module JK_test;

	// Inputs
	reg j;
	reg k;
	reg c;
	reg r;

	// Outputs
	wire q;
	wire q0;

	// Instantiate the Unit Under Test (UUT)
	JK uut (
		.j(j), 
		.k(k), 
		.c(c), 
		.r(r), 
		.q(q), 
		.q0(q0)
	);

	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;
		c = 0;
		r = 0;

		// Wait 100 ns for global reset to finish
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
		r=0;
		
		#6;
		j=1;
		k=0;
		
		#6;
		j=0;
		k=1;
		
		
        
	

	end
			
	always #2 c=~c;
endmodule

