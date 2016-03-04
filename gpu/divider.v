`timescale 1ns / 1ps

module divider(zD,yD,xD,c);
input [0:5]xD;
input [0:5]yD;
input c;
output reg [0:5]zD;
reg [0:5] gD;
reg [0:5] hD;
reg [0:3] inc;
reg  state,state1;
reg e,e1;
//parameter equal = 2'b01, notequal = 2'b10; 

initial
begin
	gD<=xD;
	hD<=yD;
	inc <= 0;
	e<=1;
	e1<=0;
	state<=0;
	state1<=0;
end

always@(state or state1)
begin
	if(e) begin
		gD <= gD >> 1;
		hD <= hD >> 1; 
	end
	if(e1) begin
		gD <= gD >> 1;	
		inc = inc +1; 
	end
end


always@(posedge c)
begin 
	if(e)
	begin
	if(gD % 2'b10 != 0)begin state <= ~state; end
	else begin e<=0;e1<=1; end
	end		

	if(e1)
	begin
	if(gD!= 1'b1) begin state1 <= ~state1; end
	else begin e1<=0;
					zD = hD >> inc; end
	end
end

endmodule
