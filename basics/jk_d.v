`timescale 1ns / 1ps

module jk_d(
    input j,
    input k,
    input c,
    input r,
	 output q
    );

wire i;

assign i=(j&~q)|(~k&q);

dff dff0(i,c,r,q);


endmodule
