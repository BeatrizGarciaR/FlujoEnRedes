set term png
set output 'grafica.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.562414, 0.687945 to 0.461885, 0.927906 nohead lw 3
set arrow 2 from 0.562414, 0.687945 to 0.699774, 0.983274 nohead lw 3
set arrow 3 from 0.907590, 0.424807 to 0.733054, 0.476858 nohead lw 3
set arrow 4 from 0.778606, 0.379626 to 0.778606, 0.379626 nohead lw 3
set arrow 5 from 0.414575, 0.821408 to 0.907590, 0.424807 nohead lw 3
set arrow 6 from 0.414575, 0.821408 to 0.733054, 0.476858 nohead lw 3
set arrow 7 from 0.801843, 0.142290 to 0.562414, 0.687945 nohead lw 3
set arrow 8 from 0.801843, 0.142290 to 0.414575, 0.821408 nohead lw 3
set arrow 9 from 0.733054, 0.476858 to 0.461885, 0.927906 nohead lw 3
set arrow 10 from 0.633814, 0.164880 to 0.778606, 0.379626 nohead lw 3
set arrow 11 from 0.633814, 0.164880 to 0.801843, 0.142290 nohead lw 3
set arrow 12 from 0.699774, 0.983274 to 0.907590, 0.424807 nohead lw 3
set arrow 13 from 0.699774, 0.983274 to 0.633814, 0.164880 nohead lw 3
show arrow
plot 'nodos.dat' using 1:2 with points pt 7
quit()
