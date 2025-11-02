onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib grass_opt

do {wave.do}

view wave
view structure
view signals

do {grass.udo}

run -all

quit -force
