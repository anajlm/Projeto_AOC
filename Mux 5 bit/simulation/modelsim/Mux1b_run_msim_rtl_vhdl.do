transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/lwall/OneDrive/Documentos/Mux 1 bit/Mux1b.vhd}

vcom -93 -work work {C:/Users/lwall/OneDrive/Documentos/Mux 1 bit/tb_Mux1b.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  tb_Mux1b

add wave *
view structure
view signals
run -all
