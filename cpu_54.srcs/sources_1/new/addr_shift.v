`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/27 00:25:21
// Design Name: 
// Module Name: addr_shift
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


module addr_shift(addr_in,addr_out);
input [31:0] addr_in;
output [31:0] addr_out;
    assign addr_out=(addr_in>>2)-32'h00100000;
endmodule
