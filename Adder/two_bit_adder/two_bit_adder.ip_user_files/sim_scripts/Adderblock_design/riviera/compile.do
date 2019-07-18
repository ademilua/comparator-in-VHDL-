vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93 \
"../../../bd/Adderblock_design/ip/Adderblock_design_half_adder_0_0/sim/Adderblock_design_half_adder_0_0.vhd" \
"../../../bd/Adderblock_design/ip/Adderblock_design_half_adder_1_0/sim/Adderblock_design_half_adder_1_0.vhd" \
"../../../bd/Adderblock_design/ip/Adderblock_design_half_adder_2_0/sim/Adderblock_design_half_adder_2_0.vhd" \
"../../../bd/Adderblock_design/sim/Adderblock_design.vhd" \


