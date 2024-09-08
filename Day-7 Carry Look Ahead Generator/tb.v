`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2024 09:37:35
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
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

carry_look_ahead_generator uut(a,b,cin,sum,cout);

initial
    begin 
    a=4'b1010; b=4'b0111; cin=0; #10
    a=4'b1100; b=4'b1110; cin=1; #10
    a=4'b0110; b=4'b1001; cin=0; #10
    a=4'b1000; b=4'b0010; cin=1; #10
    $finish;
end
    
endmodule
