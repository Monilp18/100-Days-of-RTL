`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 19:59:55
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
reg rst,en,S,R;
wire Q;

sr_latch uut(S,R,Q,rst,en);

initial begin
rst=1;
S=0;
R=0;
en=0; #10
rst=0;
en=1;
end

always begin
S=0; R=0; #10
S=0; R=1; #10
S=1; R=0; #10
S=1; R=1; #10
$finish;
end

initial begin
$monitor("S=%b, R=%b, en=%b, Q=%b", S,R,en,Q);
#100 $finish;
end

endmodule
