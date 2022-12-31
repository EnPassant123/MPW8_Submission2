v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -180 -45 -145 -45 {
lab=A}
N -255 -5 -145 -5 {
lab=#net1}
N -255 -5 -255 85 {
lab=#net1}
N -255 80 -145 80 {
lab=#net1}
N -255 85 -255 155 {
lab=#net1}
N -10 135 35 135 {
lab=#net2}
N 35 40 60 40 {
lab=#net2}
N 60 40 60 135 {
lab=#net2}
N 35 135 55 135 {
lab=#net2}
N 55 135 60 135 {
lab=#net2}
N -10 175 100 175 {
lab=#net3}
N 35 -45 100 -45 {
lab=#net3}
N 220 -75 220 -60 {
lab=DVDD}
N 220 0 380 0 {
lab=#net4}
N 220 60 380 60 {
lab=GND}
N 220 -60 380 -60 {
lab=DVDD}
N -145 -25 -145 -5 {
lab=#net1}
N -145 60 -145 80 {
lab=#net1}
N 100 -45 100 175 {
lab=#net3}
N 145 -30 180 -30 {
lab=#net5}
N 65 -30 65 -25 {
lab=#net6}
N 35 -25 65 -25 {
lab=#net6}
N 60 40 70 40 {
lab=#net2}
N 180 30 180 40 {
lab=#net7}
N 150 40 180 40 {
lab=#net7}
N -150 155 -130 155 {
lab=#net8}
N -255 155 -230 155 {
lab=#net1}
N -240 -45 -180 -45 {
lab=A}
N 410 -60 410 -20 {
lab=DVDD}
N 380 -60 410 -60 {
lab=DVDD}
N 337.5 -130 337.5 -70 {
lab=GND}
N 142.5 -70 337.5 -70 {
lab=GND}
N 142.5 -130 142.5 -70 {
lab=GND}
N 247.5 -190 272.5 -190 {
lab=CTRL_IC}
N 117.5 -70 142.5 -70 {
lab=GND}
N 337.5 -190 402.5 -190 {
lab=CTRL}
N 402.5 -220 402.5 -190 {
lab=CTRL}
N 272.5 -220 277.5 -220 {
lab=CTRL_IC}
N 272.5 -220 272.5 -190 {
lab=CTRL_IC}
N 337.5 -220 337.5 -190 {
lab=CTRL}
N 187.5 -190 247.5 -190 {
lab=CTRL_IC}
N 252.5 -137.5 252.5 -130 {
lab=CTRL_IC2}
N 252.5 -130 272.5 -130 {
lab=CTRL_IC2}
N 145 -190 187.5 -190 {
lab=CTRL_IC}
N 142.5 -190 145 -190 {
lab=CTRL_IC}
N 140 -190 142.5 -190 {
lab=CTRL_IC}
C {sky130_stdcells/dfrbp_1.sym} -55 -25 0 0 {name=x28 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} -55 60 0 0 {name=x29 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/gnd.sym} 220 60 0 1 {name=l129 lab=GND}
C {sky130_stdcells/nand2_1.sym} -70 155 2 0 {name=x39 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 220 -75 2 1 {name=p30 lab=DVDD}
C {sky130_fd_pr/pfet3_01v8.sym} 200 -30 0 0 {name=M108
L=0.15
W=10
body=VDD
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 200 30 0 0 {name=M109
L=0.15
W=10
body=GND
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_stdcells/bufbuf_8.sym} 105 -30 0 0 {name=x162 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/bufbuf_8.sym} 110 40 0 0 {name=x30 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkdlybuf4s50_1.sym} -190 155 2 0 {name=x31 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -145 40 2 1 {name=p3 lab=CLKREF}
C {devices/lab_pin.sym} -197.5 -45 2 1 {name=p6 lab=A
}
C {sky130_fd_pr/res_xhigh_po_5p73.sym} 410 0 1 0 {name=R17
W=5.73
L=5.16
model=res_xhigh_po_5p73
spiceprefix=X
 mult=1}
C {xschemwrap/phasecmp.sym} 0 -190 0 0 {name=x1}
C {devices/gnd.sym} 0 -150 0 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} 0 -230 2 1 {name=p1 lab=DVDD}
C {devices/lab_pin.sym} -70 -210 2 1 {name=p2 lab=A
}
C {devices/lab_pin.sym} -70 -170 2 1 {name=p4 lab=CLKREF}
C {devices/vsource.sym} 380 -252.5 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 380 -222.5 0 1 {name=l8 lab=GND}
C {devices/lab_pin.sym} 380 -282.5 2 1 {name=p5 lab=DVDD}
C {devices/sqwsource.sym} 462.5 -247.5 0 0 {name=V1 vhi=1.8 freq=5e6}
C {devices/gnd.sym} 462.5 -217.5 0 1 {name=l2 lab=GND}
C {devices/sqwsource.sym} 552.5 -247.5 0 0 {name=V3 vhi=1.8 freq=4.4e6}
C {devices/gnd.sym} 552.5 -217.5 0 1 {name=l3 lab=GND}
C {devices/lab_pin.sym} 462.5 -277.5 2 1 {name=p7 lab=A
}
C {devices/lab_pin.sym} 552.5 -277.5 2 1 {name=p8 lab=CLKREF}
C {devices/code.sym} 455 -420 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.include /home/eggert/test.xspice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code_shown.sym} -625 -575 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /home/eggert/magicwrap/phasecmp/phasecmp.spice
.ic v(CTRL_IC)=0.9
.ic v(CTRL_IC2)=0.9
.ic v(CTRL)=0.9

.option wnflag=1
.param x=4.25
vvcc vcc 0 dc 1.8
vvss vss 0 0
.control
tran 30p 1u
write sim.raw
.endc
" 
}
C {devices/capa.sym} 142.5 -160 0 0 {name=C32
m=1
value=1.165n
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 337.5 -160 0 0 {name=C33
m=1
value=117p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 307.5 -220 1 0 {name=R9
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 272.5 -160 2 0 {name=R37
value=658
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 272.5 -100 0 0 {name=C34
m=1
value=7.128n
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 120 -70 0 1 {name=l130 lab=GND}
C {devices/lab_pin.sym} 402.5 -217.5 2 1 {name=p29 lab=CTRL}
C {devices/lab_pin.sym} 272.5 -207.5 2 1 {name=p31 lab=CTRL_IC}
C {devices/lab_pin.sym} 252.5 -137.5 2 1 {name=p32 lab=CTRL_IC2}
C {devices/vsource.sym} 110 -190 3 0 {name=V4 value=0}
