

.include "C:\Users\Mainak\Desktop\vlsi\32nm_hp.txt"

.param p1 =800n
CCapacitor_1 N_1 Gnd  1f
 
MNMOS_1 N_1 N_2 Gnd Gnd NMOS W='p1' L=32n   
MPMOS_1 N_1 N_2 Vdd Vdd PMOS W=300n L=32n 
VVoltageSource_1 Vdd Gnd  DC 900m 
VVoltageSource_2 N_2 Gnd  PULSE(0 900m 0 30p 30p 180p 400p)  

********* Simulation Settings - Analysis section *********
.dc lin source VVoltageSource_2 0m 900m 100m
*.step lin param p1 100n 800n 100n

*.print TRAN V(N_1)
*.print TRAN V(N_2)

********* Simulation Settings - Additional SPICE commands *********
*.tran 1p 500p
.print dc v(N_1)
.print dc v(N_2)

.end

