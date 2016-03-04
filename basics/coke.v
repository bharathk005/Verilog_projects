`timescale 1ns / 1ps

module coke( output reg y,
				 output reg [4:0] ch,
				 input [4:0] m,
				 input n
    );
parameter r=5'd00010;
always @(m)
 begin
	if(m==r)
		y=1'b1;
	else if(m > r)
		begin
			y=1'b1;
			ch=m-r;
		end
	else
		begin
		 y=1'b0;
		ch=m;
		end
	
	
	end
		
endmodule
