transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gdcon/Documentos/trabalho lsd/01 - 30/controladora/controladora.vhd}
vcom -93 -work work {C:/Users/gdcon/Documentos/validador/validador.vhd}
vcom -93 -work work {C:/Users/gdcon/Documentos/top_level/top_level.vhd}
vcom -93 -work work {C:/Users/gdcon/Documentos/datapath/datapath.vhd}

