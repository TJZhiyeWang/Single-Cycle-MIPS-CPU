`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:18:31
// Design Name: 
// Module Name: EXT_16
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



module EXT_16 #(parameter WIDTH=16)(in,out,sext);
    input [15:0] in;
    output [31:0] out;
    input sext;
    assign out=sext? {{(32-WIDTH){in[WIDTH-1]}},in} : {16'b0,in};
endmodule
