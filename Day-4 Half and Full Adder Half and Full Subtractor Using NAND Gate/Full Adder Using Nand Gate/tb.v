`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 09:49:30
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
reg a,b,cin;
wire sum,cout;

fa_nand uut(a,b,cin,sum,cout);

initial
    begin
    a=0;b=0;cin=0; #10
    a=0;b=0;cin=1; #10
    a=0;b=1;cin=0; #10
    a=0;b=1;cin=1; #10
    a=1;b=0;cin=0; #10
    a=1;b=0;cin=1; #10
    a=1;b=1;cin=0; #10
    a=1;b=1;cin=1; #10
    $finish;
end
endmodule
