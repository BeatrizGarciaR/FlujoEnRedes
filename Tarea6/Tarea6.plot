set term png
set output 'Tarea6.png
set xrange [0: 11]
set yrange [0: 11]
set pointsize .5
set size square
set key off
set arrow 1 from 7.764300,7.313287 to 6.625000, 1.187500 nohead lw 1.5 lc 0
set arrow 2 from 6.625000,1.187500 to 7.764300, 7.313287 nohead lw 1.5 lc 0
plot 'Nodos6.dat' using 1:2 with points pt 7
show arrow
quit()
