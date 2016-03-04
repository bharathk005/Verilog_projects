`timescale 1ns / 1ps
//takes parameter as starting address 
module vertex(v1x,v1y,v1z,v2x,v2y,v2z,c);
input [0:3]v1x;
input [0:3]v1y;
input [0:3]v1z;
input [0:3]v2x;
input [0:3]v2y;
input [0:3]v2z;
input c;

reg e;
reg state;

reg [0:3] i;



reg [0:3] j;
reg [0:3] l;



reg [0:3] c1[0:2];
reg [0:3] c2[0:2];

	
reg [0:3] x[0:200];
reg [0:3] y[0:200];
wire [0:3] m;






initial 
begin
	
	 c1[0] <= v1x;
	 c1[1] <= v1y;
	 c1[2] <= v1z;

	c2[0] <= v2x;
	c2[1] <= v2y;
	c2[2] <= v2z;
		e <= 1;
		i <= 0;
		state <= 0;
	 j <= v1x;
	 l <= v2x;

end

divider u1(m,(c2[1]-c1[1]),(c2[0]-c1[0]),c);	
	

always@(state)
begin

			x[i] <= j;
			j <= j+ 4'b0001;
			y[i] <= (m*(x[i] - c1[0])) + c1[1] ;
			i <= i+1;
	
end

always@(posedge c)
begin
	if(e)
	begin
	if(l >= j)begin state<= ~state; end
	else begin e <=0; end
	end
end

parameter [0:3]d11 = 0;
genvar i1;
generate
	for(i1 = d11; i1 < (i1+d11) ;i1=i1+1)
	begin:g2
		globalMem U(x[i1],y[i1]);
	end
endgenerate

endmodule

