transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student1/m3allahy/Documents/COE608/Lab2/pc/add.vhd}

