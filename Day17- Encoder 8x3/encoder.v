`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 22:31:58
// Design Name: 
// Module Name: encoder
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


module encoder(i,y);
input [7:0]i;
output reg [2:0]y;

always@(i)
    begin
        if(i[0]==1)
         y=3'b000;
        
        else if(i[1]==1)
         y=3'b001;
        
        else if(i[2]==1)
         y=3'b010;
        
        else if(i[3]==1)
         y=3'b011;
         
        else if(i[4]==1)
         y=3'b100;
        
        else if(i[5]==1)
         y=3'b101;
        
        else if(i[6]==1)
         y=3'b110;
        
        else
         y=3'b111;
         
    end   

endmodule
