`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/27 19:37:26
// Design Name: 
// Module Name: sccomp_dataflow
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


module sccomp_dataflow(
input clk_in,
input reset,
output [31:0] inst,
output [31:0] pc,
output [31:0] addr
    );
    CPU sccpu(clk_in,reset,inst,pc,addr);
endmodule
