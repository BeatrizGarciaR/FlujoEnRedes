set term png
set output 'Tarea5Percola.png
set xrange [0: 6]
set yrange [0: 6]
set pointsize .5
set size square
set key off
set arrow 1 from 2.000000,1.000000 to 3.000000, 1.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 2 from 2.000000,4.000000 to 2.000000, 5.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 3 from 2.000000,4.000000 to 3.000000, 4.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 4 from 3.000000,3.000000 to 3.000000, 4.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 5 from 3.000000,3.000000 to 4.000000, 3.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 6 from 3.000000,4.000000 to 4.000000, 4.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 7 from 4.000000,3.000000 to 4.000000, 2.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 8 from 4.000000,5.000000 to 4.000000, 4.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 9 from 4.000000,4.000000 to 5.000000, 4.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 10 from 5.000000,1.000000 to 5.000000, 2.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 11 from 1.000000,5.000000 to 4.000000, 5.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 12 from 3.000000,1.000000 to 2.000000, 2.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 13 from 3.000000,1.000000 to 3.000000, 5.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 14 from 4.000000,4.000000 to 3.000000, 5.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
set arrow 15 from 5.000000,1.000000 to 5.000000, 4.000000 head filled size screen 0.02,15,45 lw 1.5 lc 6
plot 'NodosFulkerson.dat' using 1:2 with points pt 7
show arrow
quit()
