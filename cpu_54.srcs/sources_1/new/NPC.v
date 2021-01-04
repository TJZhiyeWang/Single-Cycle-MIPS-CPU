`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 17:30:21
// Design Name: 
// Module Name: NPC
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


module NPC(i_pc,o_pc);
    input wire [31:0] i_pc;
    output  wire [31:0] o_pc;
    assign o_pc[31:0]=i_pc[31:0]+4;
endmodule
