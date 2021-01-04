vlib work
vlib riviera

vlib riviera/dist_mem_gen_v8_0_10
vlib riviera/xil_defaultlib

vmap dist_mem_gen_v8_0_10 riviera/dist_mem_gen_v8_0_10
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work dist_mem_gen_v8_0_10 -v2k5 \
"../../../ipstatic/dist_mem_gen_v8_0_10/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -v2k5 \
"../../../../cpu_54.srcs/sources_1/ip/iram_ip/sim/iram_ip.v" \


vlog -work xil_defaultlib "glbl.v"
