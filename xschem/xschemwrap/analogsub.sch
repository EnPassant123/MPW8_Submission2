v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 120 10 230 10 {
lab=#net1}
N 180 10 180 30 {
lab=#net1}
N 120 -110 230 -110 {
lab=VDD}
N -190 10 -80 10 {
lab=#net2}
N -130 10 -130 30 {
lab=#net2}
N -190 -110 -80 -110 {
lab=VDD}
N 160 -80 190 -80 {
lab=#net3}
N 180 -50 230 -50 {
lab=#net3}
N 180 -80 180 -50 {
lab=#net3}
N -150 -80 -120 -80 {
lab=#net4}
N -130 -80 -130 -50 {
lab=#net4}
N -190 -50 -130 -50 {
lab=#net4}
N -80 -50 120 -50 {
lab=#net5}
N -40 -50 -40 -20 {
lab=#net5}
N -80 -110 120 -110 {
lab=VDD}
N -290 60 140 60 {
lab=NB}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 210 -80 0 0 {name=M110
L=0.5
W=2
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 140 -80 0 1 {name=M111
L=0.5
W=2
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 100 -20 0 0 {name=M112
L=0.5
W=4
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 250 -20 0 1 {name=M113
L=0.5
W=4
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 160 60 0 0 {name=M114
L=0.5
W=4
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 180 90 0 0 {name=l7 lab=GND}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -100 -80 0 0 {name=M115
L=0.5
W=2
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} -170 -80 0 1 {name=M116
L=0.5
W=2
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -210 -20 0 0 {name=M117
L=0.5
W=4
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -60 -20 0 1 {name=M118
L=0.5
W=4
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -150 60 0 0 {name=M119
L=0.5
W=4
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} -130 90 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -230 -20 0 0 {name=l13 lab=VMID
}
C {devices/lab_pin.sym} -290 60 0 0 {name=l46 lab=NB}
C {devices/lab_pin.sym} 80 -20 0 0 {name=l47 lab=MIX_1}
C {devices/lab_pin.sym} 270 -20 2 0 {name=l48 lab=MIX_2}
C {devices/lab_pin.sym} -130 -110 0 0 {name=l81 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 50 -50 0 0 {name=l1 lab=MIX_1}
