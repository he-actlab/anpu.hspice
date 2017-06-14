* Amir Yazdanbakhsh

.option list node post

.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTG.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTG.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTL.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTL.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_VTH.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_VTH.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/NMOS_THKOX.inc'
.include '/nethome/ayazdanbakhsh3/projects/anpu/lib/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ff/PMOS_THKOX.inc'


.temp 25

.param N=1
.param P=2
.param Len=45n
.param Wid=200n
.param DAC_b0=1
.param DAC_b1=2
.param DAC_b2=4
.param DAC_b3=8
.param DAC_b4=16
.param DAC_b5=32
.param DAC_b6=64
.param DAC_b7=128
.param currentRes=10u
.param txsw_wid_1=7
.param diffpair_biasI=10u
.param Vbias_diffpair=200m
.param monte_vth = agauss(0.0, 0.1, 3)

.global vdd!

v0 vdd! 0 DC=1.0


**** Design of a 5b PMOS current mirror ****
.subckt PmosCurrentMirror5b b0Iout b1Iout b2Iout b3Iout b4Iout
I0 		net8 	0 		dc=currentRes 													m=1
mP0 	b0Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b0 	l=Len 	m=1
mP1		b1Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b1 	l=Len 	m=1
mP2		b2Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b2 	l=Len 	m=1
mP3		b3Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b3 	l=Len 	m=1
mP4		b4Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b4 	l=Len	m=1
mP8		net8   	net8	vdd!		vdd!		PMOS_VTL		w=P*Wid			l=Len	m=1
.ends PmosCurrentMirror5b


**** Design of a 6b PMOS current mirror *****
.subckt PmosCurrentMirror6b b0Iout b1Iout b2Iout b3Iout b4Iout b5Iout
I0 		net8 	0 		dc=currentRes 													m=1
mP0 	b0Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b0 	l=Len 	m=1
mP1		b1Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b1 	l=Len 	m=1
mP2		b2Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b2 	l=Len 	m=1
mP3		b3Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b3 	l=Len 	m=1
mP4		b4Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b4 	l=Len	m=1
mP4		b5Iout 	net8 	vdd! 		vdd! 		PMOS_VTL 		w=P*Wid*DAC_b5 	l=Len	m=1
mP8		net8   	net8	vdd!		vdd!		PMOS_VTL		w=P*Wid			l=Len	m=1
.ends PmosCurrentMirror6b






**** Design of a 1-to-2  switch ****
.subckt TxSwitch1to2 Iin Iout Select nIout
mN2		Iin		net9	nIout 		nIout 		NMOS_VTL		w=N*txsw_wid_1*Wid	l=Len	m=1
mN3		Iin		Select	Iout 		Iout 		NMOS_VTL 		w=N*txsw_wid_1*Wid 	l=Len	m=1
mP2 	nIout 	Select	Iin 		Iin 		PMOS_VTL 		w=P*txsw_wid_1*Wid 	l=Len 	m=1
mP3 	Iout 	net9 	Iin 		Iin 		PMOS_VTL 		w=P*txsw_wid_1*Wid  l=Len   m=1
I4 		Select  net9	Inverter
.ends TxSwitch1to2



		


**** Design of a Synapse_V3_file ****
.subckt Synapse_V3_file_i6w8 ResNet_out  ResNet_out_n  B0 B1 B2 B3 B4 B5 w0 w1 w2 w3 w4 w5 w6 w7
I2 		net1 	net2 	net3 	net4 	net5  net6 	PmosCurrentMirror6b
I1  	OUT_P 	B0  	net1 	B1 		net2 	B2 	net3 	B3 	net4 	B4 	net5  B5  net6   OUT_N   CurrentSteering6b
I8 		ResNet_out      OUT_P   w0      w1      w2   w3     w4  w5   w6 w7  ResNetwork8b
r1      OUT_N 	0  		res_dac_dmp
v4 		ResNet_out_n   0    dc=Vbias_diffpair  
.ends Synapse_V3_file_i6w8





**** Design of a Synapse_V3_file ****
.subckt Synapse_V3_file_i6w7 ResNet_out  ResNet_out_n  B0 B1 B2 B3 B4 B5 w0 w1 w2 w3 w4 w5 w6
I2 		net1 	net2 	net3 	net4 	net5  net6 PmosCurrentMirror6b
I1  	OUT_P 	B0  	net1 	B1 		net2 	B2 	net3 	B3 	net4 	B4 	net5  B5  net6   OUT_N   CurrentSteering6b
I8 		ResNet_out      OUT_P   w0      w1      w2   w3     w4  w5   w6  ResNetwork7b
r1      OUT_N 	0  		res_dac_dmp
v4 		ResNet_out_n   0    dc=Vbias_diffpair  
.ends Synapse_V3_file_i6w7


**** Design of a Synapse_V3_file ****
.subckt Synapse_V3_file_i5w7 ResNet_out  ResNet_out_n  B0 B1 B2 B3 B4 w0 w1 w2 w3 w4 w5 w6
I2 		net1 	net2 	net3 	net4 	net5  PmosCurrentMirror5b
I1  	OUT_P 	B0  	net1 	B1 		net2 	B2 	net3 	B3 	net4 	B4 	net5  OUT_N   CurrentSteering5b
I8 		ResNet_out      OUT_P   w0      w1      w2   w3     w4  w5   w6  ResNetwork7b
r1      OUT_N 	0  		res_dac_dmp
v4 		ResNet_out_n   0    dc=Vbias_diffpair  
.ends Synapse_V3_file_i5w7



**** Design of a Synapse_V3_file ****
.subckt Synapse_V3_file_i5w6 ResNet_out  ResNet_out_n  B0 B1 B2 B3 B4 w0 w1 w2 w3 w4 w5
I2 		net1 	net2 	net3 	net4 	net5  PmosCurrentMirror5b
I1  	OUT_P 	B0  	net1 	B1 		net2 	B2 	net3 	B3 	net4 	B4 	net5  OUT_N   CurrentSteering5b
I8 		ResNet_out      OUT_P   w0      w1      w2   w3     w4  w5  ResNetwork6b
r1      OUT_N 	0  		res_dac_dmp
v4 		ResNet_out_n   0    dc=Vbias_diffpair  
.ends Synapse_V3_file_i5w6



**** Design of a 2-to-1 ****
.subckt TxSwitch2to1 Iin Iin_n Iout sel
I0 		Iin_n  	net11	sel 	Iout 		TxSwitch1to2_3
I19   	Iin    	Iout   	sel 	net11		TxSwtich1to2_3
r0      net11   0       10k
.ends TxSwitch2to1    












 			





.end