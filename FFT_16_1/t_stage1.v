`timescale 1ns / 1ps

module t_stage1;

	// Inputs
	reg [0:15] xr;
	reg [0:15] xi;
	reg c;
	reg en;

	// Outputs
	wire [0:15] Y1p1r;
	wire [0:15] Y1p1i;
	wire [0:15] Y2p1r;
	wire [0:15] Y2p1i;
	wire [0:15] Y1p2r;
	wire [0:15] Y1p2i;
	wire [0:15] Y2p2r;
	wire [0:15] Y2p2i;

	// Instantiate the Unit Under Test (UUT)
	stage1 uut (
		.xr(xr), 
		.xi(xi), 
		.c(c), 
		.en(en), 
		.Y1p1r(Y1p1r),
		.Y1p1i(Y1p1i),
		.Y2p1r(Y2p1r),
		.Y2p1i(Y2p1i),
		.Y1p2r(Y1p2r),
		.Y1p2i(Y1p2i),
		.Y2p2r(Y2p2r),
		.Y2p2i(Y2p2i)
		
	);

	initial begin
		// Initialize Inputs
		xr = 0;
		xi = 0;
		c = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
      en = 1;  
		xr = 0;
		#10;
		xr = 1;
		#10;
		xr = 2;
		#10;
		xr = 3;
		#10;
		xr = 4;
		#10;
		xr = 5;
		#10;
		xr = 6;
		#10;
		xr = 7;
		#10;
		xr = 8;
		#10;
		xr = 9;
		#10;
		xr = 10;
		#10;
		xr = 11;
		#10;
		xr = 12;
		#10;
		xr = 13;
		#10;
		xr = 14;
		#10;
		xr = 15;
		#10;
		en = 0;
	end
   
	always #5 c <= ~c;
	
endmodule

