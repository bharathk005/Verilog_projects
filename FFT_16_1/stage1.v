`timescale 1ns / 1ps

module stage1(xr,xi,c,en,Y1p1r,Y1p1i,Y2p1r,Y2p1i,Y1p2r,Y1p2i,Y2p2r,Y2p2i);
input [0:15]xr;
input [0:15]xi;
input c;
input en;
output reg signed [0:15]Y1p1r;
output reg signed [0:15]Y1p1i;
output reg signed [0:15]Y2p1r; 
output reg signed [0:15]Y2p1i; 
output reg signed [0:15]Y1p2r;
output reg signed [0:15]Y1p2i;
output reg signed [0:15]Y2p2r; 
output reg signed [0:15]Y2p2i; 


reg signed [0:15] shiftr[0:8];
reg signed [0:15] shifti[0:8];
reg signed [0:15] D1r;
reg signed [0:15] D2r;
reg signed [0:15] D1i;
reg signed [0:15] D2i;

reg [0:2] i;
reg [0:3] j;
reg en1;

reg signed [0:16] wr[0:7];
reg signed [0:16] wi[0:7];

reg signed [0:15]xp1r;
reg signed [0:15]xp1i;
reg signed [0:15]xp2r;
reg signed [0:15]xp2i;

reg c1;
wire signed [0:15]b1r1r;
wire signed [0:15]b1r1i;
wire signed [0:15]b1r2r;
wire signed [0:15]b1r2i;
wire signed [0:15]X1p1r;
wire signed [0:15]X1p1i;
wire signed [0:15]X2p1r;
wire signed [0:15]X2p1i;
wire signed [0:15]X1p2r;
wire signed [0:15]X1p2i;
wire signed [0:15]X2p2r;
wire signed [0:15]X2p2i;

initial begin
	i <= 3'b101;j <= 0;
	wr[0] = 16'd4; wr[1] = 16'd4;  wr[2] = 16'd2;   wr[3] = 16'd1;  wr[4] = 16'd0;  wr[5] = -16'd1;  wr[6] = -16'd2;   wr[7] = -16'd4;   
	wi[0] = 16'd0; wi[1] = -16'd1; wi[2] = -16'd2;  wi[3] = -16'd4; wi[4] = -16'd4; wi[5] = -16'd4;  wi[6] = -16'd2;   wi[7] = -16'd1;

end


always@(posedge c)
begin
if(en)
	begin
	shiftr[0] <= xr;
	shiftr[1] <=shiftr[0];
	shiftr[2] <=shiftr[1];
	shiftr[3] <=shiftr[2];
	shiftr[4] <=shiftr[3];
	shiftr[5] <=shiftr[4];
	shiftr[6] <=shiftr[5];
	shiftr[7] <=shiftr[6];
	shiftr[8] <=shiftr[7];
	shifti[0] <= xi;
	shifti[1] <=shifti[0];
	shifti[2] <=shifti[1];
	shifti[3] <=shifti[2];
	shifti[4] <=shifti[3];
	shifti[5] <=shifti[4];
	shifti[6] <=shifti[5];
	shifti[7] <=shifti[6];
	shifti[8] <=shifti[7];
	j <= j + 1;
	if(j == 4'd8) begin en1 <= 1;c1 <= 0; end
	end
else begin en1 <= 0; end

D1r <= b1r1r;
D1i <= b1r1i;

i <= i+1;

D2r <= ((wr[i]*b1r2r) - (wi[i]*b1r2i))/4;
D2i <= ((wr[i]*b1r2i) + (wi[i]*b1r2r))/4;

xp1r <= D1r;
xp1i <= D1i;

xp2r <= D2r;
xp2i <= D2i;	

end

always@(posedge c)
begin
Y1p1r <= X1p1r;
Y1p1i <= X1p1i;
Y2p1r <= X2p1r;
Y2p1i <= X2p1i;
Y1p2r <= X1p2r;
Y1p2i <= X1p2i;
Y2p2r <= X2p2r;
Y2p2i <= X2p2i;
/*Y1p1r <= shiftr[8];
Y1p1i <= j;
Y2p1r <= c1;
Y2p1i <= c;
Y1p2r <= en;
Y1p2i <= en1;
Y2p2r <= X2p2r;
Y2p2i <= X2p2i;*/
end

always@(c)
c1 <= ~c1;

butterfly_16_1 b1(shiftr[8],shifti[8],shiftr[0],shifti[0],c,b1r1r,b1r1i,b1r2r,b1r2i);
processor_16_1 p1(xp1r,xp1i,c1,en1,X1p1r,X1p1i,X2p1r,X2p1i);
processor_16_1 p2(xp2r,xp2i,c1,en1,X1p2r,X1p2i,X2p2r,X2p2i);

endmodule
