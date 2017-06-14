****  Amir Yazdanbakhsh ****


.subckt TxSwitch1to2 aIin aIout sel aIout_n Strength=7

	mN2 		aIin 		net9		aIout_n		aIout_n			NMOS_VTL 		w='N*Strength*Width'		l='Length'
	mN3			aIin 		sel 		aIout 		aIout 			NMOS_VTL 		w='N*Strength*Width'		l='Length'
	mP2			aIout_n 	sel 		aIin 		aIin 			PMOS_VTL 		w='P*Strength*Width'		l='Length'
	mP3 		aIout 		net9 		aIin 		aIin 			PMOS_VTL 		w='P*Strength*Width' 		l='Length'
	XI4 		sel 		net9 		Inverter

.ends TxSwitch1to2


.subckt TxSwitch2to1  aIin  aIin_n  aIout  sel  aIout_n Strength=7

	XI0 		    aIin_n 		aIout_n		sel 	aIout 			TxSwitch1to2		Strength='Strength'
	XI1 			aIin 		aIout 		sel 	aIout_n 		TxSwitch1to2 		Strength='Strength'

.ends TxSwitch2to1