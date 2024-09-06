`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 09:46:06
// Design Name: 
// Module Name: fa_adder
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


module fa_nand(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire [6:0]w;

nand n1(w[0],a,b);
nand n2(w[1],a,w[0]);
nand n3(w[2],b,w[0]);
nand n4(w[3],w[1],w[2]);
nand n5(w[4],w[3],cin);
nand n6(w[5],w[3],w[4]);
nand n7(w[6],w[4],cin);
nand n8(sum,w[5],w[6]);
nand n9(cout,w[0],w[4]);

endmodule
