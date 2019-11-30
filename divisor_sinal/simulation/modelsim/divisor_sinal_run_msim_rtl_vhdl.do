transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/felip/Documents/Trabalho de AOC/divisor_sinal/divisor_sinal.vhd}

vcom -93 -work work {C:/Users/felip/Documents/Trabalho de AOC/divisor_sinal/tb_divisor_sinal.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_divisor_sinal

add wave *
view structure
view signals
run -all
