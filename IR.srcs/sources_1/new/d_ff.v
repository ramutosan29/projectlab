`timescale 1ns / 1ps
// this D_flipflop was taken from an example code writtin by Dr Derek and suited to my needs
module d_ff(
    input pulse,
    input clk,
    output reg spulse
    );
    
always @ (pulse or clk)
    if (clk)
        begin
            spulse = pulse;    
        end

endmodule
