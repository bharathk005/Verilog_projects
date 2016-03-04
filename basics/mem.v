`timescale 1ns / 1ps

module mem(
    output reg [3:0] d,
    input [3:0] di,
    input [5:0] a,
    input e,
    input rw
    );
reg [4:0] m[63:0];
always @(e , rw)
if(e)
	if(rw) d=m[a];
	else m[a]=di;
else d=4'bz;

endmodule
