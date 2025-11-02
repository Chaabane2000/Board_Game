onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road1_opt

do {wave.do}

view wave
view structure
view signals

do {road1.udo}

run -all

quit -force
