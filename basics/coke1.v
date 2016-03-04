`timescale 1ns / 1ps


module coke1(
    output reg y,
    output reg [0:1] ch,
    input [0:1] m,
    input n
    );
	 
	 parameter r=2'd10;
always @(m)
 
	if(m==r)
		y=1'b1;
	else if(m>r)
		begin
			y=1'b1;
			ch=r;
		end
	else
		begin
		y=1'b0;
		ch=m;
		end


endmodule
