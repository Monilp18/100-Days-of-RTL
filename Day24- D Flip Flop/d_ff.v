`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 19:36:55
// Design Name: 
// Module Name: d_ff
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


module d_ff(d,clk,rst,Q);
input d,clk,rst;
output reg Q;

always@(posedge clk)
    begin
        if(rst)
        Q<=1'b0;
        
        else 
        Q<=d;
    end
endmodule
