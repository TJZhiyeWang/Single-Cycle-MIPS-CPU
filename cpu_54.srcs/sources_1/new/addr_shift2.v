`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/27 00:33:01
// Design Name: 
// Module Name: addr_shift2
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


module addr_shift2(addr_in,addr_out);
    input [31:0] addr_in;
    output [31:0] addr_out;
        assign addr_out=(addr_in-32'h10010000)>>2;
   
endmodule
