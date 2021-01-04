`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:08:10
// Design Name: 
// Module Name: EXT_5
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


module EXT_5 #(parameter WIDTH=5)(in,out,sext);
    input [4:0] in;
    output [31:0] out;
    input sext;
    assign out=sext? {{(32-WIDTH){in[WIDTH-1]}},in} : {27'b0,in};
endmodule
