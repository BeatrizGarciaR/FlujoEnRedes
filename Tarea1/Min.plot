set term png
set output 'MinGraf.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.422584, 0.983617 to 0.302199, 0.748679 nohead lw 3
set arrow 2 from 0.490709, 0.204800 to 0.325049, 0.202880 nohead lw 3
set arrow 3 from 0.013052, 0.204038 to 0.032030, 0.082808 nohead lw 3
set arrow 4 from 0.188876, 0.109196 to 0.032030, 0.082808 nohead lw 3
set arrow 5 from 0.302199, 0.748679 to 0.378515, 0.684309 nohead lw 3
set arrow 6 from 0.893959, 0.685045 to 0.955173, 0.562176 nohead lw 3
set arrow 7 from 0.325049, 0.202880 to 0.188876, 0.109196 nohead lw 3
show arrow
plot 'MinNodos.dat' using 1:2 with points pt 7
quit()
