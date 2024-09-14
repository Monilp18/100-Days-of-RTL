`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 21:25:40
// Design Name: 
// Module Name: mux_4x1
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


module mux_2x1(a,b,s,y);
input [3:0]a,b;
input s;
output [3:0]y;

assign y = s ? b:a;
endmodule


module mux_4x1(A,B,C,D,S1,S0,Y);
input [3:0]A,B,C,D;
input S1,S0;
output [3:0]Y;
wire [3:0]W1,W2;

mux_2x1 m1(A,B,S1,W1);
mux_2x1 m2(C,D,S1,W2);
mux_2x1 m3(W1,W2,S0,Y);

endmodule
