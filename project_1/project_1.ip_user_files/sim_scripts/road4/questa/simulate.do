onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib road4_opt

do {wave.do}

view wave
view structure
view signals

do {road4.udo}

run -all

quit -force
