`timescale 1ns / 1ps

module t_processor;

	// Inputs
	reg signed [0:15] xr;
	reg signed [0:15] xi;
	reg c;
	reg en;

	// Outputs
	wire [0:15] X1r;
	wire [0:15] X1i;
	wire [0:15] X2r;
	wire [0:15] X2i;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.xr(xr),
		.xi(xi),
		.c(c),
		.en(en),
		.X1r(X1r), 
		.X1i(X1i),
		.X2r(X2r), 
		.X2i(X2i)

	);

	initial begin
		// Initialize Inputs
		xr = 0;
		xi = 0;
	//	c = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#105;
		en =1;
		
      c = 1;
		#5;
		xr = 16'd0;
		#10;		
		xr = 16'd1;
		#10;
		xr = 16'd2;
		#10;
		xr = 16'd3;
		#10;
		xr = 16'd4;
		#10;
		xr = 16'd5;
		#10;
		xr = 16'd6;
		#10;
		xr = 16'd7;
		#10;
		en = 0;
	end
    
	always #5 c=~c;
	 
endmodule

