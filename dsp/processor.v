`timescale 1ns / 1ps

module processor(c,din,regE,ext,dout,dout1);
input [0:15] din;
input c;
input regE;
input ext;
output reg [0:15] dout;
output reg [0:15] dout1;


reg [0:15] data;
wire req;
wire [0:5] addrIn;
wire [0:15] out;
wire [0:15] out1;
reg wE;
reg ack;
reg rst;
reg busy;
reg result;
reg [0:5]idx;
reg [0:3]counter;
reg ready;
reg [0:5]lidx;
//reg [0:15] locRam[0:63];


initial begin
wE <= 1;
rst<=0;
idx <= 0;
ack <= 0;
busy <= 0;
counter <= 0;
ready <= 0;
result <= 0;
end

always@(posedge c)
begin
if(ext)
begin
wE <= 0;idx <= addrIn;

end

if(regE && (~ext))begin idx <= idx + 6'b000001;lidx <= idx; end

if(ext && (~busy)) begin ready <= 1; result <= 0; end
if((~busy) && req) begin ack <= 1;end
if(ack)
begin
	busy <= 1;
	ready <= 0;
	ack <=0; 
end

//if(calc && req && (~ready))
//idx <= addrIn +1;



if(busy)begin
counter <= counter + 4'b0001;
if(counter == 4'b0000)
	begin
		data <= out;
		busy <= 0;
		counter <= 0;
		result <= 1;

	end
end

end

Ram_mem r1(.clka(c),.rsta(rst), .wea(wE), .addra(idx), .dina(din), .douta(out)); 
ALU a1(c,data,ready,ack,result,req,addrIn,out1);

always@(posedge c)
begin
dout <= ext;
dout1 <= out1;

end


endmodule
