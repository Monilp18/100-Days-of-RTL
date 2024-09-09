`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 17:21:05
// Design Name: 
// Module Name: carry_select_adder
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

module mux(a,b,sel,y);
input a,b;
input sel;
output y;

assign y = sel ? b:a;
endmodule

module carry_select_adder(A,B,carry,Sum,Cout);
input [3:0]A,B;
input carry;
output [3:0]Sum;
output Cout;
wire [15:0]w;
    
full_adder fa1(A[0],B[0],0,w[0],w[1]);
full_adder fa2(A[1],B[1],w[1],w[2],w[3]);
full_adder fa3(A[2],B[2],w[3],w[4],w[5]);
full_adder fa4(A[3],B[3],w[5],w[6],w[7]);

full_adder fa5(A[0],B[0],1,w[8],w[9]);
full_adder fa6(A[1],B[1],w[9],w[10],w[11]);
full_adder fa7(A[2],B[2],w[11],w[12],w[13]);
full_adder fa8(A[3],B[3],w[13],w[14],w[15]);

mux m1(w[0],w[8],carry,Sum[0]);
mux m2(w[2],w[10],carry,Sum[1]);
mux m3(w[4],w[12],carry,Sum[2]);
mux m4(w[6],w[14],carry,Sum[3]);
mux m5(w[7],w[15],carry,Cout);

endmodule
  
