`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 17:48:21
// Design Name: 
// Module Name: ext_cat0
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


module ext_cat0(in,out);
    input wire [15:0] in;
    output  wire [31:0] out;
    assign out={in,16'b0};
endmodule
