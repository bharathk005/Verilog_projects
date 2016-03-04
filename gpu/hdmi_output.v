`timescale 1ns / 1ps

module vga_output(c,vSync,hSync,counterX,counterY);
input c;
output vSync,hSync;


output reg [0:1023] counterX;
output reg [0:1023] counterY;

wire counterXmax = (counterX == 1023);
wire counterYmax = (counterY == 767);

always@(posedge c)
if(counterXmax)
	counterX <= 0;
else
	counterX = counterX + 1;

always@(posedge c)
begin
if(counterXmax) counterY <= counterY + 1;
if(counterYmax) counterY <= 0;
end
reg vsync,hsync;
always@(posedge c)
begin
vsync <= (counterX[4:9]==0);
hsync <= (counterY == 0);
end

assign vSync = ~vsync;
assign hSync = ~hsync;

endmodule

