`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 20:04:17
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
reg clk,rst,d;
wire Q;

d_ff uut(d,clk,rst,Q);

initial
    begin
        clk=0;
        d=0; 
        forever #5 clk=~clk;
    end
    
initial
    begin
    rst=1; #10
    rst=0;
    forever #10 d=~d;
    end
 
 initial 
    begin
    $monitor("clk=%b, rst=%b, d=%b, Q=%b", clk,rst,d,Q);
    #100 $finish;
    end
    
endmodule
