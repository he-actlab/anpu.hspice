**** Amir Yazdanbakhsh ****

**** Design of a Current Steering 5b ****
.subckt CurrentSteering5b Iout_DAC b0 b0Iin b1 b1Iin b2  b2Iin b3 b3Iin b4 b4Iin Iout_DAC_n  Strength=1

	XI4 		b0Iin 		Iout_DAC 			b0  	Iout_DAC_n 		TxSwitch1to2	Strength='Strength'
	XI5 		b1Iin 		Iout_DAC  			b1 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI6 		b2Iin 		Iout_DAC  			b2 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI7 		b3Iin 		Iout_DAC  			b3 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI8 		b4Iin 		Iout_DAC  			b4 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'

.ends CurrentSteering5b	


**** Design of a Current Steering 6b ****
.subckt CurrentSteering6b Iout_DAC b0 b0Iin b1 b1Iin b2  b2Iin b3 b3Iin b4 b4Iin b5 b5Iin Iout_DAC_n	Strength=7

	XI4 		b0Iin 		Iout_DAC 			b0  	Iout_DAC_n 		TxSwitch1to2	Strength='Strength'
	XI5 		b1Iin 		Iout_DAC  			b1 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI6 		b2Iin 		Iout_DAC  			b2 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI7 		b3Iin 		Iout_DAC  			b3 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI8 		b4Iin 		Iout_DAC  			b4 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XI9 		b5Iin 		Iout_DAC  			b5 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'

.ends CurrentSteering6b	


**** Design of a Current Steering 7b ****
.subckt CurrentSteering7b Iout_DAC b0 b0Iin b1 b1Iin b2  b2Iin b3 b3Iin b4 b4Iin b5 b5Iin b6 b6Iin Iout_DAC_n	Strength=10

	XSwitch0 		b0Iin 		Iout_DAC 			b0  	Iout_DAC_n 		TxSwitch1to2	Strength='Strength'
	XSwitch1 		b1Iin 		Iout_DAC  			b1 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch2 		b2Iin 		Iout_DAC  			b2 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch3 		b3Iin 		Iout_DAC  			b3 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch4 		b4Iin 		Iout_DAC  			b4 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch5 		b5Iin 		Iout_DAC  			b5 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch6 		b6Iin 		Iout_DAC  			b6 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'

.ends CurrentSteering7b	


**** Design of a Current Steering 8b ****
.subckt CurrentSteering8b Iout_DAC b0 b0Iin b1 b1Iin b2  b2Iin b3 b3Iin b4 b4Iin b5 b5Iin b6 b6Iin b7 b7Iin Iout_DAC_n	Strength=10

	XSwitch0 		b0Iin 		Iout_DAC 			b0  	Iout_DAC_n 		TxSwitch1to2	Strength='Strength'
	XSwitch1 		b1Iin 		Iout_DAC  			b1 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch2 		b2Iin 		Iout_DAC  			b2 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch3 		b3Iin 		Iout_DAC  			b3 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch4 		b4Iin 		Iout_DAC  			b4 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch5 		b5Iin 		Iout_DAC  			b5 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch6 		b6Iin 		Iout_DAC  			b6 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'
	XSwitch7 		b7Iin 		Iout_DAC  			b7 		Iout_DAC_n      TxSwitch1to2	Strength='Strength'

.ends CurrentSteering7b	