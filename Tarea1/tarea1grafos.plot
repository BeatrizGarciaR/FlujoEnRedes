set term png
set output 'graficagrafos.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.005415, 0.882588 to 0.646786, 0.449415 nohead lw 3
set arrow 2 from 0.005415, 0.882588 to 0.035804, 0.439645 nohead lw 3
set arrow 3 from 0.035804, 0.439645 to 0.752664, 0.941613 nohead lw 3
set arrow 4 from 0.752664, 0.941613 to 0.190477, 0.005514 nohead lw 3
set arrow 5 from 0.190477, 0.005514 to 0.965209, 0.457386 nohead lw 3
set arrow 6 from 0.965209, 0.457386 to 0.319305, 0.470057 nohead lw 3
set arrow 7 from 0.319305, 0.470057 to 0.002369, 0.385198 nohead lw 3
set arrow 8 from 0.002369, 0.385198 to 0.063730, 0.321077 nohead lw 3
set arrow 9 from 0.063730, 0.321077 to 0.645606, 0.061224 nohead lw 3
set arrow 10 from 0.645606, 0.061224 to 0.913984, 0.469594 nohead lw 3
set arrow 11 from 0.913984, 0.469594 to 0.092265, 0.350445 nohead lw 3
set arrow 12 from 0.092265, 0.350445 to 0.301903, 0.552080 nohead lw 3
set arrow 13 from 0.301903, 0.552080 to 0.474478, 0.569249 nohead lw 3
set arrow 14 from 0.474478, 0.569249 to 0.772053, 0.157539 nohead lw 3
set arrow 15 from 0.772053, 0.157539 to 0.646786, 0.449415 nohead lw 3
show arrow
plot 'nodosgrafos.dat' using 1:2 with points pt 7
quit()
