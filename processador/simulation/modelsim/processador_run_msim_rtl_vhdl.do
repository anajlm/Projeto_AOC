transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/register_file.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/somador.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/SignExtend.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/regW.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/regPC.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/regE.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/regD.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/Mux2x1_32bits.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/Mux2x1_5bits.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/Hazard.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/divisor_sinal.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/Control.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/ALU.vhd}
vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/processador.vhd}

vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/tb_processador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_processador

add wave *
view structure
view signals
run 100 ns
