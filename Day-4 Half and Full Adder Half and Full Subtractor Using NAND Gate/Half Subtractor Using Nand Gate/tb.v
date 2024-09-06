`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 17:27:33
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
reg a,b;
wire diff,bout;

hs_nand uut(a,b,diff,bout);

initial
    begin
    a=0;b=0; #10
    a=0;b=1; #10
    a=1;b=0; #10
    a=1;b=1; #10
    $finish;
end
endmodule
