transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/register_file.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/ALU.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/somador.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/SignExtend.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/regW.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/regPC.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/regE.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/regD.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/Mux2x1_32bits.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/Mux2x1_5bits.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/divisor_sinal.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Hazard/Hazard.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Datapath/Datapath.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Controladora/Control.vhd}
vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/Pipeline.vhd}

vcom -93 -work work {E:/Projeto_AOC-master/Pipeline/tb_Pipeline.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Pipeline

add wave *
view structure
view signals
run 100 ns
