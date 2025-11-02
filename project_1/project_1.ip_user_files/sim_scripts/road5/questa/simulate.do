onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road5_opt

do {wave.do}

view wave
view structure
view signals

do {road5.udo}

run -all

quit -force
