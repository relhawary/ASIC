transcript on
if ![file isdirectory wimax_top_iputf_libs] {
	file mkdir wimax_top_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "C:/Users/Roeya/Documents/ASIC/Project/phase_3/Phase_2_quartus/pll_sim/pll.vho"

vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/wimax_top.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/prbs_rtl.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/modulator_rtl.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/interleaver_rtl_2.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/fec_rtl.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/Phase_2_quartus/dpr.vhd}
vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/Phase_2_quartus/dpr_interleaver.vhd}

vcom -93 -work work {C:/Users/Roeya/Documents/ASIC/Project/phase_3/Phase_2_quartus/../wimax_top_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  wimax_top_tb

add wave *
view structure
view signals
run 3 us
