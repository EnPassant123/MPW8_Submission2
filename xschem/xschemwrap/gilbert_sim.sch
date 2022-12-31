v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
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
N 390 -260 390 -220 {
lab=VDD}
N 200 -200 310 -200 {
lab=#net1}
N 280 -180 310 -180 {
lab=#net2}
N 90 -200 200 -200 {
lab=#net1}
N 180 -180 280 -180 {
lab=#net2}
N 310 -70 310 -20 {
lab=#net3}
N 260 -90 310 -90 {
lab=#net4}
N 260 -90 260 -20 {
lab=#net4}
N 220 -20 260 -20 {
lab=#net4}
C {devices/code_shown.sym} -100 -330 0 0 {name=NGSPICE
only_toplevel=true

value="
.include /home/eggert/magicwrap/gilbert/gilbert.spice


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
C {devices/gnd.sym} -90 10 0 1 {name=l5 lab=GND}
C {devices/vsource.sym} -90 -20 0 0 {name=V6 value=1.8}
C {devices/gnd.sym} -90 10 0 1 {name=l7 lab=GND}
C {devices/lab_pin.sym} -90 -50 0 0 {name=l10 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 390 -260 0 0 {name=l12 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 390 -50 0 1 {name=l13 lab=GND}
C {devices/lab_pin.sym} 480 -200 2 0 {name=l14 lab=PB}
C {devices/lab_pin.sym} 480 -70 2 0 {name=l15 lab=NB}
C {devices/lab_pin.sym} 480 -150 2 0 {name=l16 lab=OUT}
C {devices/lab_pin.sym} 480 -130 2 0 {name=l17 lab=OUTN}
C {devices/sqwsource.sym} 90 -170 0 0 {name=V7 vhi=1.8 freq=26e6}
C {devices/gnd.sym} 90 -140 0 1 {name=l18 lab=GND}
C {devices/sqwsource.sym} 180 -150 0 0 {name=V8 vhi=-1.8 freq=26e6}
C {devices/gnd.sym} 180 -60 0 1 {name=l19 lab=GND}
C {devices/vsource.sym} 180 -90 0 0 {name=V9 value=1.8}
C {devices/gnd.sym} 310 40 0 1 {name=l20 lab=GND}
C {devices/vsource.sym} 310 10 0 0 {name=V10 value=0.9}
C {devices/gnd.sym} 310 40 0 1 {name=l21 lab=GND}
C {devices/vsource.sym} 220 10 0 1 {name=V11 value="SIN(0.9 1m 27000k)"}
C {devices/gnd.sym} 220 40 0 0 {name=l23 lab=GND}
C {xschemwrap/gilbert.sym} 390 -140 0 0 {}
