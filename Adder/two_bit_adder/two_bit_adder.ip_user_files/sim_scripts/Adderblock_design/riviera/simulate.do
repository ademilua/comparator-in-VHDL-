onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Adderblock_design -L xil_defaultlib -L secureip -O5 xil_defaultlib.Adderblock_design

do {wave.do}

view wave
view structure

do {Adderblock_design.udo}

run -all

endsim

quit -force
