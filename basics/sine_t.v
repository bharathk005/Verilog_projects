`timescale 1ns / 1ps

module sine_t;

	// Inputs
	reg [19:0] z0;
	reg start;
	reg clock;
	reg reset;

	// Outputs
	wire [19:0] cos_z0;
	wire [19:0] sin_z0;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	sine uut (
		.cos_z0(cos_z0), 
		.sin_z0(sin_z0), 
		.done(done), 
		.z0(z0), 
		.start(start), 
		.clock(clock), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		z0 = 0;
		start = 0;
		clock = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		start = 1;
		z0 = 0;
		
		

	end
	always #5 clock =~clock;
;      
endmodule

