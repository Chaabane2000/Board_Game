onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib green_car_opt

do {wave.do}

view wave
view structure
view signals

do {green_car.udo}

run -all

quit -force
