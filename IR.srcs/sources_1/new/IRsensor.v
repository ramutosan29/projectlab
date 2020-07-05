`timescale 1ns / 1ps

module IRsensor(
input wire clk,

input pulse,
output reg [11:0] state
    );
       
 reg [9:0]pos_counter =0; 
 reg [9:0]neg_counter = 0; 
 reg  old =0;
 reg  new =0; 
 reg reset = 0;
 reg [4:0] bit_counter = 0;
 reg [11:0] bit =0;
 
 always @(negedge clk)
 
  
    begin
            new <= pulse;
            old <= new;
        if (new == 0)
            begin
                pos_counter <= 0;
                neg_counter = neg_counter+1;
            end
        else
            begin          
                pos_counter = pos_counter+1;
            end
            
        if (neg_counter >200)
            begin
                reset = 0;
                state <= bit   ;
                bit_counter <= 0;
                neg_counter <= 0;
            end
  
     if (old & ~new)
         begin
            neg_counter <= 0;
          if (pos_counter > 200)
            begin
                reset = 1;
                bit_counter <= 1;
                bit = 0;
                //              
            end
        if (reset == 1)
         begin
         if (pos_counter > 100)
            begin
                 bit[12-bit_counter] <= 0;
                 bit_counter <= bit_counter + 1;
            end
         if (pos_counter < 100)
            begin
                 bit[12-bit_counter] <= 1;
                 bit_counter <= bit_counter + 1;
            end
         end         
        end  
    end
 

endmodule