`timescale 1ns / 1ps


module inverter(
input neg_pulse,
 output wire pos_pulse
    );
    
 assign pos_pulse = ~neg_pulse;

endmodule
