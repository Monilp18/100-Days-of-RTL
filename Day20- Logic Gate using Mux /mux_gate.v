`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 20:09:21
// Design Name: 
// Module Name: mux_gate
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

module mux_2x1(x,s,y);
input [1:0]x;
input s;
output y;
assign y = s ? x[1] : x[0];
endmodule

module mux_gate(a,b,and_out,or_out,nand_out,nor_out,xor_out,xnor_out);
input a,b;
output and_out;
output or_out;
output nand_out;
output nor_out;
output xor_out;
output xnor_out;

mux_2x1 muxand({b, 1'b0}, a, and_out);
mux_2x1 muxor({1'b1, b}, a, or_out);
mux_2x1 muxnand({(~b), 1'b1}, a, nand_out);
mux_2x1 muxnor({1'b0, (~b)}, a, nor_out);
mux_2x1 muxxor({(~b), b}, a, xor_out);
mux_2x1 muxxnor({b, (~b)}, a, xnor_out);
endmodule
