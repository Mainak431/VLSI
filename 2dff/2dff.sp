
* SPICE export by:  SEDIT 13.00
* Export time:      Fri Feb 13 15:33:41 2015
* Design:           Ringvco
* Cell:             invcnt
* View:             Main
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\CNT\My Documents\Tanner EDA\Tanner Tools v13.0\S-Edit\Tutorial\Ringvco
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.global vdd
********* Simulation Settings - Parameters and SPICE Options *********

.include "C:\Users\Mainak\Desktop\vlsi\45mosmodel\45nm_pmos.md"
.include "C:\Users\Mainak\Desktop\vlsi\45mosmodel\45nm_nmos.md"


.param Dval=2.5n
*-------- Devices: SPICE.ORDER == 0 --------
.subckt inv11 in out
MPMOS_1 Out In Vdd Vdd PMOS     
MNMOS_1 Out In Gnd Gnd NMOS  
.ends

.subckt tg in out clk clkb
MPMOS_1 Out clkb in Vdd PMOS   
MNMOS_1 in clk out Gnd NMOS
.ends

x1 clk clkb inv11
x2 D Q clk clkb tg
x3 Q Qbar inv11
x4 Qbar Q_b inv11
x5 Q_b Q clkb clk tg

*-------- Devices: SPICE.ORDER > 0 --------
Vv1 Vdd Gnd  DC 900m 
Vv2 D Gnd  PULSE(0 900m Dval 30p 30p 170p 440p)  
vclk clk 0 pulse 0 900m 0 10p 10p 50p 100p
*Vv2 In Gnd DC 900m

********* Simulation Settings - Analysis section *********

.step lin Dval 5.05n 5.06n 2p
.tran 100p 10n
.print tran V(D)
.print tran V(clk)
.print tran V(Q)
*.print tran v(out,Gnd) v(In,Gnd)
*.step listtubes 2 4 6
*.step lin modparam tubes(XNCNFET) 1 5 1


*.dc lin source Vv2 0m 900m 1m 
*.print dc v(In) v(out)


********* Simulation Settings - Additional SPICE commands *********
*.power Vv1

*.options absi=5e-07
*.options reli=0.001
*.options numnd=3000
*.options chargetol=1e-012
.end

