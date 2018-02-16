set term png
set output 'graficaCiclo.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.639070, 0.773267 to 0.659761, 0.771680 nohead lw 3
set arrow 2 from 0.658554, 0.883480 to 0.710232, 0.952508 nohead lw 3
set arrow 3 from 0.290300, 0.356150 to 0.295974, 0.381743 nohead lw 3
set arrow 4 from 0.295974, 0.381743 to 0.290300, 0.356150 nohead lw 3
set arrow 5 from 0.710232, 0.952508 to 0.658554, 0.883480 nohead lw 3
set arrow 6 from 0.268289, 0.404631 to 0.295974, 0.381743 nohead lw 3
set arrow 7 from 0.212419, 0.782231 to 0.037277, 0.671934 nohead lw 3
set arrow 8 from 0.442926, 0.328678 to 0.499122, 0.289407 nohead lw 3
set arrow 9 from 0.691981, 0.436992 to 0.649824, 0.416500 nohead lw 3
set arrow 10 from 0.499122, 0.289407 to 0.442926, 0.328678 nohead lw 3
set arrow 11 from 0.633229, 0.744219 to 0.639070, 0.773267 nohead lw 3
set arrow 12 from 0.687253, 0.596271 to 0.633229, 0.744219 nohead lw 3
set arrow 13 from 0.851653, 0.253262 to 0.888082, 0.397744 nohead lw 3
set arrow 14 from 0.888082, 0.397744 to 0.754520, 0.378035 nohead lw 3
set arrow 15 from 0.037277, 0.671934 to 0.212419, 0.782231 nohead lw 3
set arrow 16 from 0.754520, 0.378035 to 0.691981, 0.436992 nohead lw 3
set arrow 17 from 0.649824, 0.416500 to 0.691981, 0.436992 nohead lw 3
set arrow 18 from 0.387239, 0.200865 to 0.442926, 0.328678 nohead lw 3
set arrow 19 from 0.188378, 0.320396 to 0.290300, 0.356150 nohead lw 3
set arrow 20 from 0.659761, 0.771680 to 0.639070, 0.773267 nohead lw 3
set arrow 21 from 0.639070, 0.773267 to 0.633229, 0.744219 nohead lw 3
set arrow 22 from 0.639070, 0.773267 to 0.659761, 0.771680 nohead lw 3
show arrow
plot 'nodosCiclo.dat' using 1:2:3 with points pt 7 lc var
quit()
