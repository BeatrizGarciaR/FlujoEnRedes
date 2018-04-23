set term pdf
set output 'Tarea5Prueba.pdf'
set xrange [0:1]
set yrange [0:1]
set pointsize .7
set size square
set key off
set arrow 1 from 0.400000,0.800000 to 0.200000, 0.800000 nohead lw 1
set arrow 2 from 0.200000,0.800000 to 0.400000, 0.800000 nohead lw 1
set arrow 3 from 0.600000,0.800000 to 0.400000, 0.800000 nohead lw 1
set arrow 4 from 0.400000,0.800000 to 0.600000, 0.800000 nohead lw 1
set arrow 5 from 0.800000,0.800000 to 0.600000, 0.800000 nohead lw 1
set arrow 6 from 0.600000,0.800000 to 0.800000, 0.800000 nohead lw 1
set arrow 7 from 0.400000,0.600000 to 0.200000, 0.600000 nohead lw 1
set arrow 8 from 0.200000,0.600000 to 0.400000, 0.600000 nohead lw 1
set arrow 9 from 0.200000,0.800000 to 0.200000, 0.600000 nohead lw 1
set arrow 10 from 0.200000,0.600000 to 0.200000, 0.800000 nohead lw 1
set arrow 11 from 0.600000,0.600000 to 0.400000, 0.600000 nohead lw 1
set arrow 12 from 0.400000,0.600000 to 0.600000, 0.600000 nohead lw 1
set arrow 13 from 0.400000,0.800000 to 0.400000, 0.600000 nohead lw 1
set arrow 14 from 0.400000,0.600000 to 0.400000, 0.800000 nohead lw 1
set arrow 15 from 0.800000,0.600000 to 0.600000, 0.600000 nohead lw 1
set arrow 16 from 0.600000,0.600000 to 0.800000, 0.600000 nohead lw 1
set arrow 17 from 0.600000,0.800000 to 0.600000, 0.600000 nohead lw 1
set arrow 18 from 0.600000,0.600000 to 0.600000, 0.800000 nohead lw 1
set arrow 19 from 0.800000,0.800000 to 0.800000, 0.600000 nohead lw 1
set arrow 20 from 0.800000,0.600000 to 0.800000, 0.800000 nohead lw 1
set arrow 21 from 0.400000,0.400000 to 0.200000, 0.400000 nohead lw 1
set arrow 22 from 0.200000,0.400000 to 0.400000, 0.400000 nohead lw 1
set arrow 23 from 0.600000,0.400000 to 0.400000, 0.400000 nohead lw 1
set arrow 24 from 0.400000,0.400000 to 0.600000, 0.400000 nohead lw 1
set arrow 25 from 0.800000,0.400000 to 0.600000, 0.400000 nohead lw 1
set arrow 26 from 0.600000,0.400000 to 0.800000, 0.400000 nohead lw 1
set arrow 27 from 0.400000,0.200000 to 0.200000, 0.200000 nohead lw 1
set arrow 28 from 0.200000,0.200000 to 0.400000, 0.200000 nohead lw 1
set arrow 29 from 0.600000,0.200000 to 0.400000, 0.200000 nohead lw 1
set arrow 30 from 0.400000,0.200000 to 0.600000, 0.200000 nohead lw 1
set arrow 31 from 0.800000,0.200000 to 0.600000, 0.200000 nohead lw 1
set arrow 32 from 0.600000,0.200000 to 0.800000, 0.200000 nohead lw 1
plot 'NodosFulkerson.dat' using 1:2 with points pt 7 lc 6
show arrow
quit()
