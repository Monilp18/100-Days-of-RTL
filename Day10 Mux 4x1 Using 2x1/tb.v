`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 21:47:10
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
reg [3:0]a,b,c,d;
reg s1,s0;
wire [3:0]y;

mux_4x1 uut(a,b,c,d,s1,s0,y);

initial
    begin
    a=4'b1010; b=4'b1111; c=4'b1100; d=4'b1110; s1=0; s0=0; #10
    a=4'b1000; b=4'b0100; c=4'b1101; d=4'b0101; s1=1; s0=0; #10
    a=4'b0001; b=4'b0011; c=4'b0010; d=4'b1001; s1=0; s0=1; #10
    $finish;
end

initial
    begin
    $monitor("A=%d, B=%d, C=%d, D=%d, S1=%b, S0=%b, Output Y=%d", a,b,c,d,s1,s0,y); #100
    $finish;
end
endmodule
