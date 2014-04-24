#!/usr/bin/bash
Conf=700

echo "check number of bound"
for bin in {1,10,20,50}
do
    MAXconf=`expr "$Conf" / "$bin"`
    MAX=`expr  "$MAXconf" - 1 `
    for func in {1g1y1D,1g1yy1D,1g1y3D,1g1yy3D}
    do
	for it in {7,8,9}
	do
	    echo "bin ="$bin $func "t = "$it    
	    for iconf in `seq 0 1 $MAX`
	    do
	#echo $(printf %d $bin)
		file="spin00.bin${bin}/Smatrix/bin/$(printf %s $func).Smat.$(printf %06d-%06d $MAXconf $iconf).RC16x32_B1830Kud013760Ks013710C1761.it$(printf %02d $it)"
		num1=$(cat $file |grep -e "-9.9999999999999995e-08")
		num2=$(cat $file |grep -e "-2.0000000000000000e-03")
		num3=$(cat $file |grep -e "-1.5000000000000000e+01")		
	    #echo "$file"
		if [ "-9.0000000000000000e+01" != $(echo $num3 | awk ' { printf "%s\n", $4}') ] 
		then
		    echo "binding energy is more large in  $file  (recalulate mroe large Energy range)"
		fi
		if [ "0.0000000000000000e+00" != $(echo $num1 | awk ' { printf "%s\n", $4}') -a "-0.0000000000000000e+00" != $(echo $num1 | awk ' { printf "%s\n", $4}')  ] 
		then
		    echo "un bound in  $file"
		fi
		if [ "0.0000000000000000e+00" != $(echo $num2 | awk ' { printf "%s\n", $4}') -a "-0.0000000000000000e+00" != $(echo $num2 | awk ' { printf "%s\n", $4}')  ] 
		then
		    echo "Warrnig shallow in  $file"
		fi
	    done
	done
	echo "---------------------------------------------"
    done
    echo "=============================================="
done
