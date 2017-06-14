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
.include 'current.steering.inc'
.include 'current.mirror.inc'
.include 'resistor.ladder.inc'
.include 'inverter.inc'



***************************************************************************
* Circuit Parameteres
***************************************************************************
.temp 25
.global vdd!
.param P=2
.param N=1

.param Width=50n
.param Length=50n
.param DAC_b0='30'
.param DAC_b1='2*DAC_b0'
.param DAC_b2='4*DAC_b0'
.param DAC_b3='8*DAC_b0'
.param DAC_b4='16*DAC_b0'
.param DAC_b5='32*DAC_b0'
.param DAC_b6='65*DAC_b0'
.param DAC_b7='136*DAC_b0'


.param WidthDAC='100*Width'
.param LengthDAC='10*Length'



.param WidthBiasN=20
.param LengthBiasN=270
.param WidthBiasP=150
.param LengthBiasP=2

.param period=20ns
.param initialdelay=10ns


***************************************************************************
* Global Variables
***************************************************************************
v0		vdd! 	0	dc=1.2v


***************************************************************************
* Instantiation
***************************************************************************
* 5-bit DAC
*XcurrentMirror1						b00			b01 		b02 		b03 		b04 				PmosCurrentMirror5b
*XcurrentSteering1	IoutDAC		b0 	b00_current 	b1 	b01_current 	b2 	b02_current		b3 	b03_current 	b4 	b04_current		IoutDAC_n	CurrentSteering5b

* 5-bit Resistor Ladder
*XresistorLadder5b_pos  Iout_Res_pos IoutDAC_Res 	w0in w1in w2in w3in w4in ResNetwork5b
*XresistorLadder5b_neg  Iout_Res_neg IoutDAC_n_Res 	w0in w1in w2in w3in w4in ResNetwork5b

* 6-bit
*XcurrentMirror1		b00	b01 b02 b03 b04 b05	PmosCurrentMirror6b
*XcurrentSteering1	IoutDAC	b0 b00_current b1 b01_current b2 b02_current b3 b03_current b4 b04_current b5 b05_current IoutDAC_n	CurrentSteering6b

* 7-bit
*XcurrentMirror1		b00	b01 b02 b03 b04 b05	b06 PmosCurrentMirror7b
*XcurrentSteering1	IoutDAC	b0 b00_current b1 b01_current b2 b02_current b3 b03_current b4 b04_current b5 b05_current b6 b06_current IoutDAC_n	CurrentSteering7b

* 8-bit
XcurrentMirror1		b00	b01 b02 b03 b04 b05	b06 b07 PmosCurrentMirror8b
XcurrentSteering1	IoutDAC	b0 b00 b1 b01 b2 b02 b3 b03 b4 b04 b5 b05 b6 b06 b7 b07 IoutDAC_n	CurrentSteering8b

XresistorLadder8b_pos  Iout_Res_pos IoutDAC_res 	w0in w1in w2in w3in w4in w5in w6in w7in ResNetwork8b
XresistorLadder8b_neg  Iout_Res_neg IoutDAC_n_res 	w0in w1in w2in w3in w4in w5in w6in w7in ResNetwork8b





***************************************************************************
* Temporary ndoes
***************************************************************************
VIoutDAC 	IoutDAC 	 IoutDAC_res dc=0v
VIoutDAC_n 	IoutDAC_n	 IoutDAC_n_res dc=0v


***************************************************************************
* Input signals
***************************************************************************
Vb0 		b0 		0 		pulse 0 1.05v 'initialdelay' 							2ns 2ns period 				'2*period+4ns'
Vb1 		b1 		0 		pulse 0 1.05v 'initialdelay+period+2ns' 				2ns 2ns '2*period+2ns' 		'4*period+8ns'
Vb2 		b2 		0 		pulse 0 1.05v 'initialdelay+3*period+6ns' 				2ns 2ns '4*period+6ns' 		'8*period+16ns'
Vb3 		b3 		0 		pulse 0 1.05v 'initialdelay+7*period+14ns' 				2ns 2ns '8*period+14ns' 	'16*period+32ns'
Vb4 		b4 		0 		pulse 0 1.05v 'initialdelay+15*period+30ns' 			2ns 2ns '16*period+30ns' 	'32*period+64ns'
Vb5 		b5 		0 		pulse 0 1.05v 'initialdelay+31*period+62ns' 			2ns 2ns '32*period+62ns' 	'64*period+128ns'
Vb6 		b6 		0 		pulse 0 1.05v 'initialdelay+63*period+126ns' 			2ns 2ns '64*period+126ns' 	'128*period+256ns'
Vb7 		b7 		0 		pulse 0 1.05v 'initialdelay+127*period+254ns' 			2ns 2ns '128*period+254ns' 	'256*period+512ns'

* Vb0 		b0 		0 		DC=1.2v
* Vb1 		b1 		0 		DC=0
* Vb2 		b2 		0 		DC=0
* Vb3 		b3 		0 		DC=0
* Vb4 		b4 		0 		DC=0
* Vb5 		b5 		0 		DC=0
* Vb6 		b6 		0 		DC=0
* Vb7 		b7 		0 		DC=0


***************************************************************************
* Weight signals
***************************************************************************
Vw0			w0in   	0 	DC=1.2v
Vw1			w1in   	0 	DC=0
Vw2			w2in   	0 	DC=0
Vw3			w3in   	0 	DC=0
Vw4			w4in   	0 	DC=0
Vw5			w5in   	0 	DC=0
Vw6			w6in 	0 	DC=0
Vw7 		w7in 	0 	DC=0

***************************************************************************
* Temporary ndoes
***************************************************************************
* Vb00  b00_current 0
* Vb01  b01_current 0
* Vb02  b02_current 0
* Vb03  b03_current 0
* Vb04  b04_current 0
* Vb05  b05_current 0
* Vb06  b06_current 0
* Vb07  b07_current 0



***************************************************************************
* Simulation and Measurement
***************************************************************************
.measure tran avgpwr AVG power from=1ns to=4000n
.measure tran peakpwr MAX power from=1ns to=4000n
.measure tran MAXVAL MAX I(VIoutDAC) from = 1ns to=4000n
.probe V(Iout_Res_pos, Iout_Res_neg)
.tran 0.1n 4000n

***************************************************************************
* End of the design
***************************************************************************
.end