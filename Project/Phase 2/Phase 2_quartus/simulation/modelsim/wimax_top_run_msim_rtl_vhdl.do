transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/Phase 2/interleaver_rtl_2.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/Phase 2/Phase 2_quartus/dpr_interleaver.vhd}

vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/Phase 2/Phase 2_quartus/../Interleaver_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  interleaver_tb

add wave *
view structure
view signals
run 1 us
