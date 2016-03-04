`timescale 1ns / 1ps

module fft1(
			output reg y0,
			output reg y1,
			output reg y2,
			output reg y3,
			output reg y4,
			output reg y5,
			output reg y6,
			output reg y7,
			input [0:1] x ,
			input r,
			input c,
			input e,
			input [0:2]s
    );
	 
wire [0:1] i[0:7];
wire [0:1] j[0:7];
wire [0:1] wyi [0:7];

reg [0:1] xi[0:7];
reg [0:1] yi[0:7];

integer n=0;
integer k;

	always@(posedge c)	
	begin
	if(e)
		begin
				if(r)
				begin
				for(k=0;k<8;k=k+1)
				begin
				xi[n]<=2'b00;
				end
				end
		
		
				else
				begin
					xi[n]<=x;
						if(n==7)
							begin n=0;
		
							end
									
						else n=n+1;
				end
		 end
	
	end
butter1 b1(i[0],i[1],xi[0],xi[4],s[0]);
butter1 b2(i[2],i[3],xi[2],xi[6],s[0]);
butter1 b3(i[4],i[5],xi[1],xi[5],s[0]);
butter1 b4(i[6],i[7],xi[3],xi[7],s[0]);

butter1 b5(j[0],j[2],i[0],i[2],s[1]);
butter1 b6(j[1],j[3],i[1],i[3],s[1]);
butter1 b7(j[4],j[6],i[4],i[6],s[1]);
butter1 b8(j[5],j[7],i[5],i[7],s[1]);

butter1 b9 (wyi[0],wyi[4],j[0],j[4],s[2]);
butter1 b10(wyi[1],wyi[5],j[1],j[5],s[2]);
butter1 b11(wyi[2],wyi[6],j[2],j[6],s[2]);
butter1 b12(wyi[3],wyi[7],j[3],j[7],s[2]);




always@(wyi[3])
begin
yi[3]<=wyi[3];
y3 <= yi[3];
end
always@(wyi[7])
begin
yi[7]<=wyi[7];
y7 <= yi[7];
end
always@(wyi[0])
begin
yi[0]<=wyi[0];
y0 <= yi[0];
end
always@(wyi[4])
begin
yi[4]<=wyi[4];
y4 <= yi[4];
end
always@(wyi[2])
begin
yi[2]<=wyi[2];
y2 <= yi[2];
end
always@(wyi[6])
begin
yi[6]<=wyi[6];
y6 <= yi[6];
end
always@(wyi[1])
begin
yi[1]<=wyi[1];
y1 <= yi[1];
end
always@(wyi[5])
begin
yi[5]<=wyi[5];
y5 <= yi[5];
end
endmodule


module butter1(
					output reg [0:1] u1,
					output reg [0:1] u2,
					input  [0:1] v1,
					input  [0:1] v2,
					input s
		
);
always@(posedge s)
begin
	 u1= v1+v2;
	 u2= v1-v2;
end
endmodule 