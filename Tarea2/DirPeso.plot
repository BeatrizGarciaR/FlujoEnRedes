set term eps
set output 'DirPeso.eps'
set xrange [0:1]
set yrange [0:1]
set pointsize 1.5
set size square
set key off
set arrow 1 from 0.301715, 0.335169 to 0.091114, 0.491864 head filled lw 1
set label '6' at 0.196415,0.413517
set arrow 2 from 0.196029, 0.974251 to 0.500659, 0.839771 head filled lw 1
set label '4' at 0.348344,0.907011
set arrow 3 from 0.538975, 0.031087 to 0.301715, 0.335169 head filled lw 1
set label '5' at 0.420345,0.183128
show arrow
plot 'DirPesoNodos.dat' using 1:2 with points pt 7 lc 6
quit()
