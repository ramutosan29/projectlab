`timescale 1ns / 1ps


module IRtop(
input clk,
input pulse,
 output wire a, b, c, d, e, f, g, dp, //the individual LED output for the seven segment along with the digital point
 output wire [3:0] an,
 output wire pos_pulse
     );
    wire [3:0] bit;
    wire newclk;
    wire spulse1;
    wire spulse2;
    wire [11:0]state;

    
    
    clock_converter UUT1(.clk(clk), .new_clk(newclk));
    
    d_ff UUT2( .pulse(pulse), .clk(newclk), .spulse(spulse1));
    d_ff UUT3( .pulse(spulse1), .clk(newclk), .spulse(spulse2));
    
    
    inverter UUT4(.neg_pulse(spulse2), .pos_pulse(pos_pulse));
    
    IRsensor UUT5(.clk(newclk), .pulse(pos_pulse), .state(state));
    
    state UUT6(.state(state), .bit(bit), .clk(newclk));
    seven_seg_disp UUT7(.clkl(clk), .bit(bit), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an(an));

    
endmodule

