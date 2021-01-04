`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/27 21:35:56
// Design Name: 
// Module Name: Regfiles
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
module Regfiles (rs, rt, i_data, rd, we, clk, o_data_1, o_data_2,rst);
  input [4:0] rs, rt, rd;
  input [31:0] i_data;
  input we, clk,rst;
  output [31:0] o_data_1, o_data_2;
  reg [31:0] array_reg [0:31];
  initial begin
     array_reg[0] = 0; // 只需要确定零号寄存器的值就好
  end
  assign o_data_1 = array_reg[rs];
  assign o_data_2 = array_reg[rt];
  always @(negedge clk or posedge rst) begin
   if(rst) begin
    array_reg[0] <= 0;
    array_reg[1] <= 0;
    array_reg[2] <= 0;
    array_reg[3] <= 0;
    array_reg[4] <= 0;
    array_reg[5] <= 0;
    array_reg[6] <= 0;
    array_reg[7] <= 0;
    array_reg[8] <= 0;
    array_reg[9] <= 0;
    array_reg[10] <= 0;
    array_reg[11] <= 0;
    array_reg[12] <= 0;
    array_reg[13] <= 0;
    array_reg[14] <= 0;
    array_reg[15] <= 0;
    array_reg[16] <= 0;
    array_reg[17] <= 0;
    array_reg[18] <= 0;
    array_reg[19] <= 0;
    array_reg[20] <= 0;
    array_reg[21] <= 0;
    array_reg[22] <= 0;
    array_reg[23] <= 0;
    array_reg[24] <= 0;
    array_reg[25] <= 0;
    array_reg[26] <= 0;
    array_reg[27] <= 0;
    array_reg[28] <= 0;
    array_reg[29] <= 0;
    array_reg[30] <= 0;
    array_reg[31] <= 0;

    end else 
    if ((rd != 0) && (we == 1)) 
     array_reg[rd] = i_data;
  end
endmodule
