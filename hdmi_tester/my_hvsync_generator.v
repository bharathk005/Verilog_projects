module my_hvsync_generator(clk, vga_h_sync, vga_v_sync, inDisplayArea, CounterX, CounterY);
input clk;
output vga_h_sync, vga_v_sync;
output inDisplayArea;
output [9:0] CounterX;
output [9:0] CounterY;

//////////////////////////////////////////////////
reg [9:0] CounterX;
reg [9:0] CounterY;
wire CounterXmaxed = (CounterX== 1023);
wire CounterYmaxed = (CounterY== 767);

always @(posedge clk)
if(CounterXmaxed)
	CounterX <= 0;
else
	CounterX <= CounterX + 1;

always @(posedge clk)
begin
if(CounterXmaxed) CounterY <= CounterY + 1;
if(CounterYmaxed) CounterY <= 0;
end

reg	vga_HS, vga_VS;
always @(posedge clk)
begin
	vga_HS <= (CounterX[9:4]==0); // change this value to move the display horizontally
	vga_VS <= (CounterY==0); // change this value to move the display vertically
end

reg inDisplayArea;
always @(posedge clk)
if(inDisplayArea==0)
	inDisplayArea <= (CounterXmaxed) && (CounterY<766);
else
	inDisplayArea <= !(CounterX==1000);
	
assign vga_h_sync = ~vga_HS;
assign vga_v_sync = ~vga_VS;

endmodule
