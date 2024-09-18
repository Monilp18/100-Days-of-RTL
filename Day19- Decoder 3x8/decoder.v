`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 19:38:31
// Design Name: 
// Module Name: decoder
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


module decoder(i,y);
input [2:0]i;
output reg [7:0]y;

always@(*)
    begin
    
    y=8'b00000000;
    
        case (i)
        3'b000: y[0]=1;
        3'b001: y[1]=1;
        3'b010: y[2]=1;
        3'b011: y[3]=1;
        3'b100: y[4]=1;
        3'b101: y[5]=1;
        3'b110: y[6]=1;
        3'b111: y[7]=1;
        default: y=0;
        endcase
        
    end
endmodule
