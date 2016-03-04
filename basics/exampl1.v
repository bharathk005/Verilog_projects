`timescale 1ns / 100ps

module exampl1(
    output reg E,
    input  A,
    input B
    );
	 //a=clk;b=reset;
	always @(posedge A or posedge B)
		if(B)
			begin 
				assign E=1'b0;
			end
		else
			begin
				assign E=~E;
			end
	endmodule

module ripp_car_count(output [3:0] E,
							input A,
							input B);
	exampl1 tff0(E[0],A,B);
	exampl1 tff1(E[1],E[0],B);
	exampl1 tff2(E[2],E[1],B);
	exampl1 tff3(E[3],E[2],B);
	
endmodule
	