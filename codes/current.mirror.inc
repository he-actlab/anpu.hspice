****  Amir Yazdanbakhsh ****

.subckt PmosCurrentMirror5b b0Iout b1Iout b2Iout b3Iout b4Iout

	mBianN	net1 		net1 		0					0				NMOS_VTL		w='WidthBiasN*Width'	l='LengthBiasN*Length'
	mBiasP	net1		net1		vdd!				vdd!			PMOS_VTL		w='WidthBiasP*Width'	l='LengthBiasP*Length'
	mP0		b0Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b0'		l='2*Length'
	mP1 	b1Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b1'		l='2*Length'
	mP2 	b2Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b2'		l='2*Length'
	mP3 	b3Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b3'		l='2*Length'
	mP4 	b4Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b4'		l='2*Length'

.ends PmosCurrentMirror5b


.subckt PmosCurrentMirror6b b0Iout b1Iout b2Iout b3Iout b4Iout b5Iout

	*I0 	net1 0  dc=10u
	*mP8 net1 net1 vdd! vdd! PMOS_VTL w=400n l=50n

	mBianN	net1 		net1 		0					0				NMOS_VTL		w='WidthBiasN*Width'	l='LengthBiasN*Length'
	mBiasP	net1		net1		vdd!				vdd!			PMOS_VTL		w='WidthBiasP*Width'	l='LengthBiasP*Length'
	
	mP0		b0Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b0'		l='2*Length'
	mP1 	b1Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b1'		l='2*Length'
	mP2 	b2Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b2'		l='2*Length'
	mP3 	b3Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b3'		l='2*Length'
	mP4 	b4Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b4'		l='2*Length'
	mP5 	b5Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b5'		l='2*Length'

.ends PmosCurrentMirror6b


.subckt PmosCurrentMirror7b b0Iout b1Iout b2Iout b3Iout b4Iout b5Iout b6Iout

	mBianN	net1 		net1 		0					0				NMOS_VTL		w='WidthBiasN*Width'	l='LengthBiasN*Length'
	mBiasP	net1		net1		vdd!				vdd!			PMOS_VTL		w='WidthBiasP*Width'	l='LengthBiasP*Length'

	mP0		b0Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b0'		l='2*Length'
	mP1 	b1Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b1'		l='2*Length'
	mP2 	b2Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b2'		l='2*Length'
	mP3 	b3Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b3'		l='2*Length'
	mP4 	b4Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b4'		l='2*Length'
	mP5 	b5Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b5'		l='2*Length'
	mP6 	b6Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b6'		l='2*Length'

.ends PmosCurrentMirror7b


.subckt PmosCurrentMirror8b b0Iout b1Iout b2Iout b3Iout b4Iout b5Iout b6Iout b7Iout currentRes=10u

	mBianN	net1 		net1 		0					0				NMOS_VTL		w='WidthBiasN*Width'	l='LengthBiasN*Length'
	mBiasP	net1		net1		vdd!				vdd!			PMOS_VTL		w='WidthBiasP*Width'	l='LengthBiasP*Length'

	mP0		b0Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b0'		l='2*Length'
	mP1 	b1Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b1'		l='2*Length'
	mP2 	b2Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b2'		l='2*Length'
	mP3 	b3Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b3'		l='2*Length'
	mP4 	b4Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b4'		l='2*Length'
	mP5 	b5Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b5'		l='2*Length'
	mP6 	b6Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b6'		l='2*Length'
	mP7 	b7Iout		net1 		vdd!				vdd! 			PMOS_VTL 		w='Width*DAC_b7'		l='2*Length'

.ends PmosCurrentMirror7b


