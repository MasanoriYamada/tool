#!/usr/bin

gnuplot <<EOF
set yr[0:*]
set term postscript enhanced color solid lw 3
set output "$2.eps"
set xl "E [MeV]"
plot "$1"  with boxes ti "$3"
EOF
