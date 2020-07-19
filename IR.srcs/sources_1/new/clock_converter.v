`timescale 1ns / 1ps

module clock_converter(
input clk,
output new_clk
    );
    localparam speed = 500;
    reg [9:0] counter = 0;
    reg clk_out = 0;

    always @(posedge clk)
    begin
            counter <= counter +1;
        if (counter == 1)//500
           begin
                counter <= 0;
                clk_out <= ~clk_out;
            end
    end
    assign new_clk = clk_out;

endmodule


