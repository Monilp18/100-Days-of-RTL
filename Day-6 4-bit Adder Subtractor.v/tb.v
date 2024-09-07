`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 16:13:44
// Design Name: 
// Module Name: tb
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


module tb;
reg [3:0]A,B;
reg Cin;
wire [3:0]Sum;
wire Cout;

add_sub uut(A,B,Cin,Sum,Cout);

initial
    begin
    A=4'b1001; B=4'b1110; Cin=0; #10
    Cin=1; #10
    
    A=4'b0011; B=4'b0101; Cin=0; #10
    Cin=1; #10
    $finish;   
end   
endmodule
