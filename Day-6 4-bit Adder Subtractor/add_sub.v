`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 16:05:54
// Design Name: 
// Module Name: add_sub
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
  
assign cout = a&b | cin&(a^b);

endmodule


module add_sub(A,B,Cin,Sum,Cout);
input [3:0]A,B;
input Cin;
output [3:0]Sum;
output Cout;
wire [2:0]C;

full_adder fa1(A[0],(B[0]^Cin),Cin,Sum[0],C[0]);
full_adder fa2(A[1],(B[1]^Cin),C[0],Sum[1],C[1]);
full_adder fa3(A[2],(B[2]^Cin),C[1],Sum[2],C[2]);
full_adder fa4(A[3],(B[3]^Cin),C[2],Sum[3],Cout);

endmodule

