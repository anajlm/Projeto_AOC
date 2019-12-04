transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/felip/Desktop/processador/register_file.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/somador.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/SignExtend.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/regW.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/regPC.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/regE.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/regD.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/Mux2x1_32bits.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/Mux2x1_5bits.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/Hazard.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/divisor_sinal.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/Control.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/ALU.vhd}
vcom -93 -work work {C:/Users/felip/Desktop/processador/processador.vhd}

vcom -93 -work work {C:/Users/felip/Desktop/processador/tb_processador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_processador

add wave *
view structure
view signals
run -all
