`timescale 1ns / 1ps

module butterfly(i1r,i1i,i2r,i2i,c,r1r,r1i,r2r,r2i);
input [0:15]i1r;
input [0:15]i1i;
input [0:15]i2r;
input [0:15]i2i;
input c;
output reg signed [0:15]r1r;
output reg signed [0:15]r2r;
output reg signed [0:15]r1i;
output reg signed [0:15]r2i;

always@(*) 
begin
 r1r <= i1r + i2r;			//real
 r1i <= i1i + i2i;		//imag
 r2r <= i1r - i2r;			//real
 r2i <= i1i - i2i;		//imag

/*
 r1r[0:2] <= i1r[0:2] + i2r[0:2];			//real
 r1i[0:2] <= i1i[0:2] + i2i[0:2];        //imag
		if(i1r[0:2]+i2r[0:2]<=3'b111)
		begin
			r1r[3:15] <= i1r[3:15] + i2r[3:15];			//real
		end
		else 
		begin
			r1r[3:15] <= i1r[3:15] + i2r[3:15]+1;			//real
		end
		
		if(i1i[0:2]+i2i[0:2]<=3'b111)
		begin
			r1i[3:15] <= i1i[3:15] + i2i[3:15];        //imag
		end
		else 
		begin
			r1i[3:15] <= i1i[3:15] + i2i[3:15]+1;        //imag
		end
		
 r2r[0:2] <= i1r[0:2] - i2r[0:2];			//real
 r2i[0:2] <= i1i[0:2] - i2i[0:2];		//imag

		if(i1r[0:2] - i2r[0:2] >=0)
		begin
		r2r[3:15] <= i1r[3:15] - i2r[3:15];
		end
		else 
		begin
		r2r[3:15] <= i1r[3:15] - i2r[3:15]-1;
		end
		
		if(i1i[0:2] - i2i[0:2] >=0)
		begin
		r2i[3:15] <= i1i[3:15] - i2i[3:15];
		end
		else 
		begin
		r2i[3:15] <= i1i[3:15] - i2i[3:15]-1;
		end
*/
end

endmodule
