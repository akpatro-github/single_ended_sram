******SE-SRAM_6T CIRCUIT********


******Inverter 1*******
M2 nqbar nq 0 0 n w=0.8u l=0.4u
M1 nqbar nq avdd avdd p w=0.6u l=0.4u

******Inverter 2*******
M4 nq nqbar nwa 0 n w=0.6u l=0.4u
M3 nq nqbar avdd avdd p w=0.7u l=0.4u

******Write Asiist transistor***
Mwa nwa nw0 0 0 n w=0.6u l=0.4u

******Acess Transistor*****
M5 BL WL nq 0 n w=1u l=0.4u

******Read AssistTransistor*****
M6 BL nqbar nra 0 n w=0.6u l=0.4u
Mra nra R 0 0 n w=0.6u l=0.4u


****Parasitcs*****
cw1 BL 0 1270f
cw3 WL 0 2560f
m10 BL 0 avdd 0 n w=1u l=0.4u m=127
*m7 blb gnd vdd gnd n w=0.8u l=0.4u m=127
m11 avdd WL 0 0 n w=1u l=0.4u m=255
*m12 avdd WL avdd 0 n w=1u l=0.4u m=255

*****Precharge****
Mp1 BL pc avdd avdd p w=3u l=0.4u
Mn BL n1 0 0 n w=3u l=0.4u
*****Supply****
.nodeset v(nq)=0
.temp 25

.tran 5p 160n
.lib '/home/vlsi/my_project/project2020/eda/ngspice-32/scn4m_subm.lib'nom

******Voltage Sources******
vsup avdd 0 dc 5

v_pc pc 0 PULSE(5 0 0n 1n 1n 13n 30n)
v_R R 0 PULSE(0 5 22n 1n 1n 6n 60n)
v_WL WL 0 PULSE(0 5 52n 1n 1n 6n 60n)
v_nw0 nw0 0 PULSE(5 0 52n 1n 1n 6n 60n)
v_n1 n1 0 PULSE(0 5 105n 1n 1n 5n 120n)
**for write 0

.control
run
plot v(pc)+30 v(R)+24 v(WL)+18 v(nw0)+12 v(BL)+6 v(nq) v(nqbar)
.endc
.end
