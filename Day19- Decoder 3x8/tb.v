`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 19:49:25
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
reg [2:0]i;
wire [7:0]y;

decoder uut(i,y);

initial

    begin
    i=3'b000; #10
    i=3'b001; #10
    i=3'b010; #10
    i=3'b011; #10
    i=3'b100; #10
    i=3'b101; #10
    i=3'b110; #10
    i=3'b111; #10
    $finish;
    end
    
initial
    begin
    $monitor("i:%b, y=%b",i,y);
    #100 $finish;
    end
endmodule
