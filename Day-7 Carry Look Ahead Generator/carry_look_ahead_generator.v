`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 17:41:54
// Design Name: 
// Module Name: carry_look_ahead_generator
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


module carry_look_ahead_generator(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire [3:0]p,g,c;

and (g[0],a[0],b[0]),
    (g[1],a[1],b[1]),
    (g[2],a[2],b[2]),
    (g[3],a[3],b[3]);
    
xor (p[0],a[0],b[0]),
    (p[1],a[1],b[1]),
    (p[2],a[2],b[2]),
    (p[3],a[3],b[3]);

xor (sum[0],p[0],cin),
    (sum[1],p[1],c[0]),
    (sum[2],p[2],c[1]),
    (sum[3],p[3],c[2]);
    
assign c[0] = g[0] | (p[0]&cin),
       c[1] = g[1] | (p[1]&c[0]),
       c[2] = g[2] | (p[2]&c[1]),
       c[3] = g[3] | (p[3]&c[2]),
       cout = c[3];
        
endmodule
