transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/felip/Documents/Trabalho de AOC/Somador/somador.vhd}

vcom -93 -work work {C:/Users/felip/Documents/Trabalho de AOC/Somador/tb_somador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_somador

add wave *
view structure
view signals
run -all
