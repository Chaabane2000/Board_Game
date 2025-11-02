onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road3_opt

do {wave.do}

view wave
view structure
view signals

do {road3.udo}

run -all

quit -force
