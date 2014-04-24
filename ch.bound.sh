#!/usr/bin/bash
Conf=700

echo "check number of bound"
for bin in {1,10,20,50}
do
    MAXconf=`expr "$Conf" / "$bin"`
    
    for func in {1g1y1D,1g1yy1D,1g1y3D,1g1yy3D}
    do
	for it in {7,8,9}
	do
	#echo $(printf %d $bin)
	    file="spin00.bin${bin}/phase/bin/$(printf %s $func)_energy*.it$(printf %02d $it)"
	    num=$(cat $file |wc -l)
	    #echo "$file"
	    echo "bin ="$bin $func "t = "$it
	    echo $num / $MAXconf
	done
	echo "---------------------------------------------"
    done
    echo "=============================================="
done
