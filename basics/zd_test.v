`timescale 1ns / 1ps

module zd_test;

	// Inputs
	reg x;
	reg c;
	reg r;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	zd uut (
		.y(y), 
		.x(x), 
		.c(c), 
		.r(r)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		c = 0;
		r = 0;


		#6;x=1;
		#3; x=0;
		#3; r=1;
		#3; x=1;
		#3; r=0;
		#3; x=0;
		#3; x=1;
		#3; x=0;
		#3; x=1;
		#3; x=1;
		
		
        
		

	end
      always #2 c=~c;
endmodule

