transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ALUNOS/Desktop/Projeto_AOC-master/Pipeline/Hazard/Hazard.vhd}

vcom -93 -work work {C:/Users/ALUNOS/Desktop/Projeto_AOC-master/Pipeline/Hazard/tb_Hazard.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Hazard

add wave *
view structure
view signals
run 45 ns
