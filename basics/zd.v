`timescale 1ns / 1ps

module zd(
    output reg y,
    input x,
    input c,
    input r
    );

reg [1:0] st,n_st;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;

always@ (posedge c, posedge r)
if(r) st <= s0;
else  st<=n_st;

always@(st,x)
case(st)

s0: if(x) n_st=s1;
	 else n_st=s0;
s1: if(x) n_st=s2;
	 else n_st =s0;

s2: if(x) n_st=s3;
	 else n_st =s0;
s3: if(x) n_st=s3;
	 else n_st =s0;
	 
endcase

always@(st,x)
case(st)
s0: y=0;
s1,s2,s3: y=~x;
endcase

endmodule
