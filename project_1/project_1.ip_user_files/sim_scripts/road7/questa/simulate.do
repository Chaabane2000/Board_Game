onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road7_opt

do {wave.do}

view wave
view structure
view signals

do {road7.udo}

run -all

quit -force
