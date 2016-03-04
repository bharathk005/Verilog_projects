`timescale 1ns / 1ps

module butterfly_16_1(i1r,i1i,i2r,i2i,c,r1r,r1i,r2r,r2i);
input [0:15]i1r;
input [0:15]i1i;
input [0:15]i2r;
input [0:15]i2i;
input c;
output reg signed [0:15]r1r;
output reg signed [0:15]r2r;
output reg signed [0:15]r1i;
output reg signed [0:15]r2i;

always@(*) 
begin

 r1r <= i1r + i2r;			//real
 r1i <= i1i + i2i;		//imag
 r2r <= i1r - i2r;			//real
 r2i <= i1i - i2i;		//imag
end

endmodule
