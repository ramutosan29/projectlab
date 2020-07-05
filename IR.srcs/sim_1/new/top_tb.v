`timescale 1ns / 1ps
module top_tb(

    );
reg clk = 0;
reg pulse = 0;
wire [11:0] state;

IRsensor UUT1(.clk(clk), .pulse(pulse), .state(state));

always #1
clk = ~clk;

initial
begin
#10 pulse =1;
#500 pulse =0;
#10 pulse =1;
#150 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#240 pulse =0;
#10 pulse =1;
#150 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#340 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#60 pulse =0;
#10 pulse =1;
#340 pulse =0;



end

endmodule
