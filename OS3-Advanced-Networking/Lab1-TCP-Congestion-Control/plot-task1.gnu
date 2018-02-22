#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwndWestwood_3.png'
set xlabel "time (seconds)"
set xrange [4:7]
set ylabel "CWND size (bytes)"
set title "Collision Window Size"
set grid

plot "TcpWestwood-cwnd.data" using 1:2 with linespoints title "cwnd_"



