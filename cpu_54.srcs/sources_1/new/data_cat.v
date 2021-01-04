`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:36:18
// Design Name: 
// Module Name: data_cat
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


module data_cat(in1,in2,out);
input [25:0] in1;
input [3:0] in2;
output [31:0] out;
    assign out={in2,{in1,2'b0}};
endmodule
