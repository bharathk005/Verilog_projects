module sdf_fft_64pt(in,clk,tw,cnt1,cnt2,mxcv1,mxcv2,mxcv3,mxcv4,mxcv5,mycv1,mycv2,mycv3,mycv4,mycv5,ctrl,o);

input [31:0]in;
input [19:0]tw;
input clk,cnt1,cnt2,mxcv1,mxcv2,mxcv3,mxcv4,mxcv5,mycv1,mycv2,mycv3,mycv4,mycv5,ctrl;
output [31:0]o;

wire [31:0] s,d,b1,b2;

bf2_64 ob2(b1,b2,ctrl,tw,s,d);
onekf_64 o2(in,s,d,clk,cnt1,cnt2,mxcv1,mxcv2,mxcv3,mxcv4,mxcv5,mycv1,mycv2,mycv3,mycv4,mycv5,b1,b2);

assign o=s;
endmodule
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module onekf_64( a,s,d,clk,cnt1,cnt2,mxcv1,mxcv2,mxcv3,mxcv4,mxcv5,mycv1,mycv2,mycv3,mycv4,mycv5,mbxv6,mbyv6
    );


input [31:0]a,s,d;
input clk,cnt1,cnt2,mxcv1,mxcv2,mxcv3,mxcv4,mxcv5,mycv1,mycv2,mycv3,mycv4,mycv5;
output [31:0]mbxv6,mbyv6;
 

wire [31:0]m1,m2;
wire [31:0]mxv1,mxv2,mxv3,mxv4,mxv5;

wire [31:0]mbxv1,mbxv2,mbxv3,mbxv4,mbxv5,mbxv6;
wire [31:0]mbyv1,mbyv2,mbyv3,mbyv4,mbyv5,mbyv6;

munit a_ml(d,a,cnt1,m1);
sr_32 b_s32(clk,m1,mbyv1);
munit c_mo(s,mbyv1,cnt2,m2);

sr_16 d_s16(clk,m2,mbxv1);
gunit e_gu1(s,mbxv1,mbyv1,mxcv1,mycv1,mxv1,mbyv2);

sr_8 f_s8(clk,mxv1,mbxv2);
gunit g_gu2(s,mbxv2,mbyv2,mxcv2,mycv2,mxv2,mbyv3);

sr_4 h_s4(clk,mxv2,mbxv3);
gunit i_gu3(s,mbxv3,mbyv3,mxcv3,mycv3,mxv3,mbyv4);

sr_2 j_s2(clk,mxv3,mbxv4);
gunit k_gu4(s,mbxv4,mbyv4,mxcv4,mycv4,mxv4,mbyv5);

sr_1 l_s1a(clk,mxv4,mbxv5);
gunit m_gu5(s,mbxv5,mbyv5,mxcv5,mycv5,mxv5,mbyv6);

sr_1 n_s1b(clk,mxv5,mbxv6);

endmodule
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module munit( m1,m2,ctrl,mo
    );
     
     input [31:0]m1;
    input [31:0]m2;
     input ctrl;
    output reg [31:0]mo;
     
    always @ (m1 or m2 or ctrl)
    if(ctrl==0)
    mo<=m1;
    else
    mo<=m2;

endmodule

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module gunit( a1,b1,c1,mxc,myc,mx,my
    );

input [31:0]a1,b1,c1;
input mxc,myc;
output reg [31:0]mx;
output reg [31:0]my;

    always @ (a1 or b1 or mxc)
    if(mxc==0)
    mx<=a1;
    else
    mx<=b1;
   

    always @ (b1 or c1 or myc)
    if(myc==0)
    my<=b1;
    else
    my<=c1;
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module bf_64( a, b, ctrl, tw, c, d );

input [31:0]a;
input [31:0]b;
input ctrl;
input [19:0]tw;
output reg [31:0]c;
output [31:0]d;
wire [31:0]d1;

always @ (a or b or ctrl)
if(ctrl==0)
begin
c[31:16]<=a[31:16]+b[31:16];
c[15:0]<=a[15:0]+b[15:0];
end
else
c<=a;
assign d1[31:16]=a[31:16]-b[31:16];
assign d1[15:0]=a[15:0]-b[15:0];
assign d[31:16]=d1[31:16]*tw[19:10]-d1[15:0]*tw[9:0];
assign d[15:0]=d1[31:16]*tw[9:0]+d1[15:0]*tw[19:10];

endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module bf1_64( a, b, ctrl, tw, c, d );

input [31:0]a;
input [31:0]b;
input ctrl;
input [19:0]tw;
output reg [31:0]c;
output [31:0]d;
wire [31:0]d1;
wire [25:0]d2,d3;

always @ (a or b or ctrl)
if(ctrl==0)
begin
c[31:16]<=a[31:16]+b[31:16];
c[15:0]<=a[15:0]+b[15:0];
end
else
c<=a;
assign d1[31:16]=a[31:16]-b[31:16];
assign d1[15:0]=a[15:0]-b[15:0];
assign d2[25:0]=d1[31:16]*tw[19:10]-d1[15:0]*tw[9:0];
assign d3[25:0]=d1[31:16]*tw[9:0]+d1[15:0]*tw[19:10];
assign d[31:0]={d2[24:9],d3[24:9]};
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module bf2_64( a, b, ctrl, tw, c, d );

input [31:0]a;
input [31:0]b;
input ctrl;
input [19:0]tw;

output reg [31:0]c;
output [31:0]d;
wire [31:0]d1;

always @ (a or b or ctrl)
if(ctrl==0)
begin
c[31:16]<=a[31:16]+b[31:16];
c[15:0]<=a[15:0]+b[15:0];
end
else
c<=a;
assign d1[31:16]=a[31:16]-b[31:16];
assign d1[15:0]=a[15:0]-b[15:0];

mult_tw tw1(d1,tw,d);
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module mult(x,y,z);
input signed[15:0] x;
input signed[9:0]y;
output signed[25:0] z;

assign z=x*y;
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module mult_tw(a,tw,z);
input signed[31:0] a;
input signed[19:0]tw;
output signed[31:0] z;
wire [25:0]p1,p2,p3,p4;
wire [26:0]s1,s2;

mult m1(a[31:16],tw[19:10],p1);
mult m2(a[15:0],tw[9:0],p2);
mult m3(a[31:16],tw[9:0],p3);
mult m4(a[15:0],tw[19:10],p4);

assign s1[26:0]=p1-p2;
assign s2[26:0]=p3+p4;
assign z[31:0]={s1[23:8],s2[23:8]};
endmodule
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module sr_32(CLK,DATA_IN,BYTE_OUT
);


input CLK;
input [31:0]DATA_IN;
output [31:0] BYTE_OUT;

reg [31:0] byteShiftReg[31:0];
integer i;

always @ (posedge CLK)
byteShiftReg[0]<=DATA_IN;

always @(posedge CLK)
begin

for(i=1;i<32;i=i+1)
byteShiftReg[i] <= byteShiftReg[i-1];
end
 
assign BYTE_OUT = byteShiftReg[31];

endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module sr_16(CLK,DATA_IN,BYTE_OUT
);


input CLK;
input [31:0]DATA_IN;
output [31:0] BYTE_OUT;


reg [31:0] byteShiftReg[15:0];
integer i;

always @ (posedge CLK)
byteShiftReg[0]<=DATA_IN;

always @(posedge CLK)
begin

for(i=1;i<16;i=i+1)
byteShiftReg[i] <= byteShiftReg[i-1];
end
 
assign BYTE_OUT = byteShiftReg[15];

endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module sr_8(CLK,DATA_IN,BYTE_OUT
);


input CLK;
input [31:0]DATA_IN;
output [31:0] BYTE_OUT;


reg [31:0] byteShiftReg[7:0];
integer i;

always @ (posedge CLK)
byteShiftReg[0]<=DATA_IN;

always @(posedge CLK)
begin

for(i=1;i<8;i=i+1)
byteShiftReg[i] <= byteShiftReg[i-1];
end
 
assign BYTE_OUT = byteShiftReg[7];

endmodule

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module sr_4(CLK,DATA_IN,BYTE_OUT
);


input CLK;
input [31:0]DATA_IN;
output [31:0] BYTE_OUT;


reg [31:0] byteShiftReg[3:0];
integer i;

always @ (posedge CLK)
byteShiftReg[0]<=DATA_IN;

always @(posedge CLK)
begin

for(i=1;i<4;i=i+1)
byteShiftReg[i] <= byteShiftReg[i-1];
end
 
assign BYTE_OUT = byteShiftReg[3];

endmodule


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module sr_2(CLK,DATA_IN,BYTE_OUT
);


input CLK;
input [31:0]DATA_IN;
output [31:0] BYTE_OUT;

reg [31:0] byteShiftReg[1:0];
integer i;

always @ (posedge CLK)
byteShiftReg[0]<=DATA_IN;

always @(posedge CLK)
begin

for(i=1;i<2;i=i+1)
byteShiftReg[i] <= byteShiftReg[i-1];
end
 
assign BYTE_OUT = byteShiftReg[1];

endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module sr_1(CLK,DATA_IN,BYTE_OUT
);


input CLK;
input [31:0]DATA_IN;
output [31:0] BYTE_OUT;

reg [31:0] byteShiftReg;


always @ (posedge CLK)
byteShiftReg<=DATA_IN;

 
assign BYTE_OUT = byteShiftReg;

endmodule
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
