* SPICE export by:  SEDIT 13.00
* Export time:      Thu Jul 21 10:28:02 2016
* Design:           Ringvco
* Cell:             Cell1
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
.include "C:\Users\Mainak\Desktop\vlsi\45mosmodel\45nm_pmos.md"
.include "C:\Users\Mainak\Desktop\vlsi\45mosmodel\45nm_nmos.md"

.PARAM Dval=0n 
********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
CCapacitor_1 N_2 Gnd  1f
CCapacitor_2 N_4 Gnd  1f
MNMOS_1 N_1 N_2 Gnd Gnd NMOS W=450n L=45n AS=288f PS=2.44u AD=288f PD=2.44u  
MNMOS_2 N_3 N_1 Gnd Gnd NMOS W=450n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_4 N_5 N_2 N_2 NMOS W=450n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_3 N_6 N_2 N_2 NMOS W=450n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_5 N_6 N_5 Gnd Gnd NMOS W=450n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 N_1 N_2 Vdd Vdd PMOS W=700n L=45n AS=288f PS=2.44u AD=288f PD=2.44u  
MPMOS_2 N_2 N_6 N_4 N_4 PMOS W=700n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_3 N_2 N_5 N_3 N_3 PMOS W=700n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_4 N_3 N_1 Vdd Vdd PMOS W=700n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_5 N_6 N_5 Vdd Vdd PMOS W=700n L=45n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
VVoltageSource_1 Vdd Gnd  DC 900m 
VVoltageSource_2 N_5 Gnd  PULSE(0 0.9 0 100p 100p 500p 1n) 
VVoltageSource_3 N_4 Gnd  PULSE(0v 0.9v Dval 100p 100p 500p 1n) 

 
.step lin Dval 5.05n 5.06n 2p
.tran 100p 10n
.print tran V(N_2,Gnd)
.print tran V(N_4,Gnd)
.print tran V(N_5)
********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********

.end

