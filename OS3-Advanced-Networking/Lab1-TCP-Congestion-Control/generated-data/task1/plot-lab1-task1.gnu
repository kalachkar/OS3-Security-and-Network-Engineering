#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwnd.png'
set xlabel "time (seconds)"
set xrange [0:100]
set ylabel "CWIN size (bytes)"
set title "CWND"
set grid

plot "TcpVariantsComparison-cwnd.data" using 1:2 with linespoints title "cwnd_"



