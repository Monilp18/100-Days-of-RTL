`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 20:57:20
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
reg s;
wire [3:0]y;

mux_2x1 uut(a,b,s,y);

initial
    begin
    a=4'b1011; b=4'b0110; s=0; #10
    a=4'b1110; b=4'b0010; s=1; #10
    a=4'b1111; b=4'b0111; s=0; #10
    $finish;
end

initial
    begin
    $monitor("Input a:%b, Input b:%b, Select line s:%b, Output y:%b", a,b,s,y); #100
    $finish;
end
 
endmodule
