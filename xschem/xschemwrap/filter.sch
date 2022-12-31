v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -260 -330 -220 -330 {
lab=NB}
N -260 -330 -260 -300 {
lab=NB}
N -220 -390 -220 -330 {
lab=NB}
N -220 -510 -220 -450 {
lab=VDD}
N -220 -330 -40 -330 {
lab=NB}
N -400 -420 -400 -390 {
lab=PB}
N -400 -390 -360 -390 {
lab=PB}
N -360 -450 -220 -450 {
lab=VDD}
N -360 -370 -360 -350 {
lab=PB}
N -360 -290 -360 -270 {
lab=GND}
N -360 -270 -220 -270 {
lab=GND}
N -360 -370 -330 -370 {
lab=PB}
N -490 -350 -360 -350 {
lab=PB}
N -490 -290 -360 -290 {
lab=GND}
N -360 -390 -360 -370 {
lab=PB}
N -220 -450 -70 -450 {
lab=VDD}
N -650 -290 -620 -290 {
lab=FILT_1}
N -780 30 -720 30 {
lab=#net1}
N -610 30 -570 30 {
lab=#net2}
N -750 90 -260 90 {
lab=GND}
N -610 -90 -610 30 {
lab=#net2}
N -610 -90 -520 -90 {
lab=#net2}
N -360 0 -360 30 {
lab=FILT_2}
N -510 30 -440 30 {
lab=#net3}
N -360 0 -310 0 {
lab=FILT_2}
N -310 -130 -310 0 {
lab=FILT_2}
N -460 -130 -310 -130 {
lab=FILT_2}
N -460 -130 -460 -90 {
lab=FILT_2}
N -440 60 -400 60 {
lab=#net3}
N -440 30 -440 60 {
lab=#net3}
N -840 -30 -840 30 {
lab=#net4}
N -360 -110 -360 -90 {
lab=VDD}
N -660 30 -610 30 {
lab=#net2}
N -360 -30 -360 0 {
lab=FILT_2}
N -880 -30 -840 -30 {
lab=#net4}
N -850 -290 -810 -290 {
lab=#net5}
C {devices/code_shown.sym} 370 -160 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /home/eggert/magicwrap/filter/filter.spice
.include /home/eggert/magicwrap/gilbert/gilbert.spice
.include /home/eggert/magicwrap/opamp/opamp.spice
.include /home/eggert/magicwrap/vco/vco.spice

.ic v(CTRL_IC)=0.9
.ic v(CTRL_IC2)=0.9
.ic v(CTRL)=0.9

.option wnflag=1
.param x=4.25
vvcc vcc 0 dc 1.8
vvss vss 0 0
.control
ac dec 20 1 1e12
write sim.raw
.endc
" 
}
C {devices/code.sym} 105 -245 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -240 -300 0 0 {name=M30
L=0.5
W=3
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -220 -510 0 0 {name=l11 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -220 -270 0 0 {name=l28 lab=GND}
C {devices/lab_pin.sym} -170 -330 2 0 {name=l29 lab=NB}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -380 -420 0 0 {name=M29
L=0.5
W=3
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -330 -370 2 0 {name=l57 lab=PB}
C {sky130_fd_pr/cap_mim_m3_1.sym} -490 -320 2 0 {name=C17 model=cap_mim_m3_1 W=30 L=30 MF=10 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -40 -300 2 0 {name=C18 model=cap_mim_m3_1 W=30 L=30 MF=10 spiceprefix=X}
C {devices/gnd.sym} -40 -270 0 0 {name=l30 lab=GND}
C {devices/lab_pin.sym} -380 -320 0 0 {name=l106 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -240 -420 0 0 {name=l107 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -220 -420 0 0 {name=R39
W=0.35
L=10.5
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -360 -320 0 0 {name=R27
W=0.35
L=10.5
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {xschemwrap/filter.sym} -730 -290 0 0 {name=x1}
C {devices/lab_pin.sym} -770 -360 0 0 {name=l1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -730 -230 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -690 -360 2 0 {name=l3 lab=PB}
C {devices/vsource.sym} -70 -420 0 0 {name=V8 value=1.8}
C {devices/gnd.sym} -70 -390 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -260 90 0 1 {name=l33 lab=GND}
C {devices/lab_wire.sym} -350 -130 0 0 {name=l37 lab=FILT_2}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -380 -60 0 0 {name=M43
L=0.5
W=10
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -380 60 0 0 {name=M44
L=0.5
W=10
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} -400 -60 0 0 {name=l75 lab=PB}
C {devices/lab_pin.sym} -360 -110 0 0 {name=l77 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/cap_mim_m3_1.sym} -750 60 2 0 {name=C1 model=cap_mim_m3_1 W=29 L=29 MF=3 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -490 -90 3 0 {name=C7 model=cap_mim_m3_1 W=20 L=30 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -490 60 2 0 {name=C28 model=cap_mim_m3_1 W=14 L=14 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -540 10 0 0 {name=l119 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -690 10 0 0 {name=l120 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -810 10 0 0 {name=l121 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -690 30 1 0 {name=R11
W=0.35
L=9
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} -540 30 1 0 {name=R12
W=0.69
L=6.9
model=res_xhigh_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_2p85.sym} -810 30 1 0 {name=R10
W=2.85
L=9.5
model=res_xhigh_po_2p85
spiceprefix=X
 mult=1}
C {devices/vsource.sym} -880 0 0 0 {name=V1 value="0.9 AC 1"}
C {devices/gnd.sym} -880 30 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -850 -260 0 0 {name=V2 value="0.9 AC 1"}
C {devices/gnd.sym} -850 -230 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -620 -290 0 0 {name=l7 lab=FILT_1}
