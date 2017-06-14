****  Amir Yazdanbakhsh ****
.inc 'switch.inc'


.subckt Add8  out out_n  sign0 sign1 sign2 sign3 sign4 sign5 sign6 sign7
+						 v0		v1 		v2 		v3 		v4 		v5 		v6 		v7
+						 v0_n	v1_n	v2_n  	v3_n	v4_n	v5_n	v6_n	v7_n
+						 diffPairCurrent=10u Strength=1

	mP00		net0193		v0_n 	net74		net74		PMOS_LVT		w='P*Width'		l=Length
	mP02		net0221		v1_n 	net70		net70		PMOS_LVT		w='P*Width'		l=Length
	mP04		net083		v2_n 	net62		net62		PMOS_LVT		w='P*Width'		l=Length
	mP06		net0217 	v3_n 	net50 		net50		PMOS_LVT		w='P*Width'		l=Length
	mP08 		net0209		v4_n 	net46		net46		PMOS_LVT		w='P*Width'		l=Length
	mP10		net0208		v5_n	net18		net18		PMOS_LVT		w='P*Width'		l=Length
	mP12		net0201		v6_n 	net26 		net26 		PMOS_LVT		w='P*Width'		l=Length
	mP14		net0197		v7_n 	net38		net38		PMOS_LVT		w='P*Width'		l=Length


	mP01		net0228		v0 		net74		net74		PMOS_LVT		w='P*Width'		l=Length
	mP03		net0224		v1 		net70		net70		PMOS_LVT		w='P*Width'		l=Length
	mP05		net0220		v2 		net62		net62		PMOS_LVT		w='P*Width'		l=Length
	mP07		net0133		v3 		net50		net50		PMOS_LVT		w='P*Width'		l=Length
	mP09 		net0215		v4 		net46		net46 		PMOS_LVT		w='P*Width'		l=Length
	mP11		net0149  	v5   	net18		net18 		PMOS_LVT 		w='P*Width' 	l=Length
	mP13		net0204		v6 		net26		net26		PMOS_LVT		w='P*Width'		l=Length
	mP15		net0200		v7 		net38		net38		PMOS_LVT		w='P*Width'		l=Length
	
	
	I00			vdd! 		net18 	dc=diffPairCurrent
	I01			vdd! 		net26 	dc=diffPairCurrent
	I02			vdd! 		net38 	dc=diffPairCurrent
	I03			vdd! 		net46 	dc=diffPairCurrent
	I04			vdd! 		net50 	dc=diffPairCurrent
	I05			vdd! 		net62 	dc=diffPairCurrent
	I06			vdd! 		net70 	dc=diffPairCurrent
	I07			vdd! 		net74 	dc=diffPairCurrent


	Xswitch00	net0193     net0228 	out 	sign0 	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch01	net0221     net0224 	out 	sign1 	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch02	net083 	    net0220 	out 	sign2	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch03	net0217     net0133 	out 	sign3 	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch04	net0209     net0215 	out 	sign4 	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch05	net0208     net0149 	out 	sign5 	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch06	net0201     net0204 	out 	sign6 	out_n	TxSwitch2to1 Strength='Strength'
	Xswitch07	net0197     net0200 	out 	sign7 	out_n	TxSwitch2to1 Strength='Strength'

.ends Add8

