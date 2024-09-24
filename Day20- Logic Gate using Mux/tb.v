`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2024 10:03:57
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
reg a,b;
wire and_out, or_out, nand_out, nor_out, xor_out, xnor_out;

mux_gate uut(a,b,and_out,or_out,nand_out,nor_out,xor_out,xnor_out);

initial begin
a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10
$finish;
end

initial begin
$monitor("a=%b, b=%b, and_out=%b, or_out=%b, nand_out=%b, nor_out=%b, xor_out=%b, xnor_out=%b", a,b,and_out,or_out,nand_out,nor_out,xor_out,xnor_out);
#100 $finish;
end
endmodule
