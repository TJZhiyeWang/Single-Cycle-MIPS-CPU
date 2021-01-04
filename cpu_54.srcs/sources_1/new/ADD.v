`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:58:46
// Design Name: 
// Module Name: ADD
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


module ADD (sum,ina,inb);
output [31:0] sum; 
input [31:0] ina;
input [17:0] inb;
    assign sum=ina+{{14{inb[17]}},inb}; 
endmodule 
     

