transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/pedro/OneDrive/Documentos/Mux3232/Mux3232.vhd}

vcom -93 -work work {C:/Users/pedro/OneDrive/Documentos/Mux3232/Mux3232tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Mux3232tb

add wave *
view structure
view signals
run 110 ns
