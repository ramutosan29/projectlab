`timescale 1ns / 1ps

module ir_counter_tb(

    );
reg clk = 0;
reg pulse = 1;
wire a, b, c, d, e, f, g, dp; //the individual LED output for the seven segment along with the digital point
wire [3:0] an;


IRtop UUT1(.clk(clk), .pulse(pulse), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an(an));

always #1
clk = ~clk;

initial
begin
#10 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#600 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;


#800 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;

#600 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;


#800 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;

#10 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;


#800 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;

#600 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;


#800 pulse =0;
#500 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#350 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;
#10 pulse =0;
#60 pulse =1;


end

endmodule

