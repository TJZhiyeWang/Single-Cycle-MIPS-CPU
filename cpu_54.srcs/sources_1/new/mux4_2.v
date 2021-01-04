`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 18:50:59
// Design Name: 
// Module Name: mux4_2
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


module mux4_2(out,in0,in1,in2,in3,sel);
output reg [31:0] out;
input [31:0] in0;
input [31:0] in1;
input [31:0] in2;
input [31:0] in3;
input [1:0] sel;
    always @(in1 or in2 or in0 or in3 or sel)
        case(sel)
        2'b00:   out=in0;
        2'b01:   out=in1;
        2'b10:   out=in2;
        2'b11:   out=in3;
        default:    out=32'bx;
        endcase
endmodule

