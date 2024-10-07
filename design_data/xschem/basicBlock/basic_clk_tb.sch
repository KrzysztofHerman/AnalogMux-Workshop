v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1200 -730 2000 -340 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="4 7"
node="din0
din1"}
B 2 1200 -310 2000 80 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=dout0}
B 2 1210 -1160 2010 -770 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="9 8"
node="clk
rst"}
B 2 1200 90 2000 480 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.00015
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color=6
node=dout1}
T {Analog} 10 -380 0 0 0.4 0.4 {}
T {Analog} 610 -390 0 0 0.4 0.4 {}
T {Digital} 370 -280 0 0 0.4 0.4 {}
T {
} 30 -220 0 0 0.4 0.4 {}
T {
} 160 -220 0 0 0.4 0.4 {}
N -250 -200 -250 -180 {
lab=clk}
N -250 -140 -250 -120 {
lab=GND}
N -170 -180 -170 -90 {
lab=rst}
N 290 -200 350 -200 {
lab=#net1}
N 290 -180 350 -180 {
lab=#net2}
N -40 -270 -40 -200 {
lab=clk}
N -250 -200 -40 -200 {
lab=clk}
N 20 -270 20 -180 {
lab=rst}
N -170 -180 20 -180 {
lab=rst}
N 590 -180 650 -180 {
lab=dout0}
N 650 -220 650 -180 {
lab=dout0}
N 590 -160 710 -160 {
lab=dout1}
N 710 -220 710 -160 {
lab=dout1}
N 650 -320 650 -280 {
lab=GND}
N 710 -320 710 -280 {
lab=GND}
N 650 -320 710 -320 {
lab=GND}
N 710 -160 750 -160 {
lab=dout1}
N 650 -180 750 -180 {
lab=dout0}
N 450 -180 530 -180 {
lab=#net3}
N 450 -160 530 -160 {
lab=#net4}
N -70 50 -70 70 {
lab=GND}
N -40 -200 230 -200 {
lab=clk}
N 20 -180 230 -180 {
lab=rst}
N -70 -160 -70 10 {
lab=din0}
N 90 -160 230 -160 {
lab=din0}
N 150 -140 230 -140 {
lab=din1}
N 10 -140 10 100 {
lab=din1}
N 90 -270 90 -160 {
lab=din0}
N 150 -270 150 -140 {
lab=din1}
N 10 -140 150 -140 {
lab=din1}
N -70 -160 90 -160 {
lab=din0}
N 290 -160 350 -160 {
lab=#net5}
N 290 -140 350 -140 {
lab=#net6}
C {devices/vsource.sym} -170 -60 0 0 {name=Vrst value="dc 0 ac 0 pulse(0 1.2 1u 10n 10n 10u 20u 1)"}
C {devices/code_shown.sym} -300 -460 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10n 150u
write tran_basic.raw
.endc
"}
C {adc_bridge1.sym} 260 -200 0 0 {name=A1
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.2 
in_high=0.8
}
C {dac_bridge1.sym} 560 -180 0 0 {name=A2
dac=dac1
dac_bridge_model=dac_bridge
in_low=0.0
in_high=1.2
}
C {devices/title.sym} -120 250 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {adc_bridge1.sym} 260 -180 0 0 {name=A4
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.2
in_high=0.8
}
C {dac_bridge1.sym} 560 -160 0 0 {name=A6
dac=dac1
dac_bridge_model=dac_bridge
in_low=0.0
in_high=1.2
}
C {devices/launcher.sym} 520 420 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/tran_basic.raw tran"
}
C {devices/capa.sym} 650 -250 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 710 -250 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -250 -120 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -170 -30 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -40 -270 1 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 20 -270 1 0 {name=p2 sig_type=std_logic lab=rst}
C {devices/lab_pin.sym} 750 -160 2 0 {name=p21 sig_type=std_logic lab=dout1}
C {devices/lab_pin.sym} 750 -180 2 0 {name=p22 sig_type=std_logic lab=dout0}
C {devices/vsource.sym} -250 -150 0 0 {name=Vrst1 value="dc 0 ac 0 pulse(0 1.2 0u 10n 10n 5u 10u)"}
C {devices/gnd.sym} 680 -320 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 10 130 0 0 {name=Vrst2 value="dc 0 ac 0 pulse(0 1.2 20u 10n 10n 15u 20u)"}
C {adc_bridge1.sym} 260 -160 0 0 {name=A3
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.2 
in_high=0.8
}
C {adc_bridge1.sym} 260 -140 0 0 {name=A5
adc=adc1
adc_bridge_model=adc_bridge
in_low=0.2
in_high=0.8
}
C {devices/gnd.sym} -70 70 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 10 160 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 90 -270 1 0 {name=p3 sig_type=std_logic lab=din0}
C {devices/lab_pin.sym} 150 -270 1 0 {name=p4 sig_type=std_logic lab=din1}
C {devices/vsource.sym} -70 40 0 0 {name=Vrst3 value="dc 0 ac 0 pulse(0 1.2 5u 10n 10n 10u 20u)"}
C {basic_clk.sym} 400 -170 0 0 {name=adut
dut=dut
d_cosim_model= d_cosim
model=./basic.so
}
