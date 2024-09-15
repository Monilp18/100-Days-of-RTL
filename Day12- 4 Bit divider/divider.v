`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 10:07:06
// Design Name: 
// Module Name: divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module divider(divisor,dividend,remainder,quotient);
input [3:0]dividend,divisor;
output reg [3:0]remainder,quotient;

always@(dividend,divisor)
    begin
    quotient=0;
    remainder=dividend;
    while(remainder>=dividend)
        begin
        remainder = remainder - divisor;
        quotient = quotient+1;
        end
    end
 
endmodule
