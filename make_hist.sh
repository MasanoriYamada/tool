#!/usr/bin
# plot histgram
#save outfile

binsize=0.001
outpath=/data1/yamada/OmgOmg/results/set1/ts32/bin_dep/energy_hist/
outplot_path_in=/data1/yamada/OmgOmg/results/set1/ts32/bin_dep/energy_hist/plot/
mkdir -p $outpath
mkdir -p $outplot_path


IFS_BACKUP=$IFS
IFS=$'\n'

for it in 7 8 9
do
    for func in 1g1y1D 1g1y3D 1g1yy1D 1g1yy3D
    do
	outplot_path=$(printf "%s/%d/%s" $outplot_path_in $it $func)
	mkdir -p $outplot_path
	for bin in 1 10 20 50
	do
	    outfile=$(printf "%s/%s.hist_energy.bin%03d.it%02d.dat" $outpath $func $bin $it)
	    outplot_file=$(printf "%s/it%02d.%s.bin%03d.hist_energy" $outplot_path $it $func $bin)
	    label=$(printf "%s bin = %d t = %d" $func $bin $it)
	    path=$(printf "spin00.bin%d/phase/bin/%s_energy.*it%02d" $bin $func $it)
	    cat $path |gawk -f frequency_distribution.awk -v binsize=$binsize > $outfile
	    sh hist.plot $outfile $outplot_file $label
	done
    done
done
