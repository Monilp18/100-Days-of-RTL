`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2024 09:50:45
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
reg [7:0]a,b;
wire smaller,equal,bigger;

comparator uut(a,b,smaller,equal,bigger);

initial
    begin
    a=123; b=235; #10
    a=365; b=267; #10
    a=659; b=659; #10
    a=300; b=500; #10
    $finish;
    end
 
 initial
    begin
    $monitor("a=%d; b=%d; Smaller=%d; Equal=%d; Bigger=%d", a,b,smaller,equal,bigger);
    #100 $finish;
    end
    
endmodule
