`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 19:23:36
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
reg a;
reg [2:0]sel;
wire y0,y1,y2,y3,y4,y5,y6,y7;   

demux_8x1 uut(a,sel,y0,y1,y2,y3,y4,y5,y6,y7);

initial
    begin
    a=0;
    sel=0;
    sel=3'b000; a=1; #10 
    $display("Sel=%d, y0=%b",sel,y0);
    
    sel=3'b001; #10
    $display("Sel=%d, y1=%b",sel,y1);
    
    sel=3'b010; #10
    $display("Sel=%d, y2=%b",sel,y2);
    
    sel=3'b011; #10
    $display("Sel=%d, y3=%b",sel,y3);
    
    sel=3'b100; #10
    $display("Sel=%d, y4=%b",sel,y4);
    
    sel=3'b101; #10
    $display("Sel=%d, y5=%b",sel,y5);
    
    sel=3'b110; #10
    $display("Sel=%d, y6=%b",sel,y6);
    
    sel=3'b111; #10
    $display("Sel=%d, y7=%b",sel,y7);
    
    $finish;
    end
endmodule
