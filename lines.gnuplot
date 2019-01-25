#!/usr/bin/gnuplot

set term postscript eps enhanced color
set output ARG1.'.eps'

datafile = ARG1
firstrow = system('head -1 '.datafile)
col2 = word(firstrow, 2)
col3 = word(firstrow, 3)

#set colors classic
#set title "LUBM TransE Tail Predictions Unfiltered"
set title ARG1
set key top left outside horizontal autotitle columnhead

set xtics scale 3,2 rotate by 67 out nomirror
set xtics out offset 0,-3.0
#set xtics 0,50,500 out nomirror
#set autoscale x
#show xtics
set ytics out nomirror

set style fill solid border -1
set boxwidth 0.5 relative
set style data linespoint
#set style histogram rowstacked
set xlabel word(firstrow, 1) offset 0,-4.0

plot ARG1 using 2:xtic(1) with labels notitle

#set output ARG1.col3.'.eps'
#plot ARG1 using 3:xtic(1)
#plot ARG1 with linespoint lw 3 pt 11, '' with labels center offset 3.4,.5 notitle
