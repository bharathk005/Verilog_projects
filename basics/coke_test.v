`timescale 1ns / 1ps



module coke_test;
	reg [0:4] m;
	reg n;
	wire y;
	wire [0:4] ch;

	// Instantiate the Unit Under Test (UUT)
	coke uut (
		.y(y), 
		.ch(ch), 
		.m(m), 
		.n(n)
	);

	initial begin
		m = 5'd00;
		n = 0;
		#5
		m=5'd00010;
		#5
		m=5'd00005;
		#5
		m=5'd00020;
		#5
		m=5'd00007;
		#5;
		m=5'd00029;
        
		

	end
      
endmodule

