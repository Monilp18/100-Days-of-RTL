`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.09.2024 18:26:26
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(J,K,clk,rst,Q);
input J,K,clk,rst;
output reg Q;

always@(posedge clk)
    begin
        if(rst)
            Q<=1'b0;
        
        else 
        
            begin
                case({J,K})
                    2'b00: Q<=Q;
                    2'b01: Q<=1'b0;
                    2'b10: Q<=1'b1;
                    2'b11: Q<=~Q;
                 endcase
            end
    end
endmodule
