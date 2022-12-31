v {xschem version=3.1.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -170 50 -80 50 {
lab=#net1}
N 150 -100 150 10 {
lab=#net2}
N -170 -100 150 -100 {
lab=#net2}
N -170 -100 -170 -10 {
lab=#net2}
N -352.5 -175 -262.5 -175 {
lab=VDD}
C {xschemwrap/opamp.sym} 20 10 0 0 {}
C {devices/capa.sym} -170 80 0 0 {name=C1
m=1
value=10000
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -170 110 0 1 {name=l1 lab=GND}
C {devices/ind.sym} -170 20 0 0 {name=L1
m=1
value=1000000
footprint=1206
device=inductor}
C {devices/gnd.sym} 20 70 0 1 {name=l2 lab=GND}
C {devices/gnd.sym} -352.5 -115 0 1 {name=l126 lab=GND}
C {devices/vsource.sym} -352.5 -145 0 0 {name=V3 value=1.8}
C {devices/gnd.sym} -352.5 -115 0 1 {name=l127 lab=GND}
C {devices/lab_pin.sym} -262.5 -175 0 0 {name=l6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 20 -60 2 0 {name=l3 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} -80 30 0 1 {name=l4 lab=GND}
C {devices/vsource.sym} -80 0 0 0 {name=V1 value="0.9 AC 1"}
C {devices/gnd.sym} -80 30 0 1 {name=l5 lab=GND}
C {devices/code.sym} -147.5 -277.5 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/code_shown.sym} -882.5 -172.5 0 0 {name=NGSPICE
only_toplevel=true

value="
.include /home/eggert/magicwrap/opamp/opamp.spice


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
