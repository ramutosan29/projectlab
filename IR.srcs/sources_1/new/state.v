`timescale 1ns / 1ps


module state(
input wire clk,
input wire [11:0] state,
output reg [3:0]bit
    );
    
 
    always @(posedge clk)
        begin
            case(state)
            12'b111111101111 : bit = 4'b0001;//1        
            12'b011111101111 : bit = 4'b0010;//2
            12'b101111101111 : bit = 4'b0011;//3
            12'b001111101111 : bit = 4'b0100;//4
            12'b110111101111 : bit = 4'b0101;//5
            12'b010111101111 : bit = 4'b0110;//6
            12'b100111101111 : bit = 4'b0111;//7
            12'b000111101111 : bit = 4'b1000;//8
            12'b111011101111 : bit = 4'b1001;//9
            12'b011011101111 : bit = 4'b0000;//0
            endcase
        end
endmodule
