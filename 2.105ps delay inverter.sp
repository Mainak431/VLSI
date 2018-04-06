* SPICE export by:  SEDIT 13.00
* Export time:      Wed Jul 13 11:54:18 2016
* Design:           Ringvco
* Cell:             Cell0
* View:             Main
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\Mainak\Documents\Tanner EDA\Tanner Tools v13.0\S-Edit\Tutorial\Ringvco
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.include "C:\Users\Mainak\Desktop\vlsi\32nm_hp.txt"

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
CCapacitor_1 N_1 Gnd  5f
MNMOS_1 N_1 N_2 Gnd Gnd NMOS W=5000n L=32n AS=288f PS=2.44u AD=288f PD=2.44u  
MPMOS_1 N_1 N_2 Vdd Vdd PMOS W=5000n L=32n AS=288f PS=2.44u AD=288f PD=2.44u  
VVoltageSource_1 Vdd Gnd  DC 900m 
VVoltageSource_2 N_2 Gnd  PULSE(0 900m 0 250f 250f 180p 400p)  
.tran 1p 500p

.print tran V(N_1)
.print tran V(N_2)

********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********

.end

