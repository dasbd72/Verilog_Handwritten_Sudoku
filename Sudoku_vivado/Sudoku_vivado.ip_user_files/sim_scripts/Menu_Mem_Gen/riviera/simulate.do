onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Menu_Mem_Gen -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Menu_Mem_Gen xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Menu_Mem_Gen.udo}

run -all

endsim

quit -force
