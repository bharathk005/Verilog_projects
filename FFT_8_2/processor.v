`timescale 1ns / 1ps

module processor(xr,xi,c,en,X1r,X1i,X2r,X2i);
input [0:15]xr;
input [0:15]xi;
input c;
input en;
output reg signed [0:15]X1r;
output reg signed [0:15]X1i;
output reg signed [0:15]X2r; 
output reg signed [0:15]X2i; 


reg signed [0:15] shiftr[0:4];
reg signed [0:15] shifti[0:4];

reg [0:15] D1r[0:1];
reg [0:15] D2r[0:1];
reg [0:15] D1i[0:1];
reg [0:15] D2i[0:1];

reg signed [0:15]R1r;
reg signed [0:15]R2r;
reg signed [0:15]R3r;
reg signed [0:15]R4r;
reg signed [0:15]R1i;
reg signed [0:15]R2i;
reg signed [0:15]R3i;
reg signed [0:15]R4i;

wire [0:15] d1r1;
wire [0:15] d1i1;
wire [0:15] d1r2;
wire [0:15] d1i2;
wire [0:15] d2r1;
wire [0:15] d2i1;
wire [0:15] d2r2;
wire [0:15] d2i2;

reg [0:1]i;
reg [0:1]j;
reg [0:1]k;

reg signed [0:15]W1r[0:3];
reg signed [0:15]W2r[0:3];
reg signed [0:15]w1r;
reg signed [0:15]w2r;
reg signed [0:15]W1i[0:3];
reg signed [0:15]W2i[0:3];
reg signed [0:15]w1i;
reg signed [0:15]w2i;

reg cont1;
reg cont2;

wire signed [0:15] bf1r1r;
wire signed [0:15] bf1r2r;
wire signed [0:15] bf2r1r;
wire signed [0:15] bf2r2r;
wire signed [0:15] bf3r1r;
wire signed [0:15] bf3r2r;
wire signed [0:15] m1outr;
wire signed [0:15] m2outr;
wire signed [0:15] m3outr;
wire signed [0:15] m4outr;
wire signed [0:15] bf1r1i;
wire signed [0:15] bf1r2i;
wire signed [0:15] bf2r1i;
wire signed [0:15] bf2r2i;
wire signed [0:15] bf3r1i;
wire signed [0:15] bf3r2i;
wire signed [0:15] m1outi;
wire signed [0:15] m2outi;
wire signed [0:15] m3outi;
wire signed [0:15] m4outi;


initial begin
//i = 2'b10;j = 2'b10;cont1<=1;k <= 2'b00;
i = 2'b00;j = 2'b00;k <= 2'b10; 
cont2<=1;                                                                                                            

/*W1r[0] = 16'd32; W1r[1] = 16'd23; W1r[2] = 16'd0;    W1r[3] = -16'd23;   // 0.707*32 = 22.6 = 23
W1i[0] = 16'd0;   W1i[1] = -16'd23; W1i[2] = -16'd32; W1i[3] = -16'd23;                        

W2r[0] = 16'd32; W2r[1] = 16'd0;   W2r[2] = 16'd32; W2r[3] = 16'd0;
W2i[0] = 16'd0;   W2i[1] = -16'd32; W2i[2] = 16'd0;   W2i[3] = -16'd32;                                 
*/

W1r[0] = 16'd8; W1r[1] = 16'd7; W1r[2] = 16'd0;    W1r[3] = -16'd7; 
W1i[0] = 16'd0;   W1i[1] = -16'd7; W1i[2] = -16'd8; W1i[3] = -16'd7;                        

W2r[0] = 16'd8; W2r[1] = 16'd0;   W2r[2] = 16'd8; W2r[3] = 16'd0;
W2i[0] = 16'd0; W2i[1] = -16'd8; W2i[2] = 16'd0;   W2i[3] = -16'd8;                                 


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
	shifti[0] <= xi;
	shifti[1] <=shifti[0];
	shifti[2] <=shifti[1];
	shifti[3] <=shifti[2];
	shifti[4] <=shifti[3];
	
	end
i <= i+1;
k <= k+1; 

w1r <= W1r[i];
w2r <= W2r[k]; 
w1i <= W1i[i];
w2i <= W2i[k]; 

//R1r <= ((w1r*bf1r2r) - (w1i*bf1r2i));///16'd32;  	//real
//R1i<= ((w1r*bf1r2i) + (w1i*bf1r2r));///16'd32;	//imag
R1r <= d1r1 - d1r2;
R1i <= d1i1 - d1i2;

R2r <= R1r;
R2i <= R1i;

R3r <= m1outr;
R3i <= m1outi;

R4r <= R3r;
R4i <= R3i;

//D1r[0]<= ((w2r*bf2r2r) - (w2i*bf2r2i))/2;///16'd32;
//D1i[0]<= ((w2r*bf2r2i) + (w2i*bf2r2r))/2;///16'd32;
D1r[0] <= d2r1 - d2r2;
D1i[0] <= d2i1 - d2i2;

D1r[1]<=D1r[0];
D1i[1]<=D1i[0];

D2r[0]<=m3outr;
D2i[0]<=m3outi;

D2r[1]<=D2r[0];
D2i[1]<=D2i[0];

cont2 <= ~cont2;

end

always@(posedge c)
begin  j <= j+1; cont1 <= j[0]; end

always@(posedge c)
begin
/*
X1r <= bf1r2r;
X1i <= d1r1;
X2r <= i;
X2i <= k;*/
X1r <= bf3r1r;
X1i <= bf3r1i;
X2r <= bf3r2r;
X2i <= bf3r2i;

end

mult mu1(w1r,bf1r2r,c,d1r1);
mult mu2(w1i,bf1r2i,c,d1r2);
mult mu3(w1r,bf1r2i,c,d1i1);
mult mu4(w1i,bf1r2r,c,d1i2);
mult mu5(w2r,bf2r2r,c,d2r1);
mult mu6(w2i,bf2r2i,c,d2r2);
mult mu7(w2r,bf2r2i,c,d2i1);
mult mu8(w2i,bf2r2r,c,d2i2);

butterfly bf1(shiftr[4],shifti[4],shiftr[0],shifti[0],c,bf1r1r,bf1r1i,bf1r2r,bf1r2i);
mux m1(bf1r1r,bf1r1i,R2r,R2i,cont1,m1outr,m1outi);
mux m2(R2r,R2i,bf1r1r,bf1r1i,cont1,m2outr,m2outi);
butterfly bf2(R4r,R4i,m2outr,m2outi,c,bf2r1r,bf2r1i,bf2r2r,bf2r2i);
mux m3(bf2r1r,bf2r1i,D1r[0],D1i[0],cont2,m3outr,m3outi);
mux m4(D1r[0],D1i[0],bf2r1r,bf2r1i,cont2,m4outr,m4outi);
butterfly bf3(D2r[0],D2i[0],m4outr,m4outi,c,bf3r1r,bf3r1i,bf3r2r,bf3r2i);

endmodule

module mux(i0r,i0i,i1r,i1i,cont,outr,outi);
input [0:15] i0r;
input [0:15] i0i;
input [0:15] i1r;
input [0:15] i1i;
input cont;
output reg signed [0:15] outr;
output reg signed [0:15] outi;

always@(*)
begin
if(cont == 0) begin outr<= i0r;outi<= i0i; end
else begin outr <= i1r; outi <= i1i; end
end

endmodule 