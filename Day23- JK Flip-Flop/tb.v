`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 18:34:56
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
reg clk,rst,J,K;
wire Q;

jk_ff uut(J,K,clk,rst,Q);

initial
    begin
    clk=0;
    forever #5 clk = ~clk;
    end

initial
    begin
    rst=1; #10
    rst=0;
    J=0; K=0; #10
    J=0; K=1; #10
    J=1; K=0; #10
    J=1; K=1; #10
    $finish;
    end 

initial
    begin
    $monitor("J=%b, K=%b, clk=%b, rst=%b, Q=%b", J,K,clk,rst,Q);
    #100 $finish;
    end  
endmodule
