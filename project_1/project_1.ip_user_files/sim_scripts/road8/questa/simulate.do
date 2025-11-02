onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road8_opt

do {wave.do}

view wave
view structure
view signals

do {road8.udo}

run -all

quit -force
