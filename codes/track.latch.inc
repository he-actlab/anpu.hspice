**** Design of a TrackAndLatch ****
.inc 'inverter.inc'

.subckt TrackAndLatch  Vin_pos  Vin_neg  Vltch  Vout_pos  Vout_neg
XInverter1   	net068   	Vout_neg  Inverter
XInverter2   	net070   	Vout_pos  Inverter
m6  	net25    	Vin_neg		0		0		NMOS_VTL	w=N*Wid 	l=Len		m=1
m7  	net23    	Vin_pos  	0 		0   	NMOS_VTL  	w=N*Wid 	l=Len   	m=1
m8  	net23    	net25     	0       0       NMOS_VTL    w=N*Wid     l=Len       m=1
m9  	net25    	net23     	0   	0       NMOS_VTL 	w=N*Wid 	l=Len 		m=1
m10 	net070	 	Vltch		net25	net25 	NMOS_VTL 	w=N*Wid 	l=Len		m=1
m11 	net068 		Vltch 		net23	net23 	NMOS_VTL 	w=N*Wid 	l=Len 		m=1
m12     net068 		Vltch 		vdd!    vdd!    PMOS_VTL    w=P*Wid     l=Len       m=1
m13     net068 		net070 		vdd!    vdd!    PMOS_VTL    w=P*Wid     l=Len       m=1
m14     net070 		net068 		vdd!    vdd!    PMOS_VTL    w=P*Wid     l=Len       m=1
m15     net070 		Vltch 		vdd!    vdd!    PMOS_VTL    w=P*Wid     l=Len       m=1
.ends TrackAndLatch


