#!/usr/bin/gnuplot

#set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 500, 350 
set term postscript eps enhanced
set output 'perf_break.eps'
set boxwidth 0.6 relative # 0.9 absolute
set style fill solid border
set key inside right top vertical Right noreverse noenhanced autotitles nobox
#set datafile missing '-'

set style data histograms
set style histogram rowstacked
#set style histogram clustered


#set xtics border in scale 0,0 nomirror rotate by -45  offset character 0, 0, 0 autojustify
set xtics  norangelimit font ",8"
set xtics   ()
set title "Performance break-down graph" 
set yrange [ 40 : 1000 ] noreverse nowriteback
#set xrange [ 800: 5000]
set xlabel "Number of processors"
set ylabel "Time in milliseconds"

#i = 22
#plot 'histomany.dat' using 2 t columnheader, '' using 3 t columnheader, '' using 4:xtic(1) t columnheader

# Title column comes last!
#plot for [COL=2:4] 'perf_break.dat' using COL:COL:xticlabels(1) lc variable title col
#plot for [COL=2:4] 'perf_break.dat' using COL  title col

plot 'histomany.dat' using 2:xticlabels(1) title columnheader lc rgb "blue", \
'histomany.dat' using 3:xticlabels(1) title columnheader lc rgb "orange", \
'histomany.dat' using 4:xticlabels(1) title columnheader lc rgb "green"


