### plot potential for bin dependence

set grid
set yl "Potential [MeV]"
set xl "r [fm]"

set term x11 0

namelist="bin50 bin20 bin10 bin1"

## it 7
filename(it) = sprintf("",it)
list = system("ls spin00_raw/Potential/jack_error/r/OmgOmgPot000*.RC16x32_B1830Kud013760Ks013710C1761.it07")
plot for [i=1:words(list)] word(list, i) using ($1*0.1209):($2*197.3/0.1209):($3*197.3/0.1209) w e  title word(namelist, i)
 
set term postscript enhanced color solid lw 3
set output "bin_dep/Potential_bin_dep.it07.eps"
set multiplot
set yr[-200:1200]
set grid
set xl "{/=20 r [fm]}"
set yl "{/=20 V(r) [Mev]}"
set key left top
set xzeroaxis lt 7
plot for [i=1:words(list)] word(list, i) using ($1*0.1209):($2*197.3/0.1209):($3*197.3/0.1209) w e  title word(namelist, i)
 
unset grid
unset title
set size 0.5,0.5
set origin 0.50,0.40
unset key
set yr[-150:20]
unset xl
unset yl
replot
plot 0  ls 1 lc  rgb "black" lw 3
unset multiplot
reset


## it 8
filename(it) = sprintf("",it)
list = system("ls spin00_raw/Potential/jack_error/r/OmgOmgPot000*.RC16x32_B1830Kud013760Ks013710C1761.it08")
plot for [i=1:words(list)] word(list, i) using ($1*0.1209):($2*197.3/0.1209):($3*197.3/0.1209) w e  title word(namelist, i)
 
set term postscript enhanced color solid lw 3
set output "bin_dep/Potential_bin_dep.it08.eps"
set multiplot
set yr[-200:1200]
set grid
set xl "{/=20 r [fm]}"
set yl "{/=20 V(r) [Mev]}"
set key left top
set xzeroaxis lt 7
plot for [i=1:words(list)] word(list, i) using ($1*0.1209):($2*197.3/0.1209):($3*197.3/0.1209) w e  title word(namelist, i)
 
unset grid
unset title
set size 0.5,0.5
set origin 0.50,0.40
unset key
set yr[-150:20]
unset xl
unset yl
replot
plot 0  ls 1 lc  rgb "black" lw 3
unset multiplot
reset


## it 9
filename(it) = sprintf("",it)
list = system("ls spin00_raw/Potential/jack_error/r/OmgOmgPot000*.RC16x32_B1830Kud013760Ks013710C1761.it09")
plot for [i=1:words(list)] word(list, i) using ($1*0.1209):($2*197.3/0.1209):($3*197.3/0.1209) w e  title word(namelist, i)
 
set term postscript enhanced color solid lw 3
set output "bin_dep/Potential_bin_dep.it09.eps"
set multiplot
set yr[-200:1200]
set grid
set xl "{/=20 r [fm]}"
set yl "{/=20 V(r) [Mev]}"
set key left top
set xzeroaxis lt 7
plot for [i=1:words(list)] word(list, i) using ($1*0.1209):($2*197.3/0.1209):($3*197.3/0.1209) w e  title word(namelist, i)
 
unset grid
unset title
set size 0.5,0.5
set origin 0.50,0.40
unset key
set yr[-150:20]
unset xl
unset yl
replot
plot 0  ls 1 lc  rgb "black" lw 3
unset multiplot
reset




