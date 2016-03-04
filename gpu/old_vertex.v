`timescale 1ns / 1ps

module old_vertex(v,v1x,v1y,v1z,v2x,v2y,v2z,v3x,v3y,v3z,e);

output reg v;

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

reg [0:3] n;
reg [0:3] j;

reg [0:7] T[0:60];
reg [0:3] c1[0:2];
reg [0:3] c2[0:2];
reg [0:3] c3[0:2];
reg [0:3] x[0:20];
reg [0:3] y[0:20];
reg [0:3] m;

integer i;
integer t ;


 

always@(posedge e)

begin
	 c1[0] <= v1x;
	 c1[1] <= v1y;
	 c1[2] <= v1z;

	c2[0] <= v2x;
	c2[1] <= v2y;
	c2[2] <= v2z;

	 c3[0] <= v3x;
	 c3[1] <= v3y;
	 c3[2] <= v3z;
	
	if(v1x<v2x)
		begin
			if(v2x>v3x)
				begin
				c2[0] <= c3[0];
				c2[1] <= c3[1];
				c2[2] <= c3[2];
				
				c3[0] <= c2[0];
				c3[1] <= c2[1];
				c3[2] <= c2[2];
				
				end
		end
	else
		begin
			c1[0] <= c2[0];
			c1[1] <= c2[1];
			c1[2] <= c2[2];
			
			c2[0] <= c1[0];
			c2[1] <= c1[1];
			c2[2] <= c1[2];
			if(c2[0]>c3[0]) 
				begin	
				c2[0] <= c3[0];
				c2[1] <= c3[1];
				c2[2] <= c3[2];
				
				c3[0] <= c2[0];
				c3[1] <= c2[1];
				c3[2] <= c2[2];
				end
		end

	
	
	 assign t =0;
	 
	
	
///first line	(below)
	assign i =0;
	for (j = c1[0] ; j <=c2[0] ;j=j+1 )
		begin
			x[i] = j;
			i = i+1;
		end
	n = c2[0] - c1[0];
	m <= (c2[1] - c1[1]) / (c2[0]-c1[0]);
	for(i = 0; i<= 20;i=i+1)
	begin
	
	y[i] <= (m*(x[i] - c1[0])) + c1[1] ;
	T[t][0:3] <=x[i];
	T[t][4:7] <=y[i];
	assign t=t+1;
	
	end
	$display("t=%d",t);
////firsl line completed	(above)	
	

		c2[0] <= c3[0];
		c2[1] <= c3[1];
		c2[2] <= c3[2];
				
		c3[0] <= c2[0];
		c3[1] <= c2[1];
		c3[2] <= c2[2];
///second line	(below)
	assign i=0;
	for (j = c1[0] ; j <=c2[0] ;j=j+1 )
		begin
			x[i] = j;
			i = i+1;
		end
	n = c2[0] - c1[0];
	m <= (c2[1] - c1[1]) / (c2[0]-c1[0]);
	for(i = 0; i<= 20;i=i+1)
	begin
	
	y[i] <= (m*(x[i] - c1[0])) + c1[1] ;
	T[t][0:3] <=x[i];
	T[t][4:7] <=y[i];
	assign t=t+1;
	
	end
	$display("t1=%d",t);
// secondline completed above

		
		c1[0] <= c3[0];
		c1[1] <= c3[1];
		c1[2] <= c3[2];
				
		c3[0] <= c1[0];
		c3[1] <= c1[1];
		c3[2] <= c1[2];

// third line below

	assign i=0;
	for (j = c1[0] ; j <=c2[0] ;j=j+1 )
		begin
			x[i] = j;
			i = i+1;
		end
	n = c2[0] - c1[0];
	m <= (c2[1] - c1[1]) / (c2[0]-c1[0]);
	for(i = 0; i<= 20;i=i+1)
	begin
	
	y[i] <= (m*(x[i] - c1[0])) + c1[1] ;
	T[t][0:3] <=x[i];
	T[t][4:7] <=y[i];
	assign t=t+1;
	
	end
	$display("t2=%d",t);
//third line completed above

end
endmodule
