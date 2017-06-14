**** Design of a Preamp ****

* .subckt Preamp  Vin_pos  Vin_neg  Vout_pos  Vout_neg
* mP1   	Vout_pos 	Vin_neg		net1		net1       	PMOS_VTL       	w=P*Wid 	l=Len
* mP2		Vout_neg 	Vin_pos		net1		net1 		PMOS_VTL 		w=P*Wid 	l=Len
* r0		Vout_neg    vss!        80K
* r1		Vout_pos 	vss! 		80K
* I0      vdd! 		net1 		dc=10u
* .ends Preamp
* 

* This is a simplified circuit which contains both the preamplifier and the latch

.subckt Preamp_Latch  Vin_pos  Vin_neg  vltch Vout_pos  Vout_neg	vBias=1v L=45n W=200n NWtimes=10 PWtimes=3 Ltimes=2
m1   	net5 		Vin_pos		net_bias	net_bias      	NMOS_VTL       	w=NWtimes*W 		l=Ltimes*L
m2		net6 		Vin_neg		net_bias	net_bias 		NMOS_VTL 		w=NWtimes*W 		l=Ltimes*L
m3		net5		net5 		vdd!		vdd!			PMOS_VTL		w=PWtimes*W			l=Ltimes*L
m4		net6		net6 		vdd!		vdd!			PMOS_VTL		w=PWtimes*W			l=Ltimes*L
m5		Vout_neg	net5		vdd!		vdd!			PMOS_VTL		w=PWtimes*W			l=Ltimes*L
m6		Vout_pos	net6		vdd!		vdd!			PMOS_VTL		w=PWtimes*W			l=Ltimes*L
m7		Vout_pos	Vout_neg	0			0 				NMOS_VTL 		w=NWtimes*W 		l=Ltimes*L
m71		Vout_pos	Vout_pos	0			0 				NMOS_VTL 		w=NWtimes*W 		l=Ltimes*L
m8 		Vout_neg	Vout_pos	0			0 				NMOS_VTL 		w=NWtimes*W 		l=Ltimes*L
m81 	Vout_neg	Vout_neg	0			0 				NMOS_VTL 		w=NWtimes*W 		l=Ltimes*L
m9 		Vout_neg	vltch		Vout_pos	Vout_pos		NMOS_VTL 		w=NWtimes*W 		l=Ltimes*L
mBias	net_bias	0			vBias		vBias			NMOS_VTL 		w=2*NWtimes*W 		l=Ltimes*L
.ends Preamp_Latch



.subckt Preamp Vin_pos Vin_neg Vout_pos Vout_neg vBias

mBias		n_bias 		vBias 		0 			0 		NMOS_VTL		w=WidthB	l=LengthB
mM1			net5		n_bias		Vin_pos		0 		NMOS_VTL		w=WidthN	l=LengthN
mM2			net6 		n_bias 		Vin_neg		0		NMOS_VTL		w=WidthN	l=LengthN
mM5			Vout_neg	net5 		vdd!		vdd!	PMOS_VTL		w=WidthP	l=LengthP
mM3 		net5 		net5 		vdd!		vdd!	PMOS_VTL		w=WidthP	l=LengthP
mM4			net6 		net6 		vdd!		vdd!	PMOS_VTL		w=WidthP	l=LengthP
mM6			Vout_pos	net6 		vdd!		vdd!	PMOS_VTL		w=WidthP	l=LengthP

.ends Preamp