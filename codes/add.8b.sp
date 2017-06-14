**** Design of an 8b Adder V2 ****
.subckt Add8_V2    AddOut0 AddOut0_n PE0_sign PE1_sign PE2_sign PE3_sign
+									PE4_sign PE5_sign PE6_sign PE7_sign
+									V0in     V1in     V2in     V3in 
+									V4in     V5in     V6in     V7in
+ 									V0in_n   V1in_n   V2in_n   V3in_n
+									V4in_n   V5in_n   V6in_n   V7in_n

mP15		net0149			V5in 		net18 		net18 	PMOS_VTL		w=P*Wid     l=Len  m=1
mP14		net0208			V5in_n 		net18 		net18 	PMOS_VTL		w=P*Wid     l=Len  m=1
mP13		net0204			V6in 		net26 		net26  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP12		net0201			V6in_n 		net26 		net26  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP10		net0200			V7in 		net38 		net38  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP11		net0197			V7in_n 		net38 		net38  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP7			net0215			V4in 		net46 		net46  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP9			net0209			V4in_n 		net46 		net46  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP6			net0133			V3in 		net50 		net50  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP5			net0217			V3in_n 		net50 		net50  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP2			net0220			V2in 		net62 		net62  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP3			net0201			V2in_n 		net62 		net62  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP0			net0224			V1in 		net70 		net70  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP1			net0221			V1in_n 		net70 		net70  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP4			net0228			V0in 		net74 		net74  	PMOS_VTL		w=P*Wid     l=Len  m=1
mP8			net0193			V0in_n 		net74 		net74  	PMOS_VTL		w=P*Wid     l=Len  m=1
I12 		vdd!            net18       dc=diffpair_biasI
I11  		vdd!            net26       dc=diffpair_biasI
I10  		vdd!            net38       dc=diffpair_biasI
I8  		vdd!            net46       dc=diffpair_biasI
I6  		vdd!            net50       dc=diffpair_biasI
I4  		vdd!            net62       dc=diffpair_biasI
I1  		vdd!            net70       dc=diffpair_biasI
I0  		vdd!            net74       dc=diffpair_biasI
I25  		net0197         net0200     AddOut0 	PE7_sign AddOut0_n		TxSwitch2to1
I24  		net0201         net0204     AddOut0 	PE6_sign AddOut0_n		TxSwitch2to1
I23  		net0208         net0149     AddOut0 	PE5_sign AddOut0_n		TxSwitch2to1
I22  		net0209         net0215     AddOut0 	PE4_sign AddOut0_n		TxSwitch2to1
I21  		net0217         net0133     AddOut0 	PE3_sign AddOut0_n		TxSwitch2to1
I20  		net083 	        net0220     AddOut0 	PE2_sign AddOut0_n		TxSwitch2to1
I19  		net0221         net0224     AddOut0 	PE1_sign AddOut0_n		TxSwitch2to1
I18  		net0193         net0228     AddOut0 	PE0_sign AddOut0_n		TxSwitch2to1
.ends Add8_V2