*****SNM_sesram state ***********

******Inverter 1*******
M1 nq1 nqbar1 0 0 n w=0.8u l=0.4u
M2 nq1 nqbar1 avdd avdd p w=0.6u l=0.4u

******Inverter 2*******
M3 nqbar2 nq2 na 0 n w=0.6u l=0.4u
M4 nqbar2 nq2 avdd avdd p w=0.7u l=0.4u
m5 na avdd 0 0 n w=0.6u l=0.4u

******Including .lib file******
.lib '/home/vlsi/my_project/project2020/eda/ngspice-32/scn4m_subm.lib'nom
.temp 25

******Voltage sources******
v_nqbar1 nqbar1 0 5
v_nq2 nq2 0 5
vdd avdd 0 5

******Dc Analysis*****
.dc v_nqbar1 0 5 0.1 v_nq2 0 5 0.1

.control
run 
plot  v(nqbar1) vs v(nq1) v(nqbar2) vs v(nq2)
.endc
.end
