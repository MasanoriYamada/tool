set grid
set yl "phase shift [degree]"
set xl "E [MeV]"

#1g1y1D
set terminal X11 1
fname1g1y1D(n) = sprintf("phase.1g1y1D.000399-000000.RC16x32_B1830Kud013760Ks013710C1761.it%02d" , n)
name1g1y1D(n) = sprintf("func = gauss + yukawa 1D, t = %d" , n)
plot for [i=11:13] fname1g1y1D(i) u 1:4 title name1g1y1D(i)
set term postscript enhanced color solid lw 3
set output "phase.1g1y1D.eps"
replot

#1g1y3D
set terminal X11 2
fname1g1y3D(n) = sprintf("phase.1g1y3D.000399-000000.RC16x32_B1830Kud013760Ks013710C1761.it%02d" , n)
name1g1y3D(n) = sprintf("func = gauss + yukawa 3D, t = %d" , n)
plot for [i=11:13] fname1g1y3D(i) u 1:4 title name1g1y3D(i)
set term postscript enhanced color solid lw 3
set output "phase.1g1y3D.eps"
replot

#1g1yy1D
set terminal X11 3
fname1g1yy1D(n) = sprintf("phase.1g1yy1D.000399-000000.RC16x32_B1830Kud013760Ks013710C1761.it%02d" , n)
name1g1yy1D(n) = sprintf("func = gauss + yukawa^2 1D, t = %d" , n)
plot for [i=11:13] fname1g1yy1D(i) u 1:4 title name1g1yy1D(i)
set term postscript enhanced color solid lw 3
set output "phase.1g1yy1D.eps"
replot

#1g1yy3D
set terminal X11 4
fname1g1yy3D(n) = sprintf("phase.1g1yy3D.000399-000000.RC16x32_B1830Kud013760Ks013710C1761.it%02d" , n)
name1g1yy3D(n) = sprintf("func = gauss + yukawa^2 3D, t = %d" , n)
plot for [i=11:13] fname1g1yy3D(i) u 1:4 title name1g1yy3D(i)
set term postscript enhanced color solid lw 3
set output "phase.1g1yy3D.eps"
replot
