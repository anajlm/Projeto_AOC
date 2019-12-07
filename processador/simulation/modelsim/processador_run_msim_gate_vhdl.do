transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {processador.vho}

vcom -93 -work work {C:/Users/felip/Documents/GitHub/Projeto_AOC/processador/tb_processador.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=processador_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_processador

add wave *
view structure
view signals
run 100 ns
