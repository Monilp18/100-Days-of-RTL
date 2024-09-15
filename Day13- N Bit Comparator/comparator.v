`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2024 09:36:31
// Design Name: 
// Module Name: comparator
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


module comparator(a,b,smaller,equal,bigger);
parameter N=8;
input [N-1:0]a,b;
output smaller,equal,bigger;
reg smaller=0,equal=0,bigger=0;

always@(*)
    begin
    
    if(a<b)
        begin
        smaller=1;
        equal=0;
        bigger=0;
        end
    
    else if(a>b)
        begin
        smaller=0;
        equal=0;
        bigger=1;
        end
    
    else
        begin
        smaller=0;
        equal=1;
        bigger=0;
        end
    
    end
endmodule

