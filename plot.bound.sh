#!/usr/bin/bash
Conf=700

echo "show binding energy ave error"
for bin in {1,10,20,50}
do
    MAXconf=`expr "$Conf" / "$bin"`
    
    for func in {1g1y1D,1g1yy1D,1g1y3D,1g1yy3D}
    do
	for it in {7,8,9}
	do
	#echo $(printf %d $bin)
	    file="spin00.bin${bin}/Smatrix/jack/$(printf %s $func).Smat_jack*.it$(printf %02d $it)"
	    num=$(cat $file)
	    #echo "$file"
	    echo "bin ="$bin $func "t = "$it
	    echo $bin $num >> bin_dep/$func.$it.dat
	done
	echo "---------------------------------------------"
    done
    echo "=============================================="
done
