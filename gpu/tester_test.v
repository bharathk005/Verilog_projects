`timescale 1ns / 1ps


module tester_test;

	
	reg n;
	

	
	wire [0:1] m;

	// Instantiate the Unit Under Test (UUT)
	tester uut (
		
		.n(n), 
		.m(m)
	);

	initial begin
		
		n = 2'b11;
		#10;
		n = 2'b10;
		#10;
		n = 2'b01;
		
		#100;
        
		

	end
      
endmodule

