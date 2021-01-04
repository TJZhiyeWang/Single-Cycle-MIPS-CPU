`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:39:37
// Design Name: 
// Module Name: mux2_1
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


module mux2_1(out,in1,in2,sel);
output [31:0] out;
input [31:0] in1;
input [31:0] in2;
input sel;
reg [31:0] out;
    always @(in1 or in2 or sel)
        case(sel)
        1'b0:   out=in1;
        1'b1:   out=in2;
        default:    out=32'bx;
        endcase
endmodule
