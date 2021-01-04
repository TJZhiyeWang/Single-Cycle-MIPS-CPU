`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 19:12:39
// Design Name: 
// Module Name: Control_Unit
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
//*****************************指令相关宏变量*************************************
`define normal_op       6'b000000
`define add_func        6'b100000
`define addu_func       6'b100001
`define sub_func        6'b100010
`define subu_func       6'b100011
`define and_func        6'b100100
`define or_func         6'b100101
`define xor_func        6'b100110
`define nor_func        6'b100111
`define slt_func        6'b101010
`define sltu_func       6'b101011
`define sll_func        6'b000000
`define srl_func        6'b000010
`define sra_func        6'b000011
`define sllv_func       6'b000100
`define srlv_func       6'b000110
`define srav_func       6'b000111
`define jr_func         6'b001000

`define addi_op         6'b001000
`define addiu_op        6'b001001
`define andi_op         6'b001100
`define ori_op          6'b001101
`define xori_op         6'b001110
`define lui_op          6'b001111
`define lw_op           6'b100011   
`define sw_op           6'b101011
`define beq_op          6'b000100
`define bne_op          6'b000101
`define slti_op         6'b001010
`define sltiu_op        6'b001011

`define j_op            6'b000010
`define jal_op          6'b000011

module Control_Unit(instruc,zero,pc_ena,iram_ena,iram_wena,dram_ena,dram_wena,rf_we,rf_raddr1,rf_raddr2,s_ext,aluc,sel1,sel2,sel3,sel4,rf_waddr,sels);
input [31:0] instruc;
input zero;
output reg pc_ena;
output reg iram_ena;
output reg iram_wena;
output reg dram_ena;
output reg dram_wena;
output reg rf_we;
output reg [4:0] rf_raddr1;
output reg [4:0] rf_raddr2;
output reg s_ext;
output reg [3:0] aluc;
output reg [1:0] sel1;
output reg [1:0] sel2;
output reg sel3;
output reg sel4;
output reg [4:0]rf_waddr;
output reg sels;
initial begin
  pc_ena<=1;
  iram_ena<=1;
  iram_wena<=0;
end
always @(instruc or zero) begin
    //pc_ena<=1;
   // iram_ena<=1;
    //iram_wena<=0;
    if (instruc[31:26] == `normal_op)begin
        case(instruc[5:0]) 
            `add_func:begin
                dram_ena<=0;
                dram_wena<=0;
                rf_we<=1;
                rf_raddr1<=instruc[25:21];
                rf_raddr2<=instruc[20:16];
                s_ext<=0;
                aluc<=4'b0010;
                sel1<=2'b01;
                sel2<=2'b11;
                sel3<=1;
                sel4<=0;
                rf_waddr<=instruc[15:11];
                sels<=0;
                    end
            `addu_func:begin
                  dram_ena<=0;
                  dram_wena<=0;
                  rf_we<=1;
                  rf_raddr1<=instruc[25:21];
                  rf_raddr2<=instruc[20:16];
                  s_ext<=0;
                  aluc<=4'b0000;
                  sel1<=2'b01;
                  sel2<=2'b11;
                  sel3<=1;
                  sel4<=0;
                  rf_waddr<=instruc[15:11];
                  sels<=0;
                      end
            `sub_func:begin
                  dram_ena<=0;
                  dram_wena<=0;
                  rf_we<=1;
                  rf_raddr1<=instruc[25:21];
                  rf_raddr2<=instruc[20:16];
                  s_ext<=0;
                  aluc<=4'b0011;
                  sel1<=2'b01;
                  sel2<=2'b11;
                  sel3<=1;
                  sel4<=0;
                  rf_waddr<=instruc[15:11];
                  sels<=0;
                        end                                
            `subu_func:begin
                  dram_ena<=0;
                  dram_wena<=0;
                   rf_we<=1;
                   rf_raddr1<=instruc[25:21];
                   rf_raddr2<=instruc[20:16];
                   s_ext<=0;
                   aluc<=4'b0001;
                    sel1<=2'b01;
                   sel2<=2'b11;
                    sel3<=1;
                    sel4<=0;
                    rf_waddr<=instruc[15:11];
                    sels<=0;
                          end
            `and_func:begin
                     dram_ena<=0;
                     dram_wena<=0;
                     rf_we<=1;
                     rf_raddr1<=instruc[25:21];
                     rf_raddr2<=instruc[20:16];
                     s_ext<=0;
                     aluc<=4'b0100;
                     sel1<=2'b01;
                     sel2<=2'b11;
                     sel3<=1;
                     sel4<=0;
                      rf_waddr<=instruc[15:11];
                      sels<=0;
                           end 
           `or_func:begin
                       dram_ena<=0;
                       dram_wena<=0;
                        rf_we<=1;
                      rf_raddr1<=instruc[25:21];
                        rf_raddr2<=instruc[20:16];
                        s_ext<=0;
                        aluc<=4'b0101;
                        sel1<=2'b01;
                        sel2<=2'b11;
                        sel3<=1;
                        sel4<=0;
                         rf_waddr<=instruc[15:11];
                         sels<=0;
                           end   
         `xor_func:begin
                        dram_ena<=0;
                         dram_wena<=0;
                          rf_we<=1;
                           rf_raddr1<=instruc[25:21];
                          rf_raddr2<=instruc[20:16];
                           s_ext<=0;
                           aluc<=4'b0110;
                            sel1<=2'b01;
                            sel2<=2'b11;
                            sel3<=1;
                             sel4<=0;
                             rf_waddr<=instruc[15:11];
                             sels<=0;
                             end   
       `nor_func:begin
                            dram_ena<=0;
                             dram_wena<=0;
                              rf_we<=1;
                            rf_raddr1<=instruc[25:21];
                              rf_raddr2<=instruc[20:16];
                              s_ext<=0;
                              aluc<=4'b0111;
                              sel1<=2'b01;
                              sel2<=2'b11;
                              sel3<=1;
                              sel4<=0;
                               rf_waddr<=instruc[15:11];
                               sels<=0;
                                 end                               
       `slt_func:begin 
                                 dram_ena<=0;
                                   dram_wena<=0;
                                    rf_we<=1;
                                  rf_raddr1<=instruc[25:21];
                                    rf_raddr2<=instruc[20:16];
                                    s_ext<=0;
                                    aluc<=4'b1011;
                                    sel1<=2'b01;
                                    sel2<=2'b11;
                                    sel3<=1;
                                    sel4<=0;
                                     rf_waddr<=instruc[15:11];
                                     sels<=0;
                                       end                                     
     `sltu_func:begin
                                     dram_ena<=0;
                                      dram_wena<=0;
                                       rf_we<=1;
                                     rf_raddr1<=instruc[25:21];
                                       rf_raddr2<=instruc[20:16];
                                       s_ext<=0;
                                       aluc<=4'b1010;
                                       sel1<=2'b01;
                                       sel2<=2'b11;
                                       sel3<=1;
                                       sel4<=0;
                                        rf_waddr<=instruc[15:11];
                                        sels<=0;
                                          end    
     `sll_func:begin
                                         dram_ena<=0;
                                          dram_wena<=0;
                                           rf_we<=1;
                                         rf_raddr1<=5'bxxxxx;
                                           rf_raddr2<=instruc[20:16];
                                           s_ext<=0;
                                           aluc<=4'b1110;
                                           sel1<=2'b01;
                                           sel2<=2'b11;
                                           sel3<=0;
                                           sel4<=0;
                                            rf_waddr<=instruc[15:11];
                                            sels<=0;
                                              end                                           
     `srl_func:begin
                                              dram_ena<=0;
                                               dram_wena<=0;
                                                rf_we<=1;
                                              rf_raddr1<=5'bxxxxx;
                                                rf_raddr2<=instruc[20:16];
                                                s_ext<=0;
                                                aluc<=4'b1101;
                                                sel1<=2'b01;
                                                sel2<=2'b11;
                                                sel3<=0;
                                                sel4<=0;
                                                 rf_waddr<=instruc[15:11];
                                                 sels<=0;
                                                   end                                            
    `sra_func:begin                               
                                                  dram_ena<=0;
                                                   dram_wena<=0;
                                                    rf_we<=1;
                                                  rf_raddr1<=5'bxxxxx;
                                                    rf_raddr2<=instruc[20:16];
                                                    s_ext<=0;
                                                    aluc<=4'b1100;
                                                    sel1<=2'b01;
                                                    sel2<=2'b11;
                                                    sel3<=0;
                                                    sel4<=0;
                                                     rf_waddr<=instruc[15:11];
                                                     sels<=0;
                                                       end                                    
   `sllv_func:begin                                
                                                    dram_ena<=0;
                                                     dram_wena<=0;
                                                      rf_we<=1;
                                                    rf_raddr1<=instruc[25:21];
                                                      rf_raddr2<=instruc[20:16];
                                                      s_ext<=0;
                                                      aluc<=4'b1110;
                                                      sel1<=2'b01;
                                                      sel2<=2'b11;
                                                      sel3<=1;
                                                      sel4<=0;
                                                       rf_waddr<=instruc[15:11];
                                                       sels<=0;
                                                         end
   `srlv_func:begin
                                                       dram_ena<=0;
                                                        dram_wena<=0;
                                                         rf_we<=1;
                                                       rf_raddr1<=instruc[25:21];
                                                         rf_raddr2<=instruc[20:16];
                                                         s_ext<=0;
                                                         aluc<=4'b1101;
                                                         sel1<=2'b01;
                                                         sel2<=2'b11;
                                                         sel3<=1;
                                                         sel4<=0;
                                                          rf_waddr<=instruc[15:11];
                                                          sels<=0;
                                                            end 
  `srav_func:begin
                                                      dram_ena<=0;
                                                       dram_wena<=0;
                                                        rf_we<=1;
                                                      rf_raddr1<=instruc[25:21];
                                                        rf_raddr2<=instruc[20:16];
                                                        s_ext<=0;
                                                        aluc<=4'b1100;
                                                        sel1<=2'b01;
                                                        sel2<=2'b11;
                                                        sel3<=1;
                                                        sel4<=0;
                                                         rf_waddr<=instruc[15:11];
                                                         sels<=0;
                                                           end
    `jr_func:begin                    
                                                        dram_ena<=0;
                                                         dram_wena<=0;
                                                          rf_we<=1;
                                                        rf_raddr1<=instruc[25:21];
                                                          rf_raddr2<=5'bxxxxx;
                                                          s_ext<=0;
                                                          aluc<=4'b0000;
                                                          sel1<=2'b10;
                                                          sel2<=2'b10;
                                                          sel3<=1'bx;
                                                          sel4<=1'bx;
                                                           rf_waddr<=5'bxxxxx;
                                                           sels<=0;
                                                             end                                   
       endcase
       end
       else begin
        case(instruc[31:26])
        `addi_op:begin
                                                            dram_ena<=0;
                                                            dram_wena<=0;
                                                             rf_we<=1;
                                                           rf_raddr1<=instruc[25:21];
                                                             rf_raddr2<=instruc[20:16];
                                                             s_ext<=1;
                                                             aluc<=4'b0010;
                                                             sel1<=2'b01;
                                                             sel2<=2'b11;
                                                             sel3<=1;
                                                             sel4<=1;
                                                              rf_waddr<=instruc[20:16];
                                                              sels<=0;
                                                               end     
       `addiu_op:begin
                                                         dram_ena<=0;
                                                           dram_wena<=0;
                                                            rf_we<=1;
                                                          rf_raddr1<=instruc[25:21];
                                                            rf_raddr2<=5'bxxxxx;
                                                            s_ext<=1;
                                                            aluc<=4'b0000;
                                                            sel1<=2'b01;
                                                            sel2<=2'b11;
                                                            sel3<=1;
                                                            sel4<=1;
                                                             rf_waddr<=instruc[20:16];
                                                             sels<=0;
                                                               end
      `andi_op:begin
                                                              dram_ena<=0;
                                                               dram_wena<=0;
                                                                rf_we<=1;
                                                              rf_raddr1<=instruc[25:21];
                                                                rf_raddr2<=5'bxxxxx;
                                                                s_ext<=0;
                                                                aluc<=4'b0100;
                                                                sel1<=2'b01;
                                                                sel2<=2'b11;
                                                                sel3<=1;
                                                                sel4<=1;
                                                                 rf_waddr<=instruc[20:16];
                                                                 sels<=0;
                                                                   end
    `ori_op:begin
                                                            dram_ena<=0;
                                                             dram_wena<=0;
                                                              rf_we<=1;
                                                            rf_raddr1<=instruc[25:21];
                                                              rf_raddr2<=5'bxxxxx;
                                                              s_ext<=0;
                                                              aluc<=4'b0101;
                                                              sel1<=2'b01;
                                                              sel2<=2'b11;
                                                              sel3<=1;
                                                              sel4<=1;
                                                               rf_waddr<=instruc[20:16];
                                                               sels<=0;
                                                               end   
   `xori_op:begin
                                                           dram_ena<=0;
                                                            dram_wena<=0;
                                                             rf_we<=1;
                                                           rf_raddr1<=instruc[25:21];
                                                             rf_raddr2<=5'bxxxxx;
                                                             s_ext<=0;
                                                             aluc<=4'b0110;
                                                             sel1<=2'b01;
                                                             sel2<=2'b11;
                                                             sel3<=1;
                                                             sel4<=1;
                                                              rf_waddr<=instruc[20:16];
                                                              sels<=0;
                                                                end  
   `lui_op:begin
                                                          dram_ena<=0;
                                                            dram_wena<=0;
                                                             rf_we<=1;
                                                           rf_raddr1<=5'bxxxxx;
                                                             rf_raddr2<=5'bxxxxx;
                                                             s_ext<=0;
                                                             aluc<=4'b0000;
                                                             sel1<=2'b01;
                                                             sel2<=2'b01;
                                                             sel3<=1'bx;
                                                             sel4<=1'bx;
                                                              rf_waddr<=instruc[20:16];
                                                              sels<=0;
                                                                end
   `lw_op:begin
                                                             dram_ena<=1;
                                                              dram_wena<=0;
                                                               rf_we<=1;
                                                             rf_raddr1<=instruc[25:21];
                                                               rf_raddr2<=5'bxxxxx;
                                                               s_ext<=1;
                                                               aluc<=4'b0010;
                                                               sel1<=2'b01;
                                                               sel2<=2'b10;
                                                               sel3<=1;
                                                               sel4<=1;
                                                                rf_waddr<=instruc[20:16];
                                                                sels<=0;
                                                                  end 
  `sw_op:begin
                                                                dram_ena<=1;
                                                                dram_wena<=1;
                                                                 rf_we<=1;
                                                               rf_raddr1<=instruc[25:21];
                                                                 rf_raddr2<=instruc[20:16];
                                                                 s_ext<=1;
                                                                 aluc<=4'b0010;
                                                                 sel1<=2'b01;
                                                                 sel2<=2'bxx;
                                                                 sel3<=1;
                                                                 sel4<=1;
                                                                  rf_waddr<=5'bxxxxx;
                                                                  sels<=0;
                                                                    end 
  `beq_op:begin
                                                               dram_ena<=0;
                                                                dram_wena<=0;
                                                                 rf_we<=1;
                                                               rf_raddr1<=instruc[25:21];
                                                                 rf_raddr2<=instruc[20:16];
                                                                 s_ext<=0;
                                                                 aluc<=4'b1010;
                                                                 sel1<=2'b01;
                                                                 sel2<=2'bxx;
                                                                 sel3<=1;
                                                                 sel4<=0;
                                                                  rf_waddr<=5'bxxxxx;
                                                                  sels<=1&zero;
                                                                    end
`bne_op:begin                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                                                                 dram_ena<=0;
                                                                 dram_wena<=0;
                                                                  rf_we<=1;
                                                                rf_raddr1<=instruc[25:21];
                                                                  rf_raddr2<=instruc[20:16];
                                                                  s_ext<=0;
                                                                  aluc<=4'b1010;
                                                                  sel1<=2'b01;
                                                                  sel2<=2'bxx;
                                                                  sel3<=1;
                                                                  sel4<=0;
                                                                   rf_waddr<=5'bxxxxx;
                                                                    sels<=1^zero;
                                                                     end
  `slti_op:begin
                                                                 dram_ena<=0;
                                                                 dram_wena<=0;
                                                                  rf_we<=1;
                                                                rf_raddr1<=instruc[25:21];
                                                                  rf_raddr2<=5'bxxxxx;
                                                                  s_ext<=1;
                                                                  aluc<=4'b1011;
                                                                  sel1<=2'b01;
                                                                  sel2<=2'b11;
                                                                  sel3<=1;
                                                                  sel4<=1;
                                                                   rf_waddr<=instruc[20:16];
                                                                   sels<=0;
                                                                     end
  `sltiu_op:begin
                                                                  dram_ena<=0;
                                                                   dram_wena<=0;
                                                                    rf_we<=1;
                                                                  rf_raddr1<=instruc[25:21];
                                                                    rf_raddr2<=5'bxxxxx;
                                                                    s_ext<=1;
                                                                    aluc<=4'b1010;
                                                                    sel1<=2'b01;
                                                                    sel2<=2'b11;
                                                                    sel3<=1;
                                                                    sel4<=1;
                                                                     rf_waddr<=instruc[20:16];
                                                                     sels<=0;
                                                                       end
  `j_op:begin
                                                                  dram_ena<=0;
                                                                   dram_wena<=0;
                                                                    rf_we<=0;
                                                                  rf_raddr1<=5'bxxxxx;
                                                                    rf_raddr2<=5'bxxxxx;
                                                                    s_ext<=0;
                                                                    aluc<=4'b0000;
                                                                    sel1<=2'b00;
                                                                    sel2<=2'b10;
                                                                    sel3<=1'bx;
                                                                    sel4<=1'bx;
                                                                     rf_waddr<=5'bxxxxx;
                                                                     sels<=0;
                                                                       end
  `jal_op:begin
                                                                     dram_ena<=0;
                                                                     dram_wena<=0;
                                                                      rf_we<=1;
                                                                    rf_raddr1<=5'bxxxxx;
                                                                      rf_raddr2<=5'bxxxxx;
                                                                      s_ext<=0;
                                                                      aluc<=4'b0000;
                                                                      sel1<=2'b00;
                                                                      sel2<=2'b00;
                                                                      sel3<=1'bx;
                                                                      sel4<=1'bx;
                                                                       rf_waddr<=5'b11111;
                                                                       sels<=0;
                                                                         end
                endcase
            end
       end
    endmodule
