`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 17:25:55
// Design Name: 
// Module Name: hs_nand
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


module hs_nand(a,b,diff,bout);
input a,b;
output diff,bout;
wire [2:0]w;

nand n1(w[0], a, b);
nand n2(w[1], a, w[0]);
nand n3(w[2], b, w[0]);
nand n4(diff, w[1], w[2]);
nand n5(bout, w[2], w[2]);

endmodule
