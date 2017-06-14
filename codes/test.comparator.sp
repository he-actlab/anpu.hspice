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
.include 'comparator.inc'



***************************************************************************
* Circuit Parameteres
***************************************************************************
.temp 25
.global vdd!
.param P=2
.param N=1
.param Wid=200n
.param Len=45n

***************************************************************************
* Global Variables
***************************************************************************
vdd		vdd! 	0	dc=1.05v

***************************************************************************
* Instantiation
***************************************************************************
Xcomparator	vin_pos		vin_neg		vltch 	vout_pos 	vout_neg	comparator

***************************************************************************
* Input signals
***************************************************************************
vin_sim1 vin_pos 0 pulse (0 1.05 0 3u 3u 10u 20u) 
vin_sim2 vin_neg 0 pulse (0 1.05 10u 3u 3u 10u 20u) 
vin_ltch vltch 0 pulse (0 1.05 10u 1u 1u 20u 40u)


***************************************************************************
* Simulation
***************************************************************************
.probe v(vout_pos, vout_neg)
.probe v(vin_pos, vin_neg)
*.dc vin_pos 0.8 1.1 0.1
.tran 0.1u 100u

***************************************************************************
* End of the design
***************************************************************************
.end