`timescale 1ns / 1ps

module mem_test;

	// Inputs
	reg [3:0] di;
	reg [5:0] a;
	reg e;
	reg rw;

	// Outputs
	wire [3:0] d;

	// Instantiate the Unit Under Test (UUT)
	mem uut (
		.d(d), 
		.di(di), 
		.a(a), 
		.e(e), 
		.rw(rw)
	);

	initial begin
		// Initialize Inputs
		di = 0;
		a = 0;
		e = 0;
		rw = 0;

		#3;
		e=1'b1;
		a=6'b101010;
		di=4'b1111;
		#3;
		rw=1;
		a=6'b000001;
		#1;
		rw=0;
		#3;
		rw=1;
		
		a=6'b101010;
		
        
		

	end
      
endmodule

