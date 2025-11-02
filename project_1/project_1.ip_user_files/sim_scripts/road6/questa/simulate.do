onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road6_opt

do {wave.do}

view wave
view structure
view signals

do {road6.udo}

run -all

quit -force
