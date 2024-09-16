`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2024 11:56:51
// Design Name: 
// Module Name: Fa_mux
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

module mux_2x1(x,y,s,z);
input x,y;
input s;
output z;

assign z = s ? y:x;
endmodule


module Fa_mux(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire [3:0]w;

mux_2x1 m1(b,(~b),cin,w[0]);
mux_2x1 m2((~b),b,cin,w[1]);
mux_2x1 m3(w[0],w[1],a,sum);

mux_2x1 m4(0,b,cin,w[2]);
mux_2x1 m5(b,1,cin,w[3]);
mux_2x1 m6(w[2],w[3],a,cout);

endmodule
