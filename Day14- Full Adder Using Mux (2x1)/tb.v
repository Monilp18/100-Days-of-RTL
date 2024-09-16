`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2024 22:21:45
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

Fa_mux uut(a,b,cin,sum,cout);

initial
    begin
    a=0; b=0; cin=0; #10
    a=0; b=0; cin=1; #10
    a=0; b=1; cin=0; #10
    a=0; b=1; cin=1; #10
    a=1; b=0; cin=0; #10
    a=1; b=0; cin=1; #10
    a=1; b=1; cin=0; #10
    a=1; b=1; cin=1; #10
    $finish;
    end

initial
    begin
    $monitor($time, "a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b,cin,sum,cout);
    #100 $finish;
    end
endmodule
