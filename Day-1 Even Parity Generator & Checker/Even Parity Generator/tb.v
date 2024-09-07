`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 14:23:13
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
reg [1:0]A;
reg P;
wire E;
//reg clk;

even_parity_checker uut (A,P,E);

//always #5 clk = ~clk;

initial
    begin
    //clk=0;
    A=2'b00; P=0; #10
    A=2'b00; P=1; #10
    A=2'b01; P=0; #10
    A=2'b01; P=1; #10
    A=2'b10; P=0; #10
    A=2'b10; P=1; #10
    A=2'b11; P=0; #10
    A=2'b11; P=1; #10
    $finish;
end

//always @(posedge clk) 
    //begin
    //$display("Data: %b, Parity: %b, Error: %b", A, P, E);
//end


endmodule
