`timescale 1ns / 1ps



module fft1_test;

	wire y0;
	wire y1;
	wire y2;
	wire y3;
	wire y4;
	wire y5;
	wire y6;
	wire y7;
	reg [0:1] x;
	reg r;

	reg c;
	reg e;
	reg [0:2]s;

	
	fft1 uut (
		.y0(y0),
		.y1(y1),
		.y2(y2),
		.y3(y3),
		.y4(y4),
		.y5(y5),
		.y6(y6),
		.y7(y7),
		.x(x), 
		.r(r),
		.c(c),
		.e(e),
		.s(s)
	);

	initial begin
		
		x = 0;
		r = 1;
		e=0;
		s=0;
		c=0;
		#10;
		r=0;
		
		
		#10.25;
		e=1;

		x=2'b01;
   #1   x=2'b00;
	#1	x=2'b00;		
	#1   x=2'b00;
	#1	x=2'b00;
	#1	x=2'b00;
	#1	x=2'b00;
	#1	x=2'b01;
	#0.5 e=0;
	#1 s[0]=1;
	#1 s=0;
	#1 s[1]=1;
	#1 s=0;
	#1 s[2]=1;
	#1 s=0;
	
	
	
		#9.5;
		
		e=1;
		x=2'b01;
   #1 x=2'b00;
	#1	x=2'b01;		
	#1	x=2'b00;
	#1	x=2'b01;
	#1	x=2'b00;
	#1	x=2'b01;
	#1	x=2'b00;
	#0.5 e=0;
	#1 s[0]=1;
	#1 s=0;
	#1 s[1]=1;
	#1 s=0;
	#1 s[2]=1;
	#1 s=0;
		
	#9.5;
		
			e=1;
		x=2'b01;
   #1  x=2'b00;
	#1	x=2'b00;		
	#1	x=2'b00;
	#1	x=2'b00;
	#1	x=2'b00;
	#1	x=2'b00;
	#1	x=2'b00;
	#0.5 e=0;
	#1 s[0]=1;
	#1 s=0;
	#1 s[1]=1;
	#1 s=0;
	#1 s[2]=1;
	#1 s=0;
		//integer in;
	//for(in=0;in<9;in=in+1)
	//$display("%b/n",yi[in]);
	
		
	
	end
	always #0.5 c=~c;
      
endmodule 