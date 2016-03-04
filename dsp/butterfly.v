`timescale 1ns / 1ps

module butterfly(a1,b1,a2,b2,N,k,e,c,rea1,img1,rea2,img2);
input [0:15] a1;
input [0:15] b1;
input [0:15] a2;
input [0:15] b2;
input e;
input c;
input N;
input k;
output reg [0:15] rea1;
output reg [0:15] rea2;
output reg [0:15] img1;
output reg [0:15] img2;

reg [0:15]theta;
reg [0:15]sin;
reg [0:15]cos;
 

always@(*)
if(e)
begin
	rea1 <= a1+(a2*k/N) + (b2*k/N); // a1 + a2*cos(2*pi*k/N) + b2*sin(2*pi*k/N)
	rea2 <= a1-(a2*k/N) - (b2*k/N); // a1 - a2*cos(2*pi*k/N) - b2*sin(2*pi*k/N)
	img1 <= b1+(b2*k/N) - (a2*k/N); // b1 + b2*cos(2*pi*k/N) - a2*sin(2*pi*k/N)
	img2 <= b1-(b2*k/N) + (a2*k/N); // b1 - b2*cos(2*pi*k/N) + a2*sin(2*pi*k/N)
end
cordic_v4_0 sinecos(c,sin,cos,theta);
  
  endmodule
