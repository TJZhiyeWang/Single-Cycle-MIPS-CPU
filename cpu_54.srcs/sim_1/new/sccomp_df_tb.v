`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/21 23:05:54
// Design Name: 
// Module Name: sccomp_dataflow_tb
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


module sccomp_df_tb();
    reg clk;
    reg rst;
    wire [31:0]inst;
    wire [31:0]pc;
          always #5 clk<=!clk;
          
      
          sccomp_dataflow CPU_inst(clk,rst,inst,pc);
          
          integer file_output;
          integer counter=0;
          
          initial begin
             // $readmemh("L:\\instr.txt", CPU_inst.IMEM.array_reg);
              file_output=$fopen("E://Vivado-projects/cpu_31/result.txt");
              clk=0;
              rst=1;
      
              #3
              rst=0;
          end
      
      
          always @(posedge clk)begin
              counter=counter+1;
                      $fdisplay(file_output,"pc: %h",pc);
                      $fdisplay(file_output,"inst: %h",inst);                   
          
                      $fdisplay(file_output,"regfile0: %h",CPU_inst.sccpu.cpu_ref.array_reg[0]);
                      $fdisplay(file_output,"regfile1: %h",CPU_inst.sccpu.cpu_ref.array_reg[1]);
                      $fdisplay(file_output,"regfile2: %h",CPU_inst.sccpu.cpu_ref.array_reg[2]);
                      $fdisplay(file_output,"regfile3: %h",CPU_inst.sccpu.cpu_ref.array_reg[3]);
                      $fdisplay(file_output,"regfile4: %h",CPU_inst.sccpu.cpu_ref.array_reg[4]);
                      $fdisplay(file_output,"regfile5: %h",CPU_inst.sccpu.cpu_ref.array_reg[5]);
                      $fdisplay(file_output,"regfile6: %h",CPU_inst.sccpu.cpu_ref.array_reg[6]);
                      $fdisplay(file_output,"regfile7: %h",CPU_inst.sccpu.cpu_ref.array_reg[7]);
                      $fdisplay(file_output,"regfile8: %h",CPU_inst.sccpu.cpu_ref.array_reg[8]);
                      $fdisplay(file_output,"regfile9: %h",CPU_inst.sccpu.cpu_ref.array_reg[9]);
                      $fdisplay(file_output,"regfile10: %h",CPU_inst.sccpu.cpu_ref.array_reg[10]);
                      $fdisplay(file_output,"regfile11: %h",CPU_inst.sccpu.cpu_ref.array_reg[11]);
                      $fdisplay(file_output,"regfile12: %h",CPU_inst.sccpu.cpu_ref.array_reg[12]);
                      $fdisplay(file_output,"regfile13: %h",CPU_inst.sccpu.cpu_ref.array_reg[13]);
                      $fdisplay(file_output,"regfile14: %h",CPU_inst.sccpu.cpu_ref.array_reg[14]);
                      $fdisplay(file_output,"regfile15: %h",CPU_inst.sccpu.cpu_ref.array_reg[15]);
                      $fdisplay(file_output,"regfile16: %h",CPU_inst.sccpu.cpu_ref.array_reg[16]);
                      $fdisplay(file_output,"regfile17: %h",CPU_inst.sccpu.cpu_ref.array_reg[17]);
                      $fdisplay(file_output,"regfile18: %h",CPU_inst.sccpu.cpu_ref.array_reg[18]);
                      $fdisplay(file_output,"regfile19: %h",CPU_inst.sccpu.cpu_ref.array_reg[19]);
                      $fdisplay(file_output,"regfile20: %h",CPU_inst.sccpu.cpu_ref.array_reg[20]);
                      $fdisplay(file_output,"regfile21: %h",CPU_inst.sccpu.cpu_ref.array_reg[21]);
                      $fdisplay(file_output,"regfile22: %h",CPU_inst.sccpu.cpu_ref.array_reg[22]);
                      $fdisplay(file_output,"regfile23: %h",CPU_inst.sccpu.cpu_ref.array_reg[23]);
                      $fdisplay(file_output,"regfile24: %h",CPU_inst.sccpu.cpu_ref.array_reg[24]);
                      $fdisplay(file_output,"regfile25: %h",CPU_inst.sccpu.cpu_ref.array_reg[25]);
                      $fdisplay(file_output,"regfile26: %h",CPU_inst.sccpu.cpu_ref.array_reg[26]);
                      $fdisplay(file_output,"regfile27: %h",CPU_inst.sccpu.cpu_ref.array_reg[27]);
                      $fdisplay(file_output,"regfile28: %h",CPU_inst.sccpu.cpu_ref.array_reg[28]);
                      $fdisplay(file_output,"regfile29: %h",CPU_inst.sccpu.cpu_ref.array_reg[29]);
                      $fdisplay(file_output,"regfile30: %h",CPU_inst.sccpu.cpu_ref.array_reg[30]);
                      $fdisplay(file_output,"regfile31: %h",CPU_inst.sccpu.cpu_ref.array_reg[31]);
                    end         

    
 
    
endmodule
