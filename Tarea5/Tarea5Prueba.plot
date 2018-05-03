set term pdf
set output 'Tarea5Prueba.pdf'
set xrange [0: 4]
set yrange [0: 4]
set pointsize .5
set size square
set key off
set arrow 1 from 1.000000,1.000000 to 1.000000, 2.000000 nohead lw 1 lc 0
set arrow 2 from 1.000000,2.000000 to 1.000000, 1.000000 nohead lw 1 lc 0
set arrow 3 from 1.000000,1.000000 to 2.000000, 1.000000 nohead lw 1 lc 0
set arrow 4 from 2.000000,1.000000 to 1.000000, 1.000000 nohead lw 1 lc 0
set arrow 5 from 1.000000,2.000000 to 1.000000, 3.000000 nohead lw 1 lc 0
set arrow 6 from 1.000000,3.000000 to 1.000000, 2.000000 nohead lw 1 lc 0
set arrow 7 from 1.000000,2.000000 to 2.000000, 2.000000 nohead lw 1 lc 0
set arrow 8 from 2.000000,2.000000 to 1.000000, 2.000000 nohead lw 1 lc 0
set arrow 9 from 1.000000,3.000000 to 2.000000, 3.000000 nohead lw 1 lc 0
set arrow 10 from 2.000000,3.000000 to 1.000000, 3.000000 nohead lw 1 lc 0
set arrow 11 from 2.000000,1.000000 to 2.000000, 2.000000 nohead lw 1 lc 0
set arrow 12 from 2.000000,2.000000 to 2.000000, 1.000000 nohead lw 1 lc 0
set arrow 13 from 2.000000,1.000000 to 3.000000, 1.000000 nohead lw 1 lc 0
set arrow 14 from 3.000000,1.000000 to 2.000000, 1.000000 nohead lw 1 lc 0
set arrow 15 from 2.000000,2.000000 to 2.000000, 3.000000 nohead lw 1 lc 0
set arrow 16 from 2.000000,3.000000 to 2.000000, 2.000000 nohead lw 1 lc 0
set arrow 17 from 2.000000,2.000000 to 3.000000, 2.000000 nohead lw 1 lc 0
set arrow 18 from 3.000000,2.000000 to 2.000000, 2.000000 nohead lw 1 lc 0
set arrow 19 from 2.000000,3.000000 to 3.000000, 3.000000 nohead lw 1 lc 0
set arrow 20 from 3.000000,3.000000 to 2.000000, 3.000000 nohead lw 1 lc 0
set arrow 21 from 3.000000,1.000000 to 3.000000, 2.000000 nohead lw 1 lc 0
set arrow 22 from 3.000000,2.000000 to 3.000000, 1.000000 nohead lw 1 lc 0
set arrow 23 from 3.000000,2.000000 to 3.000000, 3.000000 nohead lw 1 lc 0
set arrow 24 from 3.000000,3.000000 to 3.000000, 2.000000 nohead lw 1 lc 0
plot 'NodosFulkerson.dat' using 1:2 with points pt 7
show arrow
quit()
