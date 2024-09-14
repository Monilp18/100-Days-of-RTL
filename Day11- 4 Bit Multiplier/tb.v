`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2024 09:27:04
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
reg [3:0]a,b;
wire [7:0]y;

multiplier uut(a,b,y);

initial
    begin
    a=4'b0010; b=4'b1011; #10
    a=4'b1110; b=4'b0110; #10
    a=4'b1100; b=4'b0011; #10
    a=4'b1001; b=4'b0101; #10
    $finish;
end

initial
    begin
    $monitor ("%d*%d=%d", a,b,y); #100
    $finish;
end

endmodule
