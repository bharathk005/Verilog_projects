`timescale 1ns / 1ps
module globalMem(x,y
    );
input [0:3]x;
input [0:3]y;  
reg frameBuffer[0:1023][0:1023];
always@(*)
begin
	frameBuffer[x][y] = 1'b1;
end

endmodule
