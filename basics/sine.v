`timescale 1ns / 1ps

module sine(
    cos_z0,
    sin_z0,
    done,
    z0,
    start,
    clock,
    reset
);

output signed [19:0] cos_z0;
reg signed [19:0] cos_z0;
output signed [19:0] sin_z0;
reg signed [19:0] sin_z0;
output done;
reg done;
input signed [19:0] z0;
input start;
input clock;
input reset;



always @(posedge clock or posedge reset) begin: _SineComputer_processor
    reg [5-1:0] i;
    reg [1-1:0] state;
    reg signed [20-1:0] dz;
    reg signed [20-1:0] dx;
    reg signed [20-1:0] dy;
    reg signed [20-1:0] y;
    reg signed [20-1:0] x;
    reg signed [20-1:0] z;
    if (reset) begin
        state = 1'b0;
        cos_z0 <= 1;
        sin_z0 <= 0;
        done <= 0;
        x = 0;
        y = 0;
        z = 0;
        i = 0;
    end
    else begin
        // synthesis parallel_case full_case
        casez (state)
            1'b0: begin
                if (start) begin
                    x = 159188;
                    y = 0;
                    z = z0;
                    i = 0;
                    done <= 0;
                    state = 1'b1;
                end
            end
            1'b1: begin
                dx = $signed(y >>> $signed({1'b0, i}));
                dy = $signed(x >>> $signed({1'b0, i}));
                // synthesis parallel_case full_case
                case (i)
                    0: dz = 205887;
                    1: dz = 121542;
                    2: dz = 64220;
                    3: dz = 32599;
                    4: dz = 16363;
                    5: dz = 8189;
                    6: dz = 4096;
                    7: dz = 2048;
                    8: dz = 1024;
                    9: dz = 512;
                    10: dz = 256;
                    11: dz = 128;
                    12: dz = 64;
                    13: dz = 32;
                    14: dz = 16;
                    15: dz = 8;
                    16: dz = 4;
                    17: dz = 2;
                    default: dz = 1;
                endcase
                if ((z >= 0)) begin
                    x = x - dx;
                    y = y + dy;
                    z = z - dz;
                end
                else begin
                    x = x + dx;
                    y = y - dy;
                    z = z + dz;
                end
                if ((i == (19 - 1))) begin
                    cos_z0 <= x;
                    sin_z0 <= y;
                    state = 1'b0;
                    done <= 1;
                end
                else begin
                    i = i + 1;
                end
            end
        endcase
    end
end

endmodule

