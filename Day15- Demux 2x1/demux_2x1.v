`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2024 10:40:21
// Design Name: 
// Module Name: demux_2x1
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


module demux_2x1(i,sel,y0,y1);
input i,sel;
output y0,y1;

assign {y0,y1} = sel ? {1'b0,i} : {i,1'b0};

endmodule
