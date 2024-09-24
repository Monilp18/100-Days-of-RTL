`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2024 16:20:46
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(S,R,Q,rst,en);
input S,R,rst,en;
output reg Q;

always@(*)
    begin
    if(rst)
        Q<=1'b0;
    else if(en)
        begin
        case({S,R})
        2'b00: Q<=Q;
        2'b01: Q<=1'b0;
        2'b10: Q<=1'b1;
        2'b11: Q<=2'bxx;
        endcase
        end  
    end
endmodule
