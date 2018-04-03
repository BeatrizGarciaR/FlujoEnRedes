set term pdf
set output 'Tarea3Completo.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .7
set size square
set key off
set arrow 1 from 0.969693,0.245446 to 0.945238, 0.202589 head filled lw 1
set arrow 2 from 0.480562,0.907009 to 0.546178, 0.946829 head filled lw 1
set arrow 3 from 0.025128,0.552846 to 0.019392, 0.470533 head filled lw 1
set arrow 4 from 0.265786,0.992397 to 0.179235, 0.971406 head filled lw 1
set arrow 5 from 0.333886,0.158127 to 0.424950, 0.179011 head filled lw 1
set arrow 6 from 0.025128,0.552846 to 0.381750, 0.867438 head filled lw 1
set arrow 7 from 0.025128,0.552846 to 0.706170, 0.204926 head filled lw 1
set arrow 8 from 0.560383,0.298210 to 0.586928, 0.043007 head filled lw 1
set arrow 9 from 0.424950,0.179011 to 0.179235, 0.971406 head filled lw 1
set arrow 10 from 0.480562,0.907009 to 0.945238, 0.202589 head filled lw 1
set arrow 11 from 0.700747,0.412591 to 0.587842, 0.153362 head filled lw 1
set arrow 12 from 0.480562,0.907009 to 0.004535, 0.035802 head filled lw 1
set arrow 13 from 0.179235,0.971406 to 0.587842, 0.153362 head filled lw 1
set arrow 14 from 0.019392,0.470533 to 0.706170, 0.204926 head filled lw 1
set arrow 15 from 0.049864,0.336627 to 0.019392, 0.470533 head filled lw 1
set arrow 16 from 0.019392,0.470533 to 0.004535, 0.035802 head filled lw 1
set arrow 17 from 0.333886,0.158127 to 0.970707, 0.487441 head filled lw 1
set arrow 18 from 0.179235,0.971406 to 0.333886, 0.158127 head filled lw 1
set arrow 19 from 0.560383,0.298210 to 0.480562, 0.907009 head filled lw 1
set arrow 20 from 0.381750,0.867438 to 0.019392, 0.470533 head filled lw 1
set arrow 21 from 0.706170,0.204926 to 0.560383, 0.298210 head filled lw 1
set arrow 22 from 0.333886,0.158127 to 0.969693, 0.245446 head filled lw 1
set arrow 23 from 0.179235,0.971406 to 0.019392, 0.470533 head filled lw 1
set arrow 24 from 0.424950,0.179011 to 0.706170, 0.204926 head filled lw 1
show arrow
plot 'Tarea3Completo.dat' using 1:2 with points pt 7 lc 6
quit()
