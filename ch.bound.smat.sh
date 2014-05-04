#!/usr/bin/bash
Conf=700
LOG=bound.log
rm $LOG

echo "#check binding energy"
echo "#    binding energy          1/S"
for bin in {1,10,20,50}
do
    MAXconf=`expr "$Conf" / "$bin"`
    MAX=`expr  "$MAXconf" - 1 `
    for func in {1g1y1D,1g1yy1D,1g1y3D,1g1yy3D}
    do
	for it in {7,8,9}
	do
	    echo "bin ="$bin $func "t = "$it    |tee -a $LOG
	    for iconf in `seq 0 1 $MAX`
	    do
		printf "%03d  " $iconf |tee -a $LOG
		file="spin00.bin${bin}/Smatrix/bin/$(printf %s $func).Smat.$(printf %06d-%06d $MAXconf $iconf).RC16x32_B1830Kud013760Ks013710C1761.it$(printf %02d $it)"
	    #echo "$file"
		gawk ' { current = $4; val = $2; if(previous != current && NR !=1){printf("%s %s\n",$1 ,$2); count = count + 1;\
if(val > 1.0){printf("#####################################  warrning  #######################################\n");}} previous = current;}END{if(count == 0){\
printf("#####################################  warrning  #######################################\n");}}'  $file |tee -a $LOG
	    done
	done
	echo "---------------------------------------------"
    done
    echo "=============================================="
done
