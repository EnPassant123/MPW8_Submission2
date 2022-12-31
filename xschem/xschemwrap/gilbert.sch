v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -240 -40 -90 -40 {
lab=#net6}
N -240 -140 -240 -100 {
lab=#net7}
N -10 -140 80 -140 {
lab=#net7}
N 80 -140 80 -100 {
lab=#net7}
N 270 -120 270 -100 {
lab=#net8}
N 180 -120 270 -120 {
lab=#net8}
N -90 -120 -90 -100 {
lab=#net8}
N 80 -40 270 -40 {
lab=#net9}
N -160 20 190 20 {
lab=#net10}
N 0 80 0 90 {
lab=GND}
N 40 50 100 50 {
lab=NB}
N -160 -250 360 -250 {
lab=VDD}
N -10 -190 -10 -140 {
lab=#net7}
N 180 -190 180 -120 {
lab=#net8}
N -50 -70 40 -70 {
lab=MIX_C}
N 310 -70 310 240 {
lab=MIX_D}
N -280 240 310 240 {
lab=MIX_D}
N -280 -70 -280 240 {
lab=MIX_D}
N 80 -180 320 -180 {
lab=#net7}
N 80 -180 80 -140 {
lab=#net7}
N 30 -220 220 -220 {
lab=PB}
N -240 -140 -10 -140 {
lab=#net7}
N -90 -120 180 -120 {
lab=#net8}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -180 -10 0 0 {name=M7
L=0.15
W=10
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -260 -70 0 0 {name=M8
L=0.15
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 60 -70 0 0 {name=M9
L=0.15
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 290 -70 0 1 {name=M10
L=0.15
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -70 -70 0 1 {name=M11
L=0.15
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 210 -10 0 1 {name=M12
L=0.15
W=10
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 20 50 0 1 {name=M13
L=0.15
W=5
body=GND
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {devices/gnd.sym} 0 90 0 0 {name=l15 lab=GND}
C {devices/lab_pin.sym} 10 -70 0 0 {name=l19 lab=MIX_C}
C {devices/lab_pin.sym} -280 -20 0 0 {name=l20 lab=MIX_D
}
C {devices/lab_pin.sym} -200 -10 0 0 {name=l18 lab=IN_1
}
C {devices/lab_pin.sym} 100 -250 0 0 {name=l58 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 230 -10 2 0 {name=l67 lab=VMID
}
C {devices/lab_pin.sym} 100 50 2 0 {name=l16 lab=NB}
C {devices/lab_pin.sym} 220 -220 2 0 {name=l82 lab=PB}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 10 -220 0 1 {name=M39
L=0.5
W=4
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8_lvt.sym} 200 -220 0 1 {name=M40
L=0.5
W=4
body=VDD
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
