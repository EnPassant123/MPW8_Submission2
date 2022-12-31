v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 80 -0 130 -0 {
lab=OUT}
N -302.5 570 -142.5 570 {
lab=VDD}
N -342.5 600 -342.5 630 {
lab=#net1}
N -342.5 630 -302.5 630 {
lab=#net1}
N -302.5 810 -142.5 810 {
lab=GND}
N -442.5 810 -302.5 810 {
lab=GND}
N -482.5 750 -442.5 750 {
lab=#net2}
N -442.5 570 -302.5 570 {
lab=DVDD}
N -342.5 600 -182.5 600 {
lab=#net1}
N -442.5 750 -342.5 750 {
lab=#net2}
N -482.5 720 -482.5 750 {
lab=#net2}
N -482.5 720 -447.5 720 {
lab=#net2}
N -447.5 720 -442.5 720 {
lab=#net2}
N -302.5 630 -302.5 720 {
lab=#net1}
N -142.5 690 22.5 690 {
lab=#net3}
N -142.5 810 17.5 810 {
lab=GND}
N 17.5 810 22.5 810 {
lab=GND}
N 22.5 750 22.5 810 {
lab=GND}
N -182.5 660 -182.5 720 {
lab=CLK_UNB}
N 197.5 690 362.5 690 {
lab=#net4}
N 197.5 810 357.5 810 {
lab=GND}
N 357.5 810 362.5 810 {
lab=GND}
N 362.5 750 362.5 810 {
lab=GND}
N 157.5 660 157.5 720 {
lab=#net3}
N 597.5 690 762.5 690 {
lab=#net5}
N 597.5 810 757.5 810 {
lab=GND}
N 757.5 810 762.5 810 {
lab=GND}
N 762.5 750 762.5 810 {
lab=GND}
N 557.5 660 557.5 720 {
lab=#net4}
N 977.5 690 1142.5 690 {
lab=#net6}
N 977.5 810 1137.5 810 {
lab=GND}
N 1137.5 810 1142.5 810 {
lab=GND}
N 1142.5 750 1142.5 810 {
lab=GND}
N 937.5 660 937.5 720 {
lab=#net5}
N 1412.5 685 1577.5 685 {
lab=CLK_UNB}
N 1412.5 805 1572.5 805 {
lab=GND}
N 1572.5 805 1577.5 805 {
lab=GND}
N 1372.5 655 1372.5 715 {
lab=#net6}
N 1142.5 805 1412.5 805 {
lab=GND}
N 762.5 810 977.5 810 {
lab=GND}
N 362.5 810 597.5 810 {
lab=GND}
N 22.5 810 197.5 810 {
lab=GND}
N 22.5 690 157.5 690 {
lab=#net3}
N 362.5 690 557.5 690 {
lab=#net4}
N 762.5 690 937.5 690 {
lab=#net5}
N 1142.5 690 1372.5 690 {
lab=#net6}
N -147.5 570 1217.5 570 {
lab=DVDD}
N 1217.5 565 1412.5 565 {
lab=DVDD}
N 1217.5 565 1217.5 570 {
lab=DVDD}
N -182.5 600 557.5 600 {
lab=#net1}
N 557.5 600 937.5 600 {
lab=#net1}
N 937.5 595 1372.5 595 {
lab=#net1}
N 937.5 595 937.5 600 {
lab=#net1}
N 937.5 775 1372.5 775 {
lab=#net2}
N 937.5 775 937.5 780 {
lab=#net2}
N -177.5 780 937.5 780 {
lab=#net2}
N -182.5 780 -177.5 780 {
lab=#net2}
N -442.5 780 -442.5 810 {
lab=GND}
N -302.5 780 -302.5 810 {
lab=GND}
N -382.5 750 -382.5 780 {
lab=#net2}
N -182.5 780 -182.5 800 {
lab=#net2}
N -382.5 800 -182.5 800 {
lab=#net2}
N -382.5 780 -382.5 800 {
lab=#net2}
N 1657.5 685 1752.5 685 {
lab=CLK}
N -442.5 720 -357.5 720 {
lab=#net2}
N -357.5 570 -357.5 655 {
lab=DVDD}
N -357.5 655 -357.5 660 {
lab=DVDD}
N -517.5 630 -482.5 630 {
lab=CTRL}
N -442.5 540 -442.5 570 {
lab=DVDD}
N -442.5 570 -442.5 600 {
lab=DVDD}
N -200 0 -70 0 {
lab=CTRL}
C {xschemwrap/vco.sym} 0 0 0 0 {}
C {devices/code_shown.sym} 292.5 -172.5 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /home/eggert/magicwrap/vco/vco.spice
.ic v(CTRL_IC)=0.9
.ic v(CTRL_IC2)=0.9
.ic v(CTRL)=0.9

.option wnflag=1
.param x=4.25
vvcc vcc 0 dc 1.8
vvss vss 0 0
.control
tran 30p 2u
write sim.raw
.endc
" 
}
C {devices/code.sym} 27.5 -257.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/gnd.sym} 0 60 0 1 {name=l126 lab=GND}
C {devices/vsource.sym} 210 -30 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} 0 60 0 1 {name=l127 lab=GND}
C {devices/lab_pin.sym} 210 -60 2 1 {name=p2 lab=DVDD}
C {devices/lab_pin.sym} 0 -60 2 1 {name=p3 lab=DVDD}
C {devices/gnd.sym} 210 0 0 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} 130 0 0 1 {name=p4 lab=OUT}
C {devices/vsource.sym} -150 30 0 0 {name=V1 value=0}
C {devices/gnd.sym} -150 60 0 1 {name=l2 lab=GND}
C {devices/gnd.sym} -442.5 810 0 1 {name=l125 lab=GND}
C {sky130_fd_pr/cap_mim_m3_1.sym} 22.5 720 0 0 {name=C23 model=cap_mim_m3_1 W=x L=x MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet3_01v8.sym} -462.5 750 0 0 {name=M19
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -322.5 750 0 0 {name=M80
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -322.5 600 0 0 {name=M81
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -162.5 600 0 0 {name=M82
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -162.5 660 0 0 {name=M83
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -162.5 780 0 0 {name=M85
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -162.5 720 0 0 {name=M86
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 177.5 600 0 0 {name=M87
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 177.5 660 0 0 {name=M88
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 177.5 780 0 0 {name=M90
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 177.5 720 0 0 {name=M91
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 577.5 600 0 0 {name=M92
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 577.5 660 0 0 {name=M93
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 577.5 780 0 0 {name=M95
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 577.5 720 0 0 {name=M96
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 957.5 600 0 0 {name=M97
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 957.5 660 0 0 {name=M98
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 957.5 780 0 0 {name=M100
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 957.5 720 0 0 {name=M101
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1392.5 595 0 0 {name=M102
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1392.5 655 0 0 {name=M103
L=0.15
W=1
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1392.5 775 0 0 {name=M105
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 1392.5 715 0 0 {name=M106
L=0.15
W=1
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -182.5 690 2 1 {name=p1 lab=CLK_UNB}
C {devices/lab_pin.sym} 1562.5 685 2 1 {name=p24 lab=CLK_UNB}
C {devices/lab_pin.sym} 1752.5 685 2 1 {name=p25 lab=CLK}
C {devices/lab_pin.sym} -442.5 540 2 1 {name=p27 lab=DVDD}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -462.5 630 0 0 {name=M107
L=0.35
W=0.5
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 362.5 720 0 0 {name=C29 model=cap_mim_m3_1 W=x L=x MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 762.5 720 0 0 {name=C30 model=cap_mim_m3_1 W=x L=x MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1142.5 720 0 0 {name=C31 model=cap_mim_m3_1 W=x L=x MF=1 spiceprefix=X}
C {devices/lab_pin.sym} -517.5 630 2 1 {name=p7 lab=CTRL}
C {devices/lab_pin.sym} -442.5 540 2 1 {name=p5 lab=DVDD}
C {devices/lab_pin.sym} -462.5 690 0 0 {name=l131 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -377.5 690 0 0 {name=l132 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -357.5 690 0 0 {name=R40
W=0.35
L=14
model=res_xhigh_po_0p35
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} -442.5 690 0 0 {name=R38
W=0.69
L=12.3
model=res_xhigh_po_0p69
spiceprefix=X
 mult=1}
C {devices/lab_pin.sym} -197.5 0 2 1 {name=p6 lab=CTRL}
C {devices/lab_pin.sym} -212.5 570 0 0 {name=l3 sig_type=std_logic lab=VDD}
C {sky130_stdcells/clkinv_1.sym} 1617.5 685 0 0 {name=x33 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
