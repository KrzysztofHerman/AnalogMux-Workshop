v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 880 -660 1680 -270 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.0092478e-05
x2=0.00010009248
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="4 7"
node="din0
din1"}
B 2 880 -240 1680 150 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.0092478e-05
x2=0.00010009248
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="4 7"
node="dout0
dout1"}
T {Analog} 10 -380 0 0 0.4 0.4 {}
T {Analog} 610 -410 0 0 0.4 0.4 {}
T {Digital} 370 -280 0 0 0.4 0.4 {}
T {
} 30 -220 0 0 0.4 0.4 {}
N -250 -200 -250 -180 {
lab=din0}
N -250 -140 -250 -120 {
lab=GND}
N -170 -180 -170 -90 {
lab=din1}
N -40 -200 230 -200 {
lab=din0}
N 20 -180 230 -180 {
lab=din1}
N 290 -200 350 -200 {
lab=#net1}
N 290 -180 350 -180 {
lab=#net2}
N -40 -270 -40 -200 {
lab=din0}
N -250 -200 -40 -200 {
lab=din0}
N 20 -270 20 -180 {
lab=din1}
N -170 -180 20 -180 {
lab=din1}
N 590 -200 650 -200 {
lab=dout0}
N 650 -240 650 -200 {
lab=dout0}
N 590 -180 710 -180 {
lab=dout1}
N 710 -240 710 -180 {
lab=dout1}
N 650 -340 650 -300 {
lab=GND}
N 710 -340 710 -300 {
lab=GND}
N 650 -340 710 -340 {
lab=GND}
N 710 -180 750 -180 {
lab=dout1}
N 650 -200 750 -200 {
lab=dout0}
N 450 -200 530 -200 {
lab=#net3}
N 450 -180 530 -180 {
lab=#net4}
C {devices/vsource.sym} -170 -60 0 0 {name=Vrst value="dc 0 ac 0 pulse(0 1.2 15u 10n 10n 10u 20u)"}
C {devices/code_shown.sym} -300 -460 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10n 50u
write tran_basic.raw
.endc
"}
C {adc_bridge1.sym} 260 -200 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.2 
in_high=0.8
}
C {dac_bridge1.sym} 560 -200 0 0 {name=A2
dac=dac1
dac_bridge_model=dac_bridge
in_low=0.0
in_high=1.2
}
C {devices/title.sym} -100 250 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {adc_bridge1.sym} 260 -180 0 0 {name=A4
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.2
in_high=0.8
}
C {dac_bridge1.sym} 560 -180 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
in_low=0.0
in_high=1.2
}
C {devices/launcher.sym} 1350 210 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tran_basic.raw tran"
}
C {devices/capa.sym} 650 -270 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 710 -270 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -250 -120 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -40 -270 1 0 {name=p1 sig_type=std_logic lab=din0}
C {devices/lab_pin.sym} 20 -270 1 0 {name=p2 sig_type=std_logic lab=din1}
C {devices/lab_pin.sym} 750 -180 2 0 {name=p21 sig_type=std_logic lab=dout1}
C {devices/lab_pin.sym} 750 -200 2 0 {name=p22 sig_type=std_logic lab=dout0}
C {devices/vsource.sym} -250 -150 0 0 {name=Vrst1 value="dc 0 ac 0 pulse(0 1.2 0 10n 10n 10u 20u)"}
C {devices/gnd.sym} 680 -340 0 0 {name=l3 lab=GND}
C {basic.sym} 400 -190 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./basic.so
}
