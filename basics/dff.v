`timescale 1ns / 1ps

module dff(
    input d,
    input c,
    input r,
    output reg q
    );

always@(posedge c, posedge r)
if(r)
q<=1'b0;
else
q<=d;


endmodule
