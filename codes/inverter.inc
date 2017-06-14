**** Amir Yazdanbakhsh ****

.subckt Inverter aVin aVout
	
	mPullup			aVout	aVin		vdd!		vdd!		PMOS_VTL		w='P*Width'		l='Length'
	mPulldown		aVout	aVin		0			0			NMOS_VTL		w='N*Width'		l='Length'

.ends Inverter