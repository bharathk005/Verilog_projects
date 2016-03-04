`timescale 1ns / 1ps

module sorter(ov1x,ov1y,ov1z,ov2x,ov2y,ov2z,ov3x,ov3y,ov3z,v1x,v1y,v1z,v2x,v2y,v2z,v3x,v3y,v3z,e,c);
output reg [0:3]ov1x;
output reg [0:3]ov1y;
output reg [0:3]ov1z;
output reg [0:3]ov2x;
output reg [0:3]ov2y;
output reg [0:3]ov2z;
output reg [0:3]ov3x;
output reg [0:3]ov3y;
output reg [0:3]ov3z;
input [0:3]v1x;
input [0:3]v1y;
input [0:3]v1z;
input [0:3]v2x;
input [0:3]v2y;
input [0:3]v2z;
input [0:3]v3x;
input [0:3]v3y;
input [0:3]v3z;
input e;
input c;


always@(posedge e)

begin
	 ov1x <= v1x;
	 ov1y <= v1y;
	 ov1z <= v1z;

	ov2x <= v2x;
	ov2y <= v2y;
	ov2z <= v2z;

	 ov3x <= v3x;
	 ov3y <= v3y;
	 ov3z <= v3z;
	
	if(v1x<v2x)
		begin
			if(v2x>v3x)
				begin
				ov2x <= ov3x;
				ov2y <= ov3y;
				ov2z <= ov3z;
				
				ov3x <= ov2x;
				ov3y <= ov2y;
				ov3z <= ov2z;
				
				end
		end
	else
		begin
			ov1x <= ov2x;
			ov1y <= ov2y;
			ov1z <= ov2z;
			
			ov2x <= ov1x;
			ov2y <= ov1y;
			ov2z <= ov1z;
			if(ov2x>ov3x) 
				begin	
				ov2x <= ov3x;
				ov2y <= ov3y;
				ov2z <= ov3z;
				
				ov3x <= ov2x;
				ov3y <= ov2y;
				ov3z <= ov2z;
				end
		end

end

vertex v1(ov1x,ov1y,ov1z,ov2x,ov2y,ov2z,c);
vertex v2(ov1x,ov1y,ov1z,ov3x,ov3y,ov3z,c);
vertex v3(ov2x,ov2y,ov2z,ov3x,ov3y,ov3z,c);



endmodule
