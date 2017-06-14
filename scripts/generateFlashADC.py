import sys


size = int(sys.argv[1])

for i in range(1, 2**size):
	print "xComparator"+ str(i) + "\t\tVin_ADC\t\tVref\t\tvltch_in\t\t" + "vpos_" + str(i) + "\t\t" + "vneg_" + str(i) + "\t\tComparator"