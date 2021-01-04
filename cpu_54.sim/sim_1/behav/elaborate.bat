@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto f2a2370b99624538a925b3a4b51f2250 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L dist_mem_gen_v8_0_10 -L unisims_ver -L unimacro_ver -L secureip --snapshot sccomp_df_tb_behav xil_defaultlib.sccomp_df_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
