`timescale 1ns / 1ps

module old_vertex1(v1x,v1y,v1z,v2x,v2y,v2z,e,c);
input [0:3]v1x;
input [0:3]v1y;
input [0:3]v1z;
input [0:3]v2x;
input [0:3]v2y;
input [0:3]v2z;
input c;
input e;


parameter d1 = 0;
parameter d2 = 21;


reg [0:3] j;
reg [0:3] l;



reg [0:3] c1[0:2];
reg [0:3] c2[0:2];

	
reg [0:3] x[0:200];
reg [0:3] y[0:200];
wire [0:3] m;

integer i;




initial 
begin
	
	 c1[0] <= v1x;
	 c1[1] <= v1y;
	 c1[2] <= v1z;

	c2[0] <= v2x;
	c2[1] <= v2y;
	c2[2] <= v2z;


end

divider u1(m,(c2[1]-c1[1]),(c2[0]-c1[0]),c);	
	

always@(posedge e)
begin
	 j <= c1[0];
	 l <= c2[0];

	for(i = d1;i<=d2; i=i+1)
//	while(l >= j)
		begin
			x[i] <= j;
			j <= j+ 4'b0001;
		//	i = i+1;
		end


	

	
	for(i = d1; i< d2 ;i=i+1)
	begin
	
		y[i] <= (m*(x[i] - c1[0])) + c1[1] ;

	
	end
end

genvar i1;
generate
	for(i1 = d1; i1< d2 ;i1=i1+1)
	begin:g2
		globalMem U(x[i1],y[i1]);
	end	
endgenerate

endmodule
