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
.include 'current.mirror.inc'



***************************************************************************
* Circuit Parameteres
***************************************************************************
.temp 25
.global vdd!

.param Width=50n
.param Length=50n
.param DAC_b0='60'
.param DAC_b1='2*DAC_b0'
.param DAC_b2='4*DAC_b0'
.param DAC_b3='8*DAC_b0'
.param DAC_b4='16*DAC_b0'
.param DAC_b5='32*DAC_b0'
.param DAC_b6='64*DAC_b0'
.param DAC_b7='128*DAC_b0'

.param WidthBiasN=10
.param LengthBiasN=270
.param WidthBiasP=30
.param LengthBiasP=2

***************************************************************************
* Global Variables
***************************************************************************
v0		vdd! 	0	dc=1.05v


***************************************************************************
* Instantiation
***************************************************************************
*XcurrentMirror1		b00 b01 b02 b03 b04  				PmosCurrentMirror5b
XcurrentMirror2		b00 b01 b02 b03 b04 b05  			PmosCurrentMirror6b
*XcurrentMirror3		b00 b01 b02 b03 b04 b05 b06 		PmosCurrentMirror7b
*XcurrentMirror4		b00 b01 b02 b03 b04 b05 b06 b07 	PmosCurrentMirror8b


***************************************************************************
* Temporary ndoes
***************************************************************************
Vb00 b00 0 	DC=0
Vb01 b01 0 	DC=0
Vb02 b02 0	DC=0
Vb03 b03 0	DC=0
Vb04 b04 0	DC=0
Vb05 b05 0	DC=0
Vb06 b06 0	DC=0
Vb07 b07 0	DC=0

***************************************************************************
* Simulation
***************************************************************************

.measure tran avgpwr AVG power from=1ns to=20ns
.measure tran peakpwr MAX power from=1ns to=20ns
.tran 1n 20n



***************************************************************************
* End of the design
***************************************************************************
.end