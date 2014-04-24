#!/bin/bash
files="./OmgOmgPot*"
for filepath in ${files}

do
  filename=`basename ${filepath}`
  echo "sort  :${filename}"
  sort ${filename} -o sort.tmp
  echo "redareduction  :${filename}"
  uniq sort.tmp ${filename}
done
rm sort.tmp
echo "all finish"
