v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 320 -220 450 -220 {
lab=VDD}
N 240 -180 410 -180 {
lab=#net1}
N 940 -230 980 -230 {
lab=NB}
N 940 -230 940 -200 {
lab=NB}
N 980 -290 980 -230 {
lab=NB}
N 980 -410 980 -350 {
lab=VDD}
N 980 -230 1160 -230 {
lab=NB}
N 800 -320 800 -290 {
lab=PB}
N 800 -290 840 -290 {
lab=PB}
N 840 -350 980 -350 {
lab=VDD}
N 840 -270 840 -250 {
lab=PB}
N 840 -190 840 -170 {
lab=GND}
N 840 -170 980 -170 {
lab=GND}
N 840 -270 870 -270 {
lab=PB}
N 710 -250 840 -250 {
lab=PB}
N 710 -190 840 -190 {
lab=GND}
N 840 -290 840 -270 {
lab=PB}
N 490 -180 580 -180 {
lab=OUT}
N 370 -160 410 -160 {
lab=#net2}
N 350 -160 410 -200 {
lab=IN2}
N 330 -100 350 -160 {
lab=IN2}
C {devices/code_shown.sym} -100 -330 0 0 {name=NGSPICE
only_toplevel=true

value="
.include /home/eggert/magicwrap/analogsub/analogsub.spice


.option wnflag=1
.param x=4.25
vvcc vcc 0 dc 1.8
vvss vss 0 0
.control
tran 100p 5u
write schmitt.raw
.endc
" 
}
C {devices/code.sym} -365 -415 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/gnd.sym} 320 -160 0 1 {name=l126 lab=GND}
C {devices/vsource.sym} 320 -190 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 320 -160 0 1 {name=l127 lab=GND}
C {devices/gnd.sym} 450 -140 0 1 {name=l1 lab=GND}
C {devices/gnd.sym} 240 -120 0 1 {name=l2 lab=GND}
C {devices/vsource.sym} 240 -150 0 0 {name=V1 value=1}
C {devices/gnd.sym} 240 -120 0 1 {name=l3 lab=GND}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 960 -200 0 0 {name=M30
L=0.5
W=3
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 980 -410 0 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 980 -170 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} 1030 -230 2 0 {name=l29 lab=NB}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 820 -320 0 0 {name=M29
L=0.5
W=3
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 870 -270 2 0 {name=l57 lab=PB}
C {sky130_fd_pr/cap_mim_m3_1.sym} 710 -220 2 0 {name=C17 model=cap_mim_m3_1 W=30 L=30 MF=10 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1160 -200 2 0 {name=C18 model=cap_mim_m3_1 W=30 L=30 MF=10 spiceprefix=X}
C {devices/gnd.sym} 1160 -170 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} 820 -220 0 0 {name=l106 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 960 -320 0 0 {name=l107 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 980 -320 0 0 {name=R39
W=0.35
L=10.5
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 840 -220 0 0 {name=R27
W=0.35
L=10.5
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} 410 -220 0 0 {name=l4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -160 2 0 {name=l6 lab=NB}
C {devices/parax_cap.sym} 550 -170 0 0 {name=C1 gnd=0 value=20f m=1}
C {devices/lab_pin.sym} 580 -180 2 0 {name=l8 lab=OUT}
C {devices/sqwsource.sym} 370 -130 0 0 {name=V2 vhi=0.01 freq=27e6}
C {devices/vsource.sym} 330 -70 0 0 {name=V4 value="SIN(0.9 10m 27000k)"}
C {devices/lab_pin.sym} 330 -100 0 0 {name=l66 lab=IN2}
C {devices/gnd.sym} 330 -40 0 0 {name=l68 lab=GND}
C {xschemwrap/analogsub.sym} 450 -180 0 0 {name=x1}
C {devices/gnd.sym} 370 -40 0 1 {name=l9 lab=GND}
C {devices/vsource.sym} 370 -70 0 0 {name=V5 value="0.895"}
