`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 17:01:15
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

encoder uut(i,y);

initial
    begin
    
        i=8'b00000001; #10
        i=8'b00000010; #10
        i=8'b00000100; #10
        i=8'b00001000; #10
        i=8'b00010000; #10
        i=8'b00100000; #10
        i=8'b01000000; #10
        i=8'b10000000; #10
        $finish;
    end
    
initial
    begin
    $monitor("i=%d, y=%d",i,y);
    #100 $finish;
    end
    
endmodule
