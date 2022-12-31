v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -112.5 460 -112.5 490 {
lab=#net1}
N -112.5 490 -72.5 490 {
lab=#net1}
N 77.5 330 267.5 330 {
lab=VDD}
N 177.5 600 197.5 600 {
lab=#net2}
N 77.5 550 77.5 600 {
lab=#net2}
N 97.5 780 267.5 780 {
lab=GND}
N -72.5 560 -72.5 670 {
lab=#net3}
N -72.5 730 -72.5 780 {
lab=GND}
N -72.5 780 97.5 780 {
lab=GND}
N 197.5 660 227.5 660 {
lab=#net4}
N 267.5 610 267.5 780 {
lab=GND}
N 227.5 580 227.5 660 {
lab=#net4}
N 7.5 520 37.5 520 {
lab=#net3}
N -112.5 520 -112.5 560 {
lab=#net3}
N -112.5 560 -72.5 560 {
lab=#net3}
N -32.5 690 157.5 690 {
lab=#net5}
N -32.5 660 -32.5 690 {
lab=#net5}
N -32.5 660 7.5 660 {
lab=#net5}
N -32.5 460 37.5 460 {
lab=#net1}
N 97.5 720 197.5 720 {
lab=GND}
N 97.5 720 97.5 780 {
lab=GND}
N 177.5 500 207.5 500 {
lab=#net6}
N 267.5 540 267.5 550 {
lab=OUT}
N 7.5 420 227.5 420 {
lab=#net3}
N 7.5 420 7.5 520 {
lab=#net3}
N -32.5 360 227.5 360 {
lab=#net1}
N -32.5 360 -32.5 460 {
lab=#net1}
N 77.5 330 77.5 430 {
lab=VDD}
N -72.5 330 -72.5 430 {
lab=VDD}
N 157.5 630 157.5 640 {
lab=#net7}
N 7.5 600 77.5 600 {
lab=#net2}
N -72.5 550 -72.5 560 {
lab=#net3}
N 7.5 720 97.5 720 {
lab=GND}
N 77.5 600 177.5 600 {
lab=#net2}
N -112.5 520 7.5 520 {
lab=#net3}
N -112.5 460 -32.5 460 {
lab=#net1}
N -72.5 330 77.5 330 {
lab=VDD}
N 267.5 450 267.5 540 {
lab=OUT}
N -160 640 160 640 {
lab=#net7}
N -270 310 -180 310 {
lab=VDD}
N -180 640 -140 640 {
lab=#net7}
N 210 560 210 660 {
lab=#net4}
N -250 630 -30 630 {
lab=#net8}
N 267.5 500 287.5 500 {
lab=OUT}
N 287.5 305 287.5 500 {
lab=OUT}
N -90 305 287.5 305 {
lab=OUT}
N -250 570 -90 305 {
lab=OUT}
N 177.5 560 180 560 {
lab=#net4}
N 167.5 560 210 560 {
lab=#net4}
C {devices/lab_pin.sym} 27.5 330 0 0 {name=l14 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 97.5 780 0 0 {name=l44 lab=GND}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -92.5 460 0 0 {name=M53
L=0.5
W=3
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -12.5 630 0 0 {name=M54
L=0.5
W=3
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 177.5 630 0 0 {name=M55
L=0.5
W=3
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 57.5 460 0 0 {name=M56
L=0.5
W=10
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 247.5 580 0 0 {name=M57
L=0.5
W=59
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -92.5 520 0 0 {name=M58
L=0.5
W=3
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 57.5 520 0 0 {name=M59
L=0.5
W=10
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -12.5 690 0 0 {name=M60
L=0.5
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 177.5 690 0 0 {name=M61
L=0.5
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 247.5 420 0 0 {name=M62
L=0.5
W=50
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 247.5 360 0 0 {name=M63
L=0.5
W=50
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 157.5 530 0 0 {name=l109 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -92.5 700 0 0 {name=l112 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} -72.5 700 0 0 {name=R17
W=0.69
L=10.4
model=res_xhigh_po_0p69
spiceprefix=X
 mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 177.5 530 0 0 {name=R18
W=2.85
L=10
model=res_high_po_2p85
spiceprefix=X
 mult=1}
C {devices/gnd.sym} -270 370 0 1 {name=l126 lab=GND}
C {devices/vsource.sym} -270 340 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -270 370 0 1 {name=l127 lab=GND}
C {devices/lab_pin.sym} -180 310 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -180 700 0 1 {name=l3 lab=GND}
C {devices/vsource.sym} -180 670 0 0 {name=V1 value="0.9 AC 1"}
C {devices/gnd.sym} -180 700 0 1 {name=l4 lab=GND}
C {devices/code.sym} -115 45 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -850 150 0 0 {name=NGSPICE
only_toplevel=true

value="
.include /home/eggert/magicwrap/filter/filter.spice


.option wnflag=1
.param x=4.25
vvcc vcc 0 dc 1.8
vvss vss 0 0
.control
ac dec 20 1 1e12
write schmitt.raw
.endc
" 
}
C {devices/capa.sym} -250 660 0 0 {name=C1
m=1
value=10000
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -250 690 0 1 {name=l1 lab=GND}
C {devices/ind.sym} -250 600 0 0 {name=L1
m=1
value=1000000
footprint=1206
device=inductor}
C {devices/capa.sym} 237.5 500 1 0 {name=C2
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 287.5 490 2 0 {name=l2 sig_type=std_logic lab=OUT}
C {devices/parax_cap.sym} 287.5 510 0 0 {name=C3 gnd=0 value=2p m=1}
