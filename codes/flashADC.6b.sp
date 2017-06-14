**** Design of a FlashADC ****

***************************************************************************
* Subcircuits
***************************************************************************
.include 'comparator.inc'


.subckt FlashADC_6b Vin_ADC vltch_in out_5 out_4 out_3 out_2 out_1 out_0 Vref=1v


xComparator1		Vin_ADC		Vref		vltch_in		vpos_1		vneg_1		Comparator
xComparator2		Vin_ADC		Vref		vltch_in		vpos_2		vneg_2		Comparator
xComparator3		Vin_ADC		Vref		vltch_in		vpos_3		vneg_3		Comparator
xComparator4		Vin_ADC		Vref		vltch_in		vpos_4		vneg_4		Comparator
xComparator5		Vin_ADC		Vref		vltch_in		vpos_5		vneg_5		Comparator
xComparator6		Vin_ADC		Vref		vltch_in		vpos_6		vneg_6		Comparator
xComparator7		Vin_ADC		Vref		vltch_in		vpos_7		vneg_7		Comparator
xComparator8		Vin_ADC		Vref		vltch_in		vpos_8		vneg_8		Comparator
xComparator9		Vin_ADC		Vref		vltch_in		vpos_9		vneg_9		Comparator
xComparator10		Vin_ADC		Vref		vltch_in		vpos_10		vneg_10		Comparator
xComparator11		Vin_ADC		Vref		vltch_in		vpos_11		vneg_11		Comparator
xComparator12		Vin_ADC		Vref		vltch_in		vpos_12		vneg_12		Comparator
xComparator13		Vin_ADC		Vref		vltch_in		vpos_13		vneg_13		Comparator
xComparator14		Vin_ADC		Vref		vltch_in		vpos_14		vneg_14		Comparator
xComparator15		Vin_ADC		Vref		vltch_in		vpos_15		vneg_15		Comparator
xComparator16		Vin_ADC		Vref		vltch_in		vpos_16		vneg_16		Comparator
xComparator17		Vin_ADC		Vref		vltch_in		vpos_17		vneg_17		Comparator
xComparator18		Vin_ADC		Vref		vltch_in		vpos_18		vneg_18		Comparator
xComparator19		Vin_ADC		Vref		vltch_in		vpos_19		vneg_19		Comparator
xComparator20		Vin_ADC		Vref		vltch_in		vpos_20		vneg_20		Comparator
xComparator21		Vin_ADC		Vref		vltch_in		vpos_21		vneg_21		Comparator
xComparator22		Vin_ADC		Vref		vltch_in		vpos_22		vneg_22		Comparator
xComparator23		Vin_ADC		Vref		vltch_in		vpos_23		vneg_23		Comparator
xComparator24		Vin_ADC		Vref		vltch_in		vpos_24		vneg_24		Comparator
xComparator25		Vin_ADC		Vref		vltch_in		vpos_25		vneg_25		Comparator
xComparator26		Vin_ADC		Vref		vltch_in		vpos_26		vneg_26		Comparator
xComparator27		Vin_ADC		Vref		vltch_in		vpos_27		vneg_27		Comparator
xComparator28		Vin_ADC		Vref		vltch_in		vpos_28		vneg_28		Comparator
xComparator29		Vin_ADC		Vref		vltch_in		vpos_29		vneg_29		Comparator
xComparator30		Vin_ADC		Vref		vltch_in		vpos_30		vneg_30		Comparator
xComparator31		Vin_ADC		Vref		vltch_in		vpos_31		vneg_31		Comparator
xComparator32		Vin_ADC		Vref		vltch_in		vpos_32		vneg_32		Comparator
xComparator33		Vin_ADC		Vref		vltch_in		vpos_33		vneg_33		Comparator
xComparator34		Vin_ADC		Vref		vltch_in		vpos_34		vneg_34		Comparator
xComparator35		Vin_ADC		Vref		vltch_in		vpos_35		vneg_35		Comparator
xComparator36		Vin_ADC		Vref		vltch_in		vpos_36		vneg_36		Comparator
xComparator37		Vin_ADC		Vref		vltch_in		vpos_37		vneg_37		Comparator
xComparator38		Vin_ADC		Vref		vltch_in		vpos_38		vneg_38		Comparator
xComparator39		Vin_ADC		Vref		vltch_in		vpos_39		vneg_39		Comparator
xComparator40		Vin_ADC		Vref		vltch_in		vpos_40		vneg_40		Comparator
xComparator41		Vin_ADC		Vref		vltch_in		vpos_41		vneg_41		Comparator
xComparator42		Vin_ADC		Vref		vltch_in		vpos_42		vneg_42		Comparator
xComparator43		Vin_ADC		Vref		vltch_in		vpos_43		vneg_43		Comparator
xComparator44		Vin_ADC		Vref		vltch_in		vpos_44		vneg_44		Comparator
xComparator45		Vin_ADC		Vref		vltch_in		vpos_45		vneg_45		Comparator
xComparator46		Vin_ADC		Vref		vltch_in		vpos_46		vneg_46		Comparator
xComparator47		Vin_ADC		Vref		vltch_in		vpos_47		vneg_47		Comparator
xComparator48		Vin_ADC		Vref		vltch_in		vpos_48		vneg_48		Comparator
xComparator49		Vin_ADC		Vref		vltch_in		vpos_49		vneg_49		Comparator
xComparator50		Vin_ADC		Vref		vltch_in		vpos_50		vneg_50		Comparator
xComparator51		Vin_ADC		Vref		vltch_in		vpos_51		vneg_51		Comparator
xComparator52		Vin_ADC		Vref		vltch_in		vpos_52		vneg_52		Comparator
xComparator53		Vin_ADC		Vref		vltch_in		vpos_53		vneg_53		Comparator
xComparator54		Vin_ADC		Vref		vltch_in		vpos_54		vneg_54		Comparator
xComparator55		Vin_ADC		Vref		vltch_in		vpos_55		vneg_55		Comparator
xComparator56		Vin_ADC		Vref		vltch_in		vpos_56		vneg_56		Comparator
xComparator57		Vin_ADC		Vref		vltch_in		vpos_57		vneg_57		Comparator
xComparator58		Vin_ADC		Vref		vltch_in		vpos_58		vneg_58		Comparator
xComparator59		Vin_ADC		Vref		vltch_in		vpos_59		vneg_59		Comparator
xComparator60		Vin_ADC		Vref		vltch_in		vpos_60		vneg_60		Comparator
xComparator61		Vin_ADC		Vref		vltch_in		vpos_61		vneg_61		Comparator
xComparator62		Vin_ADC		Vref		vltch_in		vpos_62		vneg_62		Comparator
xComparator63		Vin_ADC		Vref		vltch_in		vpos_63		vneg_63		Comparator



.ends FlashADC_6b