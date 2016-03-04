`timescale 1ns / 1ps

module fa(
    input a,
    input b,
    input c,
	 input clk,
	 input [0:15] theta,
    output s,
    output ca,
	 output [0:15] sine,
	 output [0:15] cos
    );
	 
assign ca= (a&b) | (b&c) | (c&a) ;
assign s= a^b^c;

cordic_v4_0 sinecos(clk,sine,cos,theta);


endmodule
