# for example
# gawk -f frequency_distribution.awk -v binsize=0.1 sample.dat
{

    if(binsize <= 0) exit

    if($1 < 0){

	frequency[int($1 / binsize) - 1] ++
    }
    else{

	frequency[int($1 / binsize)] ++
    }

}

END{

    for(i in frequency){

	print i * binsize, frequency[i] | "sort -n"
    }

}

