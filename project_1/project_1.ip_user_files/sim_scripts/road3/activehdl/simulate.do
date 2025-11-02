onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+road3 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.road3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {road3.udo}

run -all

endsim

quit -force
