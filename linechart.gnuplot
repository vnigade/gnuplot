#!/usr/bin/gnuplot

set term postscript eps enhanced color font ", 20"
set output ARG1.'.eps'
#set terminal jpeg medium size 640,480
#set output ARG1.'.jpeg'

set colors classic
#set title "LUBM1K var-subgraph evaluation"
set title ARG1
set key top left outside horizontal autotitle columnhead
#set key autotitle columnhead
#set auto x
#set xrange [0:50]
set ytics out nomirror
set grid

set style fill solid border -1
set boxwidth 0.5 relative
set style data lines

set xlabel "top K subgraphs"
set ylabel "Number of hits"

plot ARG1 using 2:xticlabels(int($1) % 20 == 0 ? stringcolumn(1):'') , '' using 3 
