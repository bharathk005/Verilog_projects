`timescale 1ns / 1ps

module ALU(c,data,ready,ack,result,req,addrOut,dout);
input c;

input [0:15]data;
input ready;
input ack;
input result;
output reg [0:15]dout;
output reg req;
output reg [0:5]addrOut;

//reg [0:15]d1;
reg start;
reg [0:15]loc_rea[0:63];
reg [0:15]loc_img[0:63]; 
reg [0:15]rea[0:63];
reg [0:15]img[0:63]; 
reg [0:5]addr;
reg [0:5]addr1;
reg [0:5]addr2;
reg next;
reg done1,done2,done3,done4,done5,done6;
reg store1,store2,store3,store4,store5,store6;
reg hld1;
reg hld2;
reg N;
reg k;
reg updated;
reg e;
reg [0:15]in1;
reg [0:15]in2;
reg [0:15]in3;
reg [0:15]in4;
wire [0:15]rea1;
wire [0:15]rea2;
wire [0:15]img1;
wire [0:15]img2;

initial begin
start <= 0;
addr <= 0;
addr1 <= 0;
addr2 <= 6'd1; //addr2 <= 1;
hld1 <=0;
hld2 <=0;
next <= 0;
done1 <= 0;done2 <= 0;done3 <= 0;done4 <= 0;done5 <= 0;done6 <= 0;
store1 <= 1;store2 <= 1;store3 <= 1;store4 <= 1;store5 <= 1;store6 <= 1;
N <= 1;
k <= 1;
updated <= 1;
e<=0;
end

always@(posedge c)
addrOut <= addr;

always@(posedge c)
begin
	if(ready && updated && (~done1))begin req <= 1; updated <= 0; end
	if(ack) begin req <= 0;end

	if(result) 
	begin
		loc_rea[addr] <= data;
		loc_img[addr] <= 0;
		start <= 1;
		next <= 1;
	end

	if(next)
	begin
		addr <= addr + 6'b000001;
		next <= 0;
		updated <= 1;
		if(addr == 6'b111111) begin e <=1;done1 <= 1;  updated<=0; end
	end

	dout <= e;


	if(done1)
	begin
		if(!hld1 && !hld2) 
		begin
		store1 <= 0;
		addr1 <= addr1 + 6'd2;
		addr2 <= addr2 + 6'd2;
		in1 <= loc_rea[addr1];
		in2 <= loc_img[addr1];
		in3 <= loc_rea[addr2];
		in4 <= loc_img[addr2];
		//if(addr1 == 6'd30) hld1<=1;		//if(addr1 == 6'b111110) hld<=1;
		if(addr1 == 6'd62) hld2<=1;
		
		end
		if(hld1) begin addr1 <= 1;addr2 = 6'd33; store1 <= 1; hld1<=0; end
		if(hld2) begin store1 <= 1; done1 <=0; done2 <= 1; hld1 <= 0;hld2 <=0;  addr1 <= 0; addr2 <= 6'd2; end
	end
	
	
	if(done2)
	begin
		if(!hld1 && !hld2) 
		begin
		store2 <= 0;
		addr1 <= addr1 + 6'd4;
		addr2 <= addr2 + 6'd4;
		in1 <= rea[addr1];
		in2 <= img[addr1];
		in3 <= rea[addr2];
		in4 <= img[addr2];
		if(addr1 == 6'd60) hld1<=1;		//if(addr1 == 6'b111110) hld<=1;
		if(addr1 == 6'd61) hld2<=1;
		
		end
		if(hld1) begin addr1 <= 1;addr2 = 6'd3; store2 <= 1; hld1<=0; end
		if(hld2) begin store2 <= 1; done2 <=0; done3 <= 1; hld1 <= 0;hld2 <=0;  addr1 <= 0; addr2 <= 6'd4; end
	end
	
	
	if(done3)
	begin
		if(!hld1 && !hld2) 
		begin
		store3 <= 0;
		addr1 <= addr1 + 6'd8;
		addr2 <= addr2 + 6'd8;
		in1 <= loc_rea[addr1];
		in2 <= loc_img[addr1];
		in3 <= loc_rea[addr2];
		in4 <= loc_img[addr2];
		if(addr1 == 6'd56) hld1<=1;		//if(addr1 == 6'b111110) hld<=1;
		if(addr1 == 6'd57) hld1<=1;
		if(addr1 == 6'd58) hld1<=1;
		
		if(addr1 == 6'd59) hld2<=1;
		end
		
		if(hld1) 
		begin  if(addr1 - 6'd8 == 6'd56) begin addr1 <= 6'd1;addr2 = 6'd5; end
				 if(addr1 - 6'd8 == 6'd57) begin addr1 <= 6'd2;addr2 = 6'd6; end
				 if(addr1 - 6'd8 == 6'd58) begin addr1 <= 6'd3;addr2 = 6'd7; end
		store3 <= 1; hld1<=0; 
		end
		
		if(hld2) begin store3 <= 1; done3 <=0; done4 <= 1; hld1 <= 0;hld2 <=0;  addr1 <= 0; addr2 <= 6'd8;  end
	
	end

	if(done4)
	begin
		if(!hld1 && !hld2) 
		begin
		store4 <= 0;
		addr1 <= addr1 + 6'd16;
		addr2 <= addr2 + 6'd16;
		in1 <= rea[addr1];
		in2 <= img[addr1];
		in3 <= rea[addr2];
		in4 <= img[addr2];
		if(addr1 == 6'd48) hld1<=1;		
		if(addr1 == 6'd49) hld1<=1;
		if(addr1 == 6'd50) hld1<=1;
		if(addr1 == 6'd51) hld1<=1;		
		if(addr1 == 6'd52) hld1<=1;
		if(addr1 == 6'd53) hld1<=1;
		if(addr1 == 6'd54) hld1<=1;

		
		if(addr1 == 6'd55) hld2<=1;
		end
		
		if(hld1) 
		begin  if(addr1 - 6'd16 == 6'd48) begin addr1 <= 6'd1;addr2 = 6'd9; end
				 if(addr1 - 6'd16 == 6'd49) begin addr1 <= 6'd2;addr2 = 6'd10; end
				 if(addr1 - 6'd16 == 6'd50) begin addr1 <= 6'd3;addr2 = 6'd11; end
				 if(addr1 - 6'd16 == 6'd51) begin addr1 <= 6'd4;addr2 = 6'd12; end
				 if(addr1 - 6'd16 == 6'd52) begin addr1 <= 6'd5;addr2 = 6'd13; end
				 if(addr1 - 6'd16 == 6'd53) begin addr1 <= 6'd6;addr2 = 6'd14; end
				 if(addr1 - 6'd16 == 6'd54) begin addr1 <= 6'd7;addr2 = 6'd15; end
				 
		store4 <= 1; hld1<=0; 
		end
		
		if(hld2) begin store4 <= 1; done4 <=0; done5 <= 1; hld1 <= 0;hld2 <=0;  addr1 <= 0; addr2 <= 6'd16;  end
	
	end
	
	if(done5)
	begin
		if(!hld1 && !hld2) 
		begin
		store5 <= 0;
		addr1 <= addr1 + 6'd32;
		addr2 <= addr2 + 6'd32;
		in1 <= loc_rea[addr1];
		in2 <= loc_img[addr1];
		in3 <= loc_rea[addr2];
		in4 <= loc_img[addr2];
		if(addr1 == 6'd32) hld1<=1;		
		if(addr1 == 6'd33) hld1<=1;
		if(addr1 == 6'd34) hld1<=1;
		if(addr1 == 6'd35) hld1<=1;		
		if(addr1 == 6'd36) hld1<=1;
		if(addr1 == 6'd37) hld1<=1;
		if(addr1 == 6'd38) hld1<=1;
		if(addr1 == 6'd39) hld1<=1;		
		if(addr1 == 6'd40) hld1<=1;
		if(addr1 == 6'd41) hld1<=1;
		if(addr1 == 6'd42) hld1<=1;		
		if(addr1 == 6'd43) hld1<=1;
		if(addr1 == 6'd44) hld1<=1;
		if(addr1 == 6'd45) hld1<=1;
		if(addr1 == 6'd46) hld1<=1;
		
		if(addr1 == 6'd47) hld2<=1;
		end
		
		if(hld1) 
		begin  if(addr1 - 6'd32 == 6'd32) begin addr1 <= 6'd1;addr2 = 6'd17; end
				 if(addr1 - 6'd32 == 6'd33) begin addr1 <= 6'd2;addr2 = 6'd18; end
				 if(addr1 - 6'd32 == 6'd34) begin addr1 <= 6'd3;addr2 = 6'd19; end
				 if(addr1 - 6'd32 == 6'd35) begin addr1 <= 6'd4;addr2 = 6'd20; end
				 if(addr1 - 6'd32 == 6'd36) begin addr1 <= 6'd5;addr2 = 6'd21; end
				 if(addr1 - 6'd32 == 6'd37) begin addr1 <= 6'd6;addr2 = 6'd22; end
				 if(addr1 - 6'd32 == 6'd38) begin addr1 <= 6'd7;addr2 = 6'd23; end
				 if(addr1 - 6'd32 == 6'd39) begin addr1 <= 6'd8;addr2 = 6'd24; end
				 if(addr1 - 6'd32 == 6'd40) begin addr1 <= 6'd9;addr2 = 6'd25; end
				 if(addr1 - 6'd32 == 6'd41) begin addr1 <= 6'd10;addr2 = 6'd26; end
				 if(addr1 - 6'd32 == 6'd42) begin addr1 <= 6'd11;addr2 = 6'd27; end
				 if(addr1 - 6'd32 == 6'd43) begin addr1 <= 6'd12;addr2 = 6'd28; end
				 if(addr1 - 6'd32 == 6'd44) begin addr1 <= 6'd13;addr2 = 6'd29; end
				 if(addr1 - 6'd32 == 6'd45) begin addr1 <= 6'd14;addr2 = 6'd30; end
				 if(addr1 - 6'd32 == 6'd46) begin addr1 <= 6'd15;addr2 = 6'd31; end
		
		store5 <= 1; hld1<=0; 
		end
		
		if(hld2) begin store5 <= 1; done5 <=0; done6 <= 1; hld1 <= 0;hld2 <=0;  addr1 <= 0; addr2 <= 6'd32;  end
	
	end

	if(done6)
	begin
		if(!hld1 && !hld2) 
		begin
		store6 <= 0;
		addr1 <= addr1 + 6'd1;
		addr2 <= addr2 + 6'd1;
		in1 <= rea[addr1];
		in2 <= img[addr1];
		in3 <= rea[addr2];
		in4 <= img[addr2];
		//if(addr1 == 6'd15) hld1<=1;		
		
		if(addr1 == 6'd31) hld2<=1;
		end
	//	if(hld1) begin addr1 <= 6'd1;addr2 = 6'd17; store6 <= 1; hld1<=0; end
		if(hld2) begin store6 <= 1; done6 <=0;  hld1 <= 0;hld2 <=0;  end
	end
	
end

always@(posedge c)
begin

if(!store1)
begin
rea[addr1 - 6'd2] <= rea1;
img[addr1 - 6'd2] <= img1;
rea[addr2 - 6'd2] <= rea2;
img[addr2 - 6'd2] <= img2;
end

if(!store2)
begin
loc_rea[addr1 - 6'd4] <= rea1;
loc_img[addr1 - 6'd4] <= img1;
loc_rea[addr2 - 6'd4] <= rea2;
loc_img[addr2 - 6'd4] <= img2;
end
 
if(!store3)
begin
rea[addr1 - 6'd8] <= rea1;
img[addr1 - 6'd8] <= img1;
rea[addr2 - 6'd8] <= rea2;
img[addr2 - 6'd8] <= img2;
end

if(!store4)
begin
loc_rea[addr1 - 6'd16] <= rea1;
loc_img[addr1 - 6'd16] <= img1;
loc_rea[addr2 - 6'd16] <= rea2;
loc_img[addr2 - 6'd16] <= img2;
end

if(!store5)
begin
rea[addr1 - 6'd32] <= rea1;
img[addr1 - 6'd32] <= img1;
rea[addr2 - 6'd32] <= rea2;
img[addr2 - 6'd32] <= img2;
end

if(!store6)
begin
loc_rea[addr1 - 6'd1] <= rea1;
loc_img[addr1 - 6'd1] <= img1;
loc_rea[addr2 - 6'd1] <= rea2;
loc_img[addr2 - 6'd1] <= img2;
end

end
butterfly b1(in1,in2,in3,in4,N,k,e,c,rea1,img1,rea2,img2);

endmodule
