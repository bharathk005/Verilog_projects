`timescale 1ns / 1ps

module fft(
		output [0:7]y,
		input [0:7] x
   );
wire [0:7] i=0;
wire [0:7] j=0;

butter b1(i[0:1],{x[0],x[4]},1);
butter b2(i[2:3],{x[2],x[6]},1);
butter b3(i[4:5],{x[1],x[5]},1);
butter b4(i[6:7],{x[3],x[7]},1);


butter b6({j[0],j[2]},{i[0],i[2]},1);
butter b7({j[1],j[3]},{i[1],i[3]},1);
butter b8({j[4],j[6]},{i[4],i[6]},1);
butter b9({j[5],j[7]},{i[5],i[7]},1);

butter b10({y[0],y[4]},{j[0],j[4]},1);
butter b11({y[1],y[5]},{j[1],j[5]},1);
butter b12({y[2],y[6]},{j[2],j[6]},1);
butter b13({y[3],y[7]},{j[3],j[7]},1);
endmodule



module butter(
				
				output[0:1] u,
				input [0:1] v,
				input w
				);
assign u[0]=v[0]+(w*v[1]);
assign u[1]=v[0]-(w*v[1]);

				
endmodule 