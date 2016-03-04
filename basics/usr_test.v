`timescale 1ns / 1ps



module usr_test;

	// Inputs
	reg [3:0] x;
	reg z;
	reg c;
	reg r;
	reg [1:0] s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	usr uut (
		.y(y), 
		.x(x), 
		.z(z), 
		.c(c), 
		.r(r), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		x = 4'b0000;
		z = 0;
		c = 0;
		r = 0;
		s = 2'b00;

		
		#3;
		s=2'b01;
		x=4'b1010;
		
		#6;
		r=1;
		#3;
		r=0;
		s=2'b00;
		#3;
		s=2'b01;
		x=4'b0101;
		#6;
		s=2'b10;
		z=1;
		#3;
		z=1;
		#3;
		s=2'b11;
		z=1;
		#3;
		z=0;
		
        
		

	end
     always #2 c=~c; 
endmodule

