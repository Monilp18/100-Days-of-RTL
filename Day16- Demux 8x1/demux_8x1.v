`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2024 11:31:40
// Design Name: 
// Module Name: demux_8x1
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
module demux_8x1(
input a,
input [2:0]sel,
output reg y0,y1,y2,y3,y4,y5,y6,y7
);

always @(*) 
   begin
    y0 = 1'b0;
    y1 = 1'b0;
    y2 = 1'b0;
    y3 = 1'b0;
    y4 = 1'b0;
    y5 = 1'b0;
    y6 = 1'b0;
    y7 = 1'b0;

    case(sel)
    3'b000: y0=a;
    3'b001: y1=a;
    3'b010: y2=a;
    3'b011: y3=a;
    3'b100: y4=a;
    3'b101: y5=a;
    3'b110: y6=a;
    3'b111: y7=a;
    default:;
    endcase
   end
endmodule

