`timescale 1ns / 1ps

module usr(
    output reg [3:0] y,
	
    input [3:0] x,
    input z,
    input c,
    input r,
    input [1:0] s
    
    );
always @(posedge c,posedge r)

if(r) y<=4'b0000;

else
case(s)
2'b00 : y<=y;				//no change
2'b01 : y<=x;				//parallel load
2'b10 : y<={z,y[3:1]};	//shift right
2'b11 : y<={y[2:0],z};  //shift left
endcase


endmodule
