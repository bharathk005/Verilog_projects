`timescale 1ns / 1ps

module old_divider(zD,yD,xD
    );

input [0:5]xD;
input [0:5]yD;

output reg [0:5]zD;
reg [0:5] gD;
reg [0:5] hD;
reg [0:3] inc;

always@(*)
begin
	gD<=xD;
	hD<=yD;
	inc <= 0;
	
	while(gD%2 !=0)
	begin
			gD <= gD >> 1;
			hD <= hD >> 1;
	end
	while(gD/2 != 1)
	begin
		inc = inc + 1;
	end
	zD <= hD >> inc;
end

endmodule
