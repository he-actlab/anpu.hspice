******************************** Definitions **************************
.option list node post


***************************************************************************
* Libraries
***************************************************************************
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTG.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTG.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTL.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTL.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTH.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTH.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_THKOX.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_THKOX.inc'

***************************************************************************
* Subcircuits
***************************************************************************
.include 'resistor.ladder.inc'



***************************************************************************
* Circuit Parameteres
***************************************************************************
.temp 25
.global vdd!
.param P=2
.param N=1
.param Width=200n
.param Length=100n
.param DAC_b0=1
.param DAC_b1=2
.param DAC_b2=4
.param DAC_b3=8
.param DAC_b4=16
.param DAC_b5=32
.param period=20ns
.param initialdelay=10ns


***************************************************************************
* Global Variables
***************************************************************************
v0		vdd! 	0	dc=1.2v


***************************************************************************
* Instantiation
***************************************************************************
XresLadder0	outRes0 	dacIn_v  w0  w1 w2 w3 w4 w5 w6 w7	ResNetwork8b 
*XresLadder1	outRes1 	dacIn  w0  w1 w2 w3 w4 w5 w6	ResNetwork7b 
*XresLadder2	outRes2 	dacIn  w0  w1 w2 w3 w4 w5 ResNetwork6b 
*XresLadder3	outRes3 	dacIn  w0  w1 w2 w3 w4 ResNetwork5b 
*XresLadder4	outRes4 	dacIn_v  w0  w1 w2 w3 ResNetwork4b 

*XresLadder2	outRes2 	dacIn_v  w0  w1 ResNetwork2b

***************************************************************************
* Temporary ndoes
***************************************************************************
VIdacIn		dacIn	dacIn_v dc=0v



***************************************************************************
* Input signals
***************************************************************************

*Vb0 		w0 		0 dc=1.2v
*vb1 		w1		0 dc=0v
*vb2 		w2 		0 dc=1.2v
*vb3 		w3	 	0 dc=1.2v

Vb0 		w0 		0 		pulse 0 1.2v 'initialdelay' 						2ns 2ns period 				'2*period+4ns'
Vb1 		w1 		0 		pulse 0 1.2v 'initialdelay+period+2ns' 				2ns 2ns '2*period+2ns' 		'4*period+8ns'
Vb2 		w2 		0 		pulse 0 1.2v 'initialdelay+3*period+6ns' 			2ns 2ns '4*period+6ns' 		'8*period+16ns'
Vb3 		w3 		0 		pulse 0 1.2v 'initialdelay+7*period+14ns' 			2ns 2ns '8*period+14ns' 	'16*period+32ns'
Vb4 		w4 		0 		pulse 0 1.2v 'initialdelay+15*period+30ns' 			2ns 2ns '16*period+30ns' 	'32*period+64ns'
Vb5 		w5 		0 		pulse 0 1.2v 'initialdelay+31*period+62ns' 			2ns 2ns '32*period+62ns' 	'64*period+128ns'
Vb6 		w6 		0 		pulse 0 1.2v 'initialdelay+63*period+126ns' 		2ns 2ns '64*period+126ns' 	'128*period+256ns'
Vb7 		w7 		0 		pulse 0 1.2v 'initialdelay+127*period+254ns' 		2ns 2ns '128*period+254ns' 	'256*period+512ns'


IdacIn		0 		dacIn 	dc=1mA
cOutout		outRes0	0 		15p


***************************************************************************
* Simulation
***************************************************************************
.tran 0.1n 500n

***************************************************************************
* End of the design
***************************************************************************
.end