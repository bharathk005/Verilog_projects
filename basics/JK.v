`timescale 1ns / 1ps

module JK(
    input j,
    input k,
    input c,
    input r,
    output reg q,
    output reg q0
    );

always @(posedge c,posedge r)
begin
if(r) begin
	q<=1'b0;
	q0 <= 1'b1;
	end
else
case({j,k})
	2'b00:begin q<=q;q0<=q0; end
	2'b01:begin q<=0;q0<=1; end
	2'b10:begin q<=1;q0<=0;end
	2'b11:begin q<=!q;q0<=~q0;end
endcase

end

endmodule
