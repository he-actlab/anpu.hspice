import sys


size = int(sys.argv[1])


print "\t" + "R0\t" +  "dacIin\t" + "w0_0p\t" + "r=\'res_network\'"
print ""

for i in range(0, 2**(size - 1)-1):
	print "\tR" + str(2*i+1) + '\t' \
			'w0_' + str(i) + "p\t" \
			'w0_' + str(i) + "n\t" + "r=\'res_network\'"
	print "\tR" + str(2*i+2) + '\t' \
			'w0_' + str(i) + "n\t" \
			'w0_' + str(i+1) + "p\t" + "r=\'res_network\'"

print "\tR" + str(2**size-1) + '\t' \
			'w0_' + str(2**(size-1)-1) + "p\t" \
			'w0_' + str(2**(size-1)-1) + "n\t" + "r=\'res_network\'"


print ""


print "\tV0" + '\t' + 'w0_' + str(2**(size-1)-1) + 'n\t' + '0\t' + 'dc=\'vref\''
print ""


print "\tXW" + str(size - 1) + "_0" + '\t' \
				+ 'Iout_Res' + '\t' \
				+ 'w' + str(size-1) + '_' + '0p' + '\t' \
				+ 'w' + str(size-1) + 'in' + '\t' \
				+ 'w' + str(size-1) + '_' + '0n' + '\t' \
				+ 'TxSwitch1to2' + '\t' \
				+ 'Strength=1'
print ""
for i in range(size-1, 0, -1):
	for j in range(0, 2**(size-i-1), 1):
		print "\tXW" + str(i-1) + "_" + str(2*j) + '\t' \
				+ 'w' + str(i) + '_' + str(j) + 'p' + '\t' \
				+ 'w' + str(i-1) + '_' + str(2*j) + 'p' + '\t' \
				+ 'w' + str(i-1) + 'in' + '\t' \
				+ 'w' + str(i-1) + '_' + str(2*j) + 'n' + '\t' \
				+ 'TxSwitch1to2' + '\t' + 'Strength=1'
		print "\tXW" + str(i-1) + "_" + str(2*j+1) + '\t' \
				+ 'w' + str(i) + '_' + str(j) + 'n' + '\t' \
				+ 'w' + str(i-1) + '_' + str(2*j+1) + 'p' + '\t' \
				+ 'w' + str(i-1) + 'in' + '\t' \
				+ 'w' + str(i-1) + '_' + str(2*j+1) + 'n' + '\t' \
				+ 'TxSwitch1to2' + '\t' + 'Strength=1'
	print ""