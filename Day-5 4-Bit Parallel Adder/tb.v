`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 00:58:48
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
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire cout;


parallel_adder uut(a,b,cin,sum,cout);

initial
    begin
    a=4'b1011; b=4'b0101; cin=0; #10
    a=4'b1000; b=4'b1011; cin=1; #10
    a=4'b0111; b=4'b1101; cin=1; #10
    $finish;
end
endmodule
