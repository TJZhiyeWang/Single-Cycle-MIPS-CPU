`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:20:12
// Design Name: 
// Module Name: EXT_18
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

module EXT_18 #(parameter WIDTH=16)(in,out,sext);
    input [15:0] in;
    output [31:0] out;
    input sext;
    assign out=sext? {{(30-WIDTH){in[WIDTH-1]}},in,2'b0} : {14'b0,in,2'b0};
endmodule

