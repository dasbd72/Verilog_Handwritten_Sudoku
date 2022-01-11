onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Num9_Mem_Gen_opt

do {wave.do}

view wave
view structure
view signals

do {Num9_Mem_Gen.udo}

run -all

quit -force
