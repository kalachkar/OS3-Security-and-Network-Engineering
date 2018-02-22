#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwnd.png'
set style data linespoints
set xlabel "time (seconds)"
set xrange [0:200]
set ylabel "Segments (cwnd, ssthresh)"
set title "Packet loss"
set grid

plot "tcpprobe_src.out" using 1:7 title "snd_cwnd", \
      "tcpprobe_src.out" using 1:($8>=2147483647 ? 0 : $8) title "snd_ssthresh"
