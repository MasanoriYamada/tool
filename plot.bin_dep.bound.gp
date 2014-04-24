set grid
set xr[0:51]
set yl "Binding Energy [MeV]"
set xl "Bin size"

set term x11 0
plot for [t=9:7:-1 ] sprintf("1g1y1D.%d.dat", t) using 1:3:4 w e   ti sprintf("1g1y1D t= %d",t)
set term x11 1
plot for [t=9:7:-1 ] sprintf("1g1yy1D.%d.dat", t) using 1:3:4 w e  ti sprintf("1g1yy1D t= %d",t)
set term x11 2
plot for [t=9:7:-1] sprintf("1g1y3D.%d.dat", t)  using 1:3:4 w e      ti sprintf("1g1y3D t= %d",t)
set term x11 3
plot for [t=9:7:-1] sprintf("1g1yy3D.%d.dat", t) using 1:3:4 w e      ti sprintf("1g1yy3D t= %d",t)

######## for out put##############

set term postscript enhanced color solid lw 3
set output "plot/binEnergyBinDepend.1g1y1D.eps"
plot for [t=9:7:-1 ] sprintf("1g1y1D.%d.dat", t)  using 1:3:4 w e    ti sprintf("1g1y1D t= %d",t) 
set output "plot/binEnergyBinDepend.1g1yy1D.eps"		                                  
plot for [t=9:7:-1 ] sprintf("1g1yy1D.%d.dat", t) using 1:3:4 w e    ti sprintf("1g1yy1D t= %d",t)
set output "plot/binEnergyBinDepend.1g1y3D.eps"			                                  
plot for [t=9:7:-1] sprintf("1g1y3D.%d.dat", t)  using 1:3:4 w e	     ti sprintf("1g1y3D t= %d",t) 
set output "plot/binEnergyBinDepend.1g1yy3D.eps"		                                  
plot for [t=9:7:-1] sprintf("1g1yy3D.%d.dat", t) using 1:3:4 w e	     ti sprintf("1g1yy3D t= %d",t)

