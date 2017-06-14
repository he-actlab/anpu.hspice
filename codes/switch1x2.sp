**** Design of a 1-to-2_3 switch ****
.subckt TxSwitch1to2_3 Iin Iout Select nIout
mN2		Iin		net9	nIout 		nIout 		NMOS_VTL		w=N*txsw_wid_3*Wid	l=Len	m=1
mN3		Iin		Select	Iout 		Iout 		NMOS_VTL 		w=N*txsw_wid_3*Wid 	l=Len	m=1
mP2 	nIout 	Select	Iin 		Iin 		PMOS_VTL 		w=P*txsw_wid_3*Wid 	l=Len 	m=1
mP3 	Iout 	net9 	Iin 		Iin 		PMOS_VTL 		w=P*txsw_wid_3*Wid  l=Len   m=1
I4 		Select  net9	Inverter
.ends TxSwitch1to2