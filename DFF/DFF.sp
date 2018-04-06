******** Simulation Settings - General Section *********
*.include "C:\Documents and Settings\Administrator\Desktop\32nm_hp.md"
*.include "C:\Documents and Settings\Administrator\Desktop\45nm_nmos.md"
*.include "C:\Documents and Settings\Administrator\Desktop\45nm_pmos.md"
*.include "C:\Users\Anirban\Desktop\45hp.txt"
.include "C:\Users\Mainak\Desktop\32mosmodel\45nm_nmos.md"
.include "C:\Users\Mainak\Desktop\32mosmodel\45nm_pmos.md"




*-------- Devices With SPICE.ORDER < 0.0  --------
.PARAM Dval=2.5n 


*-------- Devices With SPICE.ORDER > 0.0  --------
***** Top Level *****
MNMOS_1 D_bar CLK Q_bar Gnd NMOS W=0.45u L=45n 
MNMOS_2 D_bar D Gnd Gnd NMOS W=0.45u L=45n 
MNMOS_3 Q Q_bar Gnd Gnd NMOS W=0.45u L=45n 
MNMOS_4 Q_b Q Gnd Gnd NMOS W=0.45u L=45n 
MNMOS_5 Q_bar CLK_bar Q_b Gnd NMOS W=0.45u L=45n 
MNMOS_6 CLK_bar CLK Gnd Gnd NMOS W=0.45u L=45n 
MNMOS_7 qload Q Gnd Gnd NMOS W=0.45u L=45n 
MPMOS_1 D_bar D Vdd Vdd PMOS W=0.7u L=45n 
MPMOS_2 Q_bar CLK_bar D_bar Vdd PMOS W=0.45u L=45n 
MPMOS_3 Q Q_bar Vdd Vdd PMOS W=0.7u L=45n  
MPMOS_4 Q_b Q Vdd Vdd PMOS W=0.7u L=45n 
MPMOS_5 Q_b CLK Q_bar Vdd PMOS W=0.45u L=45n 
MPMOS_6 CLK_bar CLK Vdd Vdd PMOS W=0.7u L=45n 
MPMOS_7 qload Q Vdd Vdd PMOS W=0.7u L=45n 
VVoltageSource_2 Vdd Gnd  DC 0.9
VVoltageSource_1 CLK Gnd  PULSE(0 0.9 0 100p 100p 5n 100n) 
VVoltageSource_3 D Gnd  PULSE(0v 0.9v Dval 100p 100p 5n 100n) 
.PRINT TRAN V(CLK) 
.PRINT TRAN V(D) 
*.PRINT TRAN V(D_bar) 
.PRINT TRAN V(Q) 
*.PRINT TRAN V(Q_b) 
*.PRINT TRAN V(Q_bar) 

********* Simulation Settings - Analysis Section *********
.tran 100p 9n
.step lin Dval 5.05n 5.07n 2p 

********* Simulation Settings - Additional SPICE Commands *********
*.option absi=1e-10
*.option numnx=200
*.option reltol=0.0005
*.option abstol=1e-010
.end
.end

