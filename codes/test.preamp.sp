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
.include 'preamp.inc'



***************************************************************************
* Circuit Parameteres
***************************************************************************
.temp 25
.global vdd!
.param P=4
.param N=1
.param Wid=200n
.param Len=100n


.param WidthN='10*Wid'
.param LengthN='2*Len'

.param WidthP='30*Wid'
.param LengthP='2*Len'

.param WidthB='20*Wid'
.param LengthB='2*Len'

***************************************************************************
* Global Variables
***************************************************************************
vdd		vdd! 	0	dc=1.05v
vss		vss! 	0	dc=0v
vvBias	vBias   0   dc=0.5v
***************************************************************************
* Instantiation
***************************************************************************
Xpreamp1	vin_pos		vin_neg		vout_pos 	vout_neg	vBias preamp



***************************************************************************
* Input signals
***************************************************************************
* Vid 7 0 DC 0V AC 1V
* E+ 	vin_pos 10 7 0 0.5
* E-  vin_neg 10 7 0 -0.5
* Vic 10 0 DC 0.65v
vin_neg_in vin_neg 0 sin (0 1.05 10MEG 0 0 0) 
vin_pos_in vin_pos 0 sin (0 1.05 10MEG 0 0 90) 

***************************************************************************
* Simulation
***************************************************************************
*.dc vin_pos 0.6 0.9 0.05V
*.tf V(vout_pos, vout_neg) Vid
*.probe
*.ac dec 10 1K 2gig
*.probe v(vout_pos, vout_neg)


.probe v(vout_pos, vout_neg)
.probe v(vin_pos, vin_neg)
.tran 1ns 100ns

***************************************************************************
* End of the design
***************************************************************************
.end