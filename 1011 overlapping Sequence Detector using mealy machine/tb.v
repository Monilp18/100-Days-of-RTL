`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2024 09:28:15
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
reg rst,clk,din;
wire y;

mealy uut(din,clk,rst,y);

initial
    begin
        clk=0;
        forever #5 clk=~clk;
    end
    
initial
    begin
    rst=1; #10
    rst=0;
    din=0; #5
    din=1; #10
    din=0; #10
    din=1; #10
    din=1; #10
    din=0; #10
    din=0; #10
    din=1; #10
    din=0; #10
    din=1; #10
    din=1; #10
    din=0; #10
    din=1; #10
    din=1; #10
    $finish;
    end

initial
    begin
    $monitor("Reset=%b, Clock=%b, Input=%b, Detect=%b", rst,clk,din,y);
    #200 $finish;
    end
endmodule
