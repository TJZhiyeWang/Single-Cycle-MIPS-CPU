`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/13 09:53:44
// Design Name: 
// Module Name: pcreg
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
module Asynchronous_D_FF(CLK,D,RST_n,Q1,Q2,ena);
input CLK;        //时钟信号，上升沿有效     
input D;          //输入信号D     
input RST_n;      //复位信号，低电平有效
input ena; 
output reg Q1;   //输出信号Q     
output reg Q2;    //输出信号	? 
always @(posedge CLK or negedge RST_n)
      begin
       if(~RST_n)
          begin
             Q1<=0;
             Q2<=1;
          end
      else if(ena)
        begin
           Q1<=D;
           Q2<=~D;
        end
       end
endmodule

module Asynchronous_D_FF1(CLK,D,RST_n,Q1,Q2,ena);
input CLK;        //时钟信号，上升沿有效     
input D;          //输入信号D     
input RST_n;      //复位信号，低电平有效
input ena; 
output reg Q1;   //输出信号Q     
output reg Q2;    //输出信号	? 
always @(posedge CLK or negedge RST_n)
      begin
       if(~RST_n)
          begin
             Q1<=1;
             Q2<=0;
          end
      else if(ena)
        begin
           Q1<=D;
           Q2<=~D;
        end
       end
endmodule

module pcreg(clk,rst,ena,data_in,data_out); 
input clk;   //1位输入，寄存器时钟信号，上升沿时为PC寄存器赋值 
input rst;   //1位输入，异步重置信号，高电平时将PC寄存器清零 //注：当ena信号无效时，rst也可以重置寄存器 
input ena;  //1位输入,有效信号高电平时PC寄存器读入data_in //的值，否则保持原有输出 
input [31:0] data_in; //32位输入，输入数据将被存入寄存器内部 
output wire [31:0] data_out;   //32位输出，工作时始终输出 PC  //寄存器内部存储的值
// reg [31:0] d_out;
	//assign d_out=data_out;
          Asynchronous_D_FF d0(.CLK(clk),.D(data_in[0]),.RST_n(~rst),.Q1(data_out[0]),.Q2(),.ena(ena));
          Asynchronous_D_FF d1(.CLK(clk),.D(data_in[1]),.RST_n(~rst),.Q1(data_out[1]),.Q2(),.ena(ena));
          Asynchronous_D_FF d2(.CLK(clk),.D(data_in[2]),.RST_n(~rst),.Q1(data_out[2]),.Q2(),.ena(ena));
          Asynchronous_D_FF d3(.CLK(clk),.D(data_in[3]),.RST_n(~rst),.Q1(data_out[3]),.Q2(),.ena(ena));
          Asynchronous_D_FF d4(.CLK(clk),.D(data_in[4]),.RST_n(~rst),.Q1(data_out[4]),.Q2(),.ena(ena));
          Asynchronous_D_FF d5(.CLK(clk),.D(data_in[5]),.RST_n(~rst),.Q1(data_out[5]),.Q2(),.ena(ena));
          Asynchronous_D_FF d6(.CLK(clk),.D(data_in[6]),.RST_n(~rst),.Q1(data_out[6]),.Q2(),.ena(ena));
          Asynchronous_D_FF d7(.CLK(clk),.D(data_in[7]),.RST_n(~rst),.Q1(data_out[7]),.Q2(),.ena(ena));
          Asynchronous_D_FF d8(.CLK(clk),.D(data_in[8]),.RST_n(~rst),.Q1(data_out[8]),.Q2(),.ena(ena));
          Asynchronous_D_FF d9(.CLK(clk),.D(data_in[9]),.RST_n(~rst),.Q1(data_out[9]),.Q2(),.ena(ena));
          Asynchronous_D_FF d10(.CLK(clk),.D(data_in[10]),.RST_n(~rst),.Q1(data_out[10]),.Q2(),.ena(ena));
          Asynchronous_D_FF d11(.CLK(clk),.D(data_in[11]),.RST_n(~rst),.Q1(data_out[11]),.Q2(),.ena(ena));
          Asynchronous_D_FF d12(.CLK(clk),.D(data_in[12]),.RST_n(~rst),.Q1(data_out[12]),.Q2(),.ena(ena));
          Asynchronous_D_FF d13(.CLK(clk),.D(data_in[13]),.RST_n(~rst),.Q1(data_out[13]),.Q2(),.ena(ena));
          Asynchronous_D_FF d14(.CLK(clk),.D(data_in[14]),.RST_n(~rst),.Q1(data_out[14]),.Q2(),.ena(ena));
          Asynchronous_D_FF d15(.CLK(clk),.D(data_in[15]),.RST_n(~rst),.Q1(data_out[15]),.Q2(),.ena(ena));
          Asynchronous_D_FF d16(.CLK(clk),.D(data_in[16]),.RST_n(~rst),.Q1(data_out[16]),.Q2(),.ena(ena));
          Asynchronous_D_FF d17(.CLK(clk),.D(data_in[17]),.RST_n(~rst),.Q1(data_out[17]),.Q2(),.ena(ena));
          Asynchronous_D_FF d18(.CLK(clk),.D(data_in[18]),.RST_n(~rst),.Q1(data_out[18]),.Q2(),.ena(ena));
          Asynchronous_D_FF d19(.CLK(clk),.D(data_in[19]),.RST_n(~rst),.Q1(data_out[19]),.Q2(),.ena(ena));
          Asynchronous_D_FF d20(.CLK(clk),.D(data_in[20]),.RST_n(~rst),.Q1(data_out[20]),.Q2(),.ena(ena));
          Asynchronous_D_FF d21(.CLK(clk),.D(data_in[21]),.RST_n(~rst),.Q1(data_out[21]),.Q2(),.ena(ena));
          Asynchronous_D_FF1 d22(.CLK(clk),.D(data_in[22]),.RST_n(~rst),.Q1(data_out[22]),.Q2(),.ena(ena));
          Asynchronous_D_FF d23(.CLK(clk),.D(data_in[23]),.RST_n(~rst),.Q1(data_out[23]),.Q2(),.ena(ena));
          Asynchronous_D_FF d24(.CLK(clk),.D(data_in[24]),.RST_n(~rst),.Q1(data_out[24]),.Q2(),.ena(ena));
          Asynchronous_D_FF d25(.CLK(clk),.D(data_in[25]),.RST_n(~rst),.Q1(data_out[25]),.Q2(),.ena(ena));
          Asynchronous_D_FF d26(.CLK(clk),.D(data_in[26]),.RST_n(~rst),.Q1(data_out[26]),.Q2(),.ena(ena));
          Asynchronous_D_FF d27(.CLK(clk),.D(data_in[27]),.RST_n(~rst),.Q1(data_out[27]),.Q2(),.ena(ena));
          Asynchronous_D_FF d28(.CLK(clk),.D(data_in[28]),.RST_n(~rst),.Q1(data_out[28]),.Q2(),.ena(ena));
          Asynchronous_D_FF d29(.CLK(clk),.D(data_in[29]),.RST_n(~rst),.Q1(data_out[29]),.Q2(),.ena(ena));
          Asynchronous_D_FF d30(.CLK(clk),.D(data_in[30]),.RST_n(~rst),.Q1(data_out[30]),.Q2(),.ena(ena));
          Asynchronous_D_FF d31(.CLK(clk),.D(data_in[31]),.RST_n(~rst),.Q1(data_out[31]),.Q2(),.ena(ena));

endmodule

