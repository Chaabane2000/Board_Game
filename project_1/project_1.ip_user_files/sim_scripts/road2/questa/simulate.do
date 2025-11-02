onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road2_opt

do {wave.do}

view wave
view structure
view signals

do {road2.udo}

run -all

quit -force
