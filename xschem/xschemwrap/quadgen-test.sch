v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 -260 217.5 -260 {
lab=#net1}
N 180 -220 217.5 -220 {
lab=#net2}
N 180 -150 215 -150 {
lab=#net3}
N 180 -110 215 -110 {
lab=#net4}
N -212.5 -150 -100 -180 {
lab=CLK}
N -417.5 145 -355 145 {
lab=MIX_C}
N -417.5 107.5 -417.5 145 {
lab=MIX_C}
N -417.5 107.5 -175 107.5 {
lab=MIX_C}
N -175 125 -100 125 {
lab=MIX_A}
N -100 125 -100 142.5 {
lab=MIX_A}
N -100 145 -30 145 {
lab=MIX_A}
N -100 142.5 -100 145 {
lab=MIX_A}
N 335 152.5 380 152.5 {
lab=MIX_C}
N 380 87.5 380 152.5 {
lab=MIX_C}
N -175 80 195 80 {
lab=MIX_C}
N -175 80 -175 107.5 {
lab=MIX_C}
N -175 145 -175 197.5 {
lab=MIX_B}
N -105 125 -105 195 {
lab=MIX_A}
N 335 132.5 355 132.5 {
lab=MIX_D}
N 355 132.5 355 210 {
lab=MIX_D}
N 195 87.5 380 87.5 {
lab=MIX_C}
N 195 80 195 87.5 {
lab=MIX_C}
N -30 152.5 155 152.5 {
lab=MIX_A}
N -30 145 -30 152.5 {
lab=MIX_A}
C {xschemwrap/quadgen.sym} 40 -180 0 0 {}
C {devices/lab_pin.sym} 40 -300 2 1 {name=p1 lab=DVDD}
C {devices/gnd.sym} 40 -70 0 1 {name=l1 lab=GND}
C {devices/lab_pin.sym} -212.5 -150 2 1 {name=p2 lab=CLK}
C {devices/vsource.sym} -212.5 -270 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} -212.5 -240 0 1 {name=l8 lab=GND}
C {devices/lab_pin.sym} -212.5 -300 2 1 {name=p5 lab=DVDD}
C {devices/sqwsource.sym} -212.5 -120 0 0 {name=V1 vhi=1.8 freq=52e6}
C {devices/gnd.sym} -212.5 -90 0 1 {name=l2 lab=GND}
C {devices/code.sym} -105 -577.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.include /home/eggert/test.xspice
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code_shown.sym} -552.5 -677.5 0 0 {name=NGSPICE
only_toplevel=true
value="
.include /home/eggert/magicwrap/quadgen/quadgen.spice
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
C {devices/lab_pin.sym} -105 195 3 0 {name=l5 lab=MIX_A}
C {sky130_stdcells/dfrbp_1.sym} -265 145 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 245 152.5 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -355 125 2 1 {name=p19 lab=CLK}
C {devices/lab_pin.sym} -355 165 2 1 {name=p21 lab=DVDD}
C {devices/lab_pin.sym} 155 172.5 2 1 {name=p22 lab=DVDD}
C {devices/lab_pin.sym} 75 132.5 2 1 {name=p20 lab=CLK}
C {sky130_stdcells/clkinv_1.sym} 115 132.5 0 0 {name=x33 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} -175 197.5 3 0 {name=l133 lab=MIX_B
}
C {devices/lab_pin.sym} 367.5 87.5 2 0 {name=l134 lab=MIX_C}
C {devices/lab_pin.sym} 355 210 2 0 {name=l135 lab=MIX_D
}
