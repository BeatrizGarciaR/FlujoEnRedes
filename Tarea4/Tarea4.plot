set term pdf
set output 'Tarea4.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .7
set size square
set key off
set arrow 1 from 0.623607,0.880423 to 0.900000, 0.500000 nohead lw 1
set arrow 2 from 0.900000,0.500000 to 0.623607, 0.880423 nohead lw 1
set arrow 3 from 0.176393,0.735114 to 0.623607, 0.880423 nohead lw 1
set arrow 4 from 0.623607,0.880423 to 0.176393, 0.735114 nohead lw 1
set arrow 5 from 0.176393,0.264886 to 0.176393, 0.735114 nohead lw 1
set arrow 6 from 0.176393,0.735114 to 0.176393, 0.264886 nohead lw 1
set arrow 7 from 0.623607,0.119577 to 0.176393, 0.264886 nohead lw 1
set arrow 8 from 0.176393,0.264886 to 0.623607, 0.119577 nohead lw 1
set arrow 9 from 0.900000,0.500000 to 0.623607, 0.119577 nohead lw 1
set arrow 10 from 0.623607,0.119577 to 0.900000, 0.500000 nohead lw 1
set arrow 11 from 0.623607,0.880423 to 0.623607, 0.119577 nohead lw 1
set arrow 12 from 0.623607,0.119577 to 0.623607, 0.880423 nohead lw 1
set arrow 13 from 0.176393,0.735114 to 0.900000, 0.500000 nohead lw 1
set arrow 14 from 0.900000,0.500000 to 0.176393, 0.735114 nohead lw 1
set arrow 15 from 0.176393,0.264886 to 0.623607, 0.880423 nohead lw 1
set arrow 16 from 0.623607,0.880423 to 0.176393, 0.264886 nohead lw 1
set arrow 17 from 0.623607,0.119577 to 0.176393, 0.735114 nohead lw 1
set arrow 18 from 0.176393,0.735114 to 0.623607, 0.119577 nohead lw 1
set arrow 19 from 0.900000,0.500000 to 0.176393, 0.264886 nohead lw 1
set arrow 20 from 0.176393,0.264886 to 0.900000, 0.500000 nohead lw 1
plot 'NodosWarshall.dat' using 1:2 with points pt 7 lc 6
show arrow
quit()
