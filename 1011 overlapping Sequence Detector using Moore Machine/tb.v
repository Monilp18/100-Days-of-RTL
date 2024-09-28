`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2024 15:57:35
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
reg clk,rst,din;
wire y;

moore uut(din,clk,rst,y);

initial 
begin
    clk= 1'b0;
    forever #5 clk= ~clk;
end

initial 
begin
    rst= 1'b1; #10
    rst= 1'b0;
    #5 din= 1'b0;
    #10 din= 1'b1;
    #10 din= 1'b0;
    #10 din= 1'b1;
    #10 din= 1'b1;
    #10 din= 1'b0;
    #10 din= 1'b1;
    #10 din= 1'b1;
    #10 din= 1'b0;
    #10 din= 1'b1;
    #10 din= 1'b0;
    #10 din= 1'b1;
    #10 din= 1'b1;
    #10 din= 1'b0;
end

initial 
begin
    $monitor("Clock: %b, Reset: %b, din: %b, Detect: %b",clk, rst, din, y);
    #200 $finish;
end
endmodule
