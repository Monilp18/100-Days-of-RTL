`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2024 17:17:24
// Design Name: 
// Module Name: mealy
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


module mealy(din,clk,rst,y); //din=data in, clk=clock, rst=reset, y=output.
input din,clk,rst;
output reg y;

reg [1:0]cst, nst;  // cst=current state, nst=next state.

parameter S0=2'b00,  // Initial State
          S1=2'b01,  // 1 detected
          S2=2'b10,  // 10 detected
          S3=2'b11;  //101 detected
 
 always@(posedge clk)
    begin
        if(rst)
            begin
            cst<=S0;
            y<=1'b0;
            end
            
        else
            cst<=nst;
    end

always@(cst or din)
    begin
        case(cst)
        
        S0: if(din==1'b1)
                begin
                    nst<=S1;
                    y<=1'b0;
                end
            
            else
                begin
                    nst<=S0;
                    y<=1'b0;
                end
                
        S1: if(din==1'b0)
                begin
                    nst<=S2;
                    y<=1'b0;
                end 
                
            else 
                begin
                    nst<=S1;
                    y<=1'b0;    
                end
                
        S2: if(din==1'b1)
                begin
                    nst<=S3;
                    y<=1'b0;
                end        
                
            else
                begin
                    nst<=S0;
                    y<=1'b0;
                end 
                
        S3: if(din==1'b1)
                begin
                    nst<=S1;
                    y<=1'b1;
                end
            
            else 
                begin
                    nst<=S2;
                    y<=1'b0;
                end            
                
        default: nst<=S0;                   
        endcase
    end
endmodule
