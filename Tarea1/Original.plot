set term png
set output 'OriginalGraf.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.316368, 0.026315 to 0.400732, 0.468700 nohead lw 3
set arrow 2 from 0.303260, 0.725381 to 0.316368, 0.026315 nohead lw 3
set arrow 3 from 0.303260, 0.725381 to 0.130080, 0.646046 nohead lw 3
set arrow 4 from 0.971966, 0.286713 to 0.316368, 0.026315 nohead lw 3
set arrow 5 from 0.665229, 0.438735 to 0.971966, 0.286713 nohead lw 3
set arrow 6 from 0.665229, 0.438735 to 0.665229, 0.438735 nohead lw 3
set arrow 7 from 0.665229, 0.438735 to 0.130080, 0.646046 nohead lw 3
set arrow 8 from 0.130080, 0.646046 to 0.316368, 0.026315 nohead lw 3
set arrow 9 from 0.130080, 0.646046 to 0.665229, 0.438735 nohead lw 3
set arrow 10 from 0.130080, 0.646046 to 0.130080, 0.646046 nohead lw 3
set arrow 11 from 0.130080, 0.646046 to 0.362041, 0.363441 nohead lw 3
set arrow 12 from 0.305482, 0.210577 to 0.303260, 0.725381 nohead lw 3
set arrow 13 from 0.305482, 0.210577 to 0.305482, 0.210577 nohead lw 3
set arrow 14 from 0.462499, 0.775199 to 0.971966, 0.286713 nohead lw 3
set arrow 15 from 0.462499, 0.775199 to 0.665229, 0.438735 nohead lw 3
set arrow 16 from 0.462499, 0.775199 to 0.400732, 0.468700 nohead lw 3
set arrow 17 from 0.462499, 0.775199 to 0.462499, 0.775199 nohead lw 3
show arrow
plot 'OriginalNodos.dat' using 1:2 with points pt 7
quit()
