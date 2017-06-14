**** Design of a Comparator ****
.inc 'preamp.inc'
.inc 'track.latch.inc'

.subckt Comparator 	Vin_pos Vin_neg Vltch Vout_pos Vout_neg
xPreamp 		Vin_pos 		Vin_neg 		pream_pos		preamp_neg					Preamp
XTrackLatch 	pream_pos 		preamp_neg 		Vltch   		Vout_pos		Vout_neg 	TrackAndLatch
.ends Comparator



.subckt Comparator_cmos 	Vin_pos 	Vin_neg 	Vltch 	Vout_pos 	Vout_neg
xPreamp 		Vin_pos 		Vin_neg 	Vltch	Vout_pos		Vout_neg					Preamp_Latch
.ends Comparator
