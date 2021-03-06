`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/16 19:21:29
// Design Name: 
// Module Name: CPU
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

module CPU(clk_in,reset,instruc,pc,result);
input clk_in;
input reset;
output [31:0] instruc;
output [31:0] pc;
output [31:0] result;
wire [31:0] o_npc;
wire [31:0] muxs_1;
wire [17:0] addr_18;
wire [31:0] mux1_1;
wire sels;
wire [1:0] sel1;
wire pc_ena;
wire [31:0] i_pc;
//wire [31:0] o_pc;
wire [31:0] mux1_0;
wire iram_ena;
wire iram_wena;
//wire [31:0] instruc;
wire rf_we;
wire [4:0] rf_raddr1;
wire [4:0] rf_raddr2;
wire [4:0] rf_waddr;
wire [31:0] rd;
wire [31:0] rs;
wire [31:0] rt;
wire ext_s;
wire [31:0] mux4_1;
wire [31:0] alu_b;
wire sel4;
wire [31:0] mux3_0;
wire sel3;
wire [31:0] alu_a;
wire [3:0] aluc;
//wire [31:0] result;
wire zero;
wire carry;
wire neg;
wire ovf;
wire [31:0] dout;
wire [31:0] mux2_1;
wire [1:0] sel2;
wire [31:0] pc_imem;
wire [31:0] result_dmem;
NPC npc(.i_pc(pc),.o_pc(o_npc));
EXT_18 ext18(.in(instruc[15:0]),.out(addr_18),.sext(ext_s));
ADD adder(.sum(muxs_1),.ina(o_npc),.inb(addr_18));
mux2_1 muxs(.out(mux1_1),.in1(o_npc),.in2(muxs_1),.sel(sels));
mux4_2 mux1(.out(i_pc),.in0(mux1_0),.in1(mux1_1),.in2(rs),.in3(),.sel(sel1));
pcreg PC(.clk(~clk_in),.rst(reset),.ena(pc_ena),.data_in(i_pc),.data_out(pc));
data_cat cat(.in1(instruc[25:0]),.in2(pc[31:28]),.out(mux1_0));
//ram IMEM(.clk(clk_in),.ena(iram_ena),.wena(iram_wena),.addr(pc),.data_in(),.data_out(instruc));
addr_shift switch(.addr_in(pc),.addr_out(pc_imem));
iram_ip IMEM(.a(pc_imem[10:0]),.spo(instruc));
Regfiles cpu_ref(.rs(rf_raddr1), .rt(rf_raddr2), .i_data(rd), .rd(rf_waddr), .we(rf_we), .clk(clk_in), .o_data_1(rs), .o_data_2(rt),.rst(reset));
EXT_16 ext16(.in(instruc[15:0]),.out(mux4_1),.sext(ext_s));
mux2_1 mux4(.out(alu_b),.in1(rt),.in2(mux4_1),.sel(sel4));
EXT_5 ext5(.in(instruc[10:6]),.out(mux3_0),.sext(ext_s));
mux2_1 mux3(.out(alu_a),.in1(mux3_0),.in2(rs),.sel(sel3));
alu ALU(.a(alu_a),.b(alu_b),.aluc(aluc),.r(result),.zero(zero),.carry(carry),.neg(neg),.ovf(ovf));
addr_shift2 switch2(.addr_in(result),.addr_out(result_dmem));
dram_ip_test DMEM(.a(result_dmem),.clk(clk_in),.d(rt),.we(dram_wena),.spo(dout));
//dram_ip DMEM(.clka(clk_in),.ena(dram_ena),.wea(dram_wena),.addra(result_dmem),.dina(rt),.douta(dout));
//ram2 DMEM(.clk(clk_in),.ena(dram_ena),.wena(dram_wena),.addr(result_dmem),.data(dout));
mux4_2 mux2(.out(rd),.in0(mux1_1),.in1(mux2_1),.in2(dout),.in3(result),.sel(sel2));
ext_cat0 cat0(.in(instruc[15:0]),.out(mux2_1));
Control_Unit CU(.instruc(instruc),.zero(zero),.pc_ena(pc_ena),.iram_ena(iram_ena),.iram_wena(iram_wena),.dram_ena(dram_ena),.dram_wena(dram_wena),.rf_we(rf_we),.rf_raddr1(rf_raddr1),.rf_raddr2(rf_raddr2),.s_ext(ext_s),.aluc(aluc),.sel1(sel1),.sel2(sel2),.sel3(sel3),.sel4(sel4),.rf_waddr(rf_waddr),.sels(sels));
endmodule

 