`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 10:01:30
// Design Name: 
// Module Name: ha_nand
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


module ha_nand(a,b,sum,cout);
input a,b;
output sum,cout;
wire [2:0]w;

nand n1(w[0],a,b);
nand n2(w[1],a,w[0]);
nand n3(w[2],b,w[0]);
nand n4(sum,w[1],w[2]);
nand n5(cout,w[0],w[0]);

endmodule
