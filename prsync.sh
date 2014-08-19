#!/bin/bash
 
# SETUP OPTIONS
export SRCDIR="/Users/hoge/Desktop/esui"
export DESTDIR="/Users/hoge/Desktop/dist"
export THREADS="8"
 
# RSYNC TOP LEVEL FILES AND DIRECTORY STRUCTURE
rsync -lptgoDvzd $SRCDIR/ /$DESTDIR/
 
# FIND ALL FILES AND PASS THEM TO MULTIPLE RSYNC PROCESSES
cd $SRCDIR; find . -type f | xargs -n1 -P$THREADS -I% rsync -rlpcgoDv --stats % /$DESTDIR/%

 
# IF YOU WANT TO LIMIT THE IO PRIORITY, 
# PREPEND THE FOLLOWING TO THE rsync & cd/find COMMANDS ABOVE:
#   ionice -c2
