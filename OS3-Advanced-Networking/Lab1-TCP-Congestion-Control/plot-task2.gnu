#!/usr/bin/gnuplot

reset
set terminal png
set out 'cwnd.png'
set style data linespoints
set xlabel "time (seconds)"
set xrange [xx:xx]
set ylabel "Segments (cwnd, ssthresh)"
set title "Congestion window monitoring"
set grid

plot "data_file_path" using 1:7 title "snd_cwnd", \
      "data_file_path" using 1:($8>=2147483647 ? 0 : $8) title "snd_ssthresh"
