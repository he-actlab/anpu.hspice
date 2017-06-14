******************************** Definitions **************************
.option list node post

.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTG.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTG.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTL.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTL.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTH.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTH.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_THKOX.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_THKOX.inc'

.global vdd!


***************************************************************************
* Circuit Parameteres
***************************************************************************
.temp 25


* .param monte_vth = agauss(0.297, '0.5', 3)

.param monte_vth=0.5

* Design
* The names are based on the "Fast and Accurate Estimation of Nano-Scaled 
* 									SRAM Read Failure Probability using Critical Point Sampling"
* ----------------------------------------------------------------------------------------------
* Ignore body effect: Connect body to soruce
* 			D 		G		S 			B
**********************************************************************************************************
m0		out 	net12  		vdd!  	vdd!	  		  PMOS_VTL l=50e-9 w=180e-9  	    * Pull Up   Trans
m1		out 	net12   	0 		0		  NMOS_VTL l=50e-9 w=90e-9  delvt0=0.1v * Pull Down Trans
***********************************************************************************************************


v0 vdd! 0 DC=1.0

***************************************************************************
* Simulation
***************************************************************************
v1	net12	0	pulse(0 1.0 2ns 4ns 4ns 20ns 40ns)
c0  out     0	1e-15


.tran .1ns 60ns 
* sweep monte=1000
* .measure tran v_out find v(out) at=15ns

.end