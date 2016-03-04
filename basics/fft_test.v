`timescale 1ns / 1ps



module fft_test;

	reg [0:7] x;
	wire [0:7] y;
	fft uut (
		.y(y), 
		.x(x)
	);
	
	initial begin
		x = 0;
		#10;
		x=8'b1000_0000;
		#10;
		x=8'b1010_1010;
		
		#10;
		x=8'b1111_0000;
		
   
	
	end
      
endmodule

