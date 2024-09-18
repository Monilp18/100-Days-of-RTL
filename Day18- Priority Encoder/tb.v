`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 17:33:52
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
reg [7:0]i;
wire [2:0]y;

priority_encoder uut(i,y);

always
    begin
    i=8'b01010000; #10
    i=8'b01000100; #10
    i=8'b11000000; #10
    i=8'b00010100; #10
    i=8'b00100001; #10
    i=8'b00100010; #10
    $finish;
    end
    
initial
    begin
    $monitor("i=%d, y=%d",i,y);
    #100 $finish;
    end
endmodule
