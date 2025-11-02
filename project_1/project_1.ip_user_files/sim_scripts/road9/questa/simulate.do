onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road9_opt

do {wave.do}

view wave
view structure
view signals

do {road9.udo}

run -all

quit -force
