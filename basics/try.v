`timescale 1ns / 1ps

module try(output  a,
				input x
    
	 
	 );
always@(a)
begin
while(x)
assign a=x+1;

assign a=0;
end
endmodule 