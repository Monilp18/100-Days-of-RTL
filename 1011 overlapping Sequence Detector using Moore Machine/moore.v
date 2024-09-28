`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2024 15:32:32
// Design Name: 
// Module Name: moore
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


module moore(din,clk,rst,y);
input din,clk,rst;
output reg y;

reg [2:0]cst, nst;

parameter S0=3'b000, 
          S1=3'b001, // 1 detected
          S2=3'b010, // 10 detected
          S3=3'b011, //101 detected
          S4=3'b100; //1011 detected
          
always@(posedge clk)
    begin
        if(rst)
            cst<=S0;
        else
            cst<=nst;
    end

always@(cst or din)
    begin
        case(cst)
      
        S0: begin
            y<=0;
                if(din==1)
                 nst<=S1;
                else
                 nst<=S0;
            end
       
       S1: begin
            y<=0;
                if(din==0)
                 nst<=S2;
                else
                 nst<=S1;
            end
       
       S2: begin
            y<=0;
                if(din==1)
                 nst<=S3;
                else
                 nst<=S0;
            end
       
       S3: begin
            y<=0;
                if(din==1)
                 nst<=S4;
                else
                 nst<=S3;
            end
       
       S4: begin
            y<=1;
                if(din==1)
                 nst<=S1;
                else
                 nst<=S2;
            end
        endcase
    end
endmodule
