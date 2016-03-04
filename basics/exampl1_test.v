`timescale 1ns / 100ps


module exampl1_test;

	// Inputs
	reg A;
	reg B;
	

	// Outputs
	wire [3:0] E;

	// Instantiate the Unit Under Test (UUT)
	ripp_car_count rpc (
		.E(E), 
		.A(A), 
		.B(B)
	
	);

	initial begin
		// Initialize Inputs
		A = 1'b1;
		B = 1'b1;
		$display("%D",B);

		// Wait 100 ns for global reset to finish
		#1
		B = 1'b0;
		$display("%d",E);
		#5
		B= 1'b1;
		#1
		B=1'b0;
		$display("%d%d",E,A);

		
        
		// Add stimulus here
	
		
	
	

	end
	
always 
	begin
		#0.05 A=~A;
	end      
endmodule

