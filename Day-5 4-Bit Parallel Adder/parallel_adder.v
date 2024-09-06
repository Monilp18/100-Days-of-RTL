`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 00:36:29
// Design Name: 
// Module Name: 4-bit_parallel_adder
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

module full_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;

assign sum = a^b^cin;
assign cout = (a&b) | cin&(a^b);

endmodule

module parallel_adder(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire [2:0]W;

full_adder fa1(A[0], B[0], Cin, Sum[0], W[0]);
full_adder fa2(A[1], B[1], W[0], Sum[1], W[1]);
full_adder fa3(A[2], B[2], W[1], Sum[2], W[2]);
full_adder fa4(A[3], B[3], W[2], Sum[3], Cout);

endmodule
