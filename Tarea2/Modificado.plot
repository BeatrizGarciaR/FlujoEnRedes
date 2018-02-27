set term png
set output 'ModificadoGraf.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.069684, 0.514507 to 0.049531, 0.553399 nohead lw 3
set arrow 2 from 0.057892, 0.268941 to 0.006116, 0.278872 nohead lw 3
set arrow 3 from 0.110614, 0.607811 to 0.048429, 0.616165 nohead lw 3
set arrow 4 from 0.864697, 0.610808 to 0.838029, 0.579090 nohead lw 3
set arrow 5 from 0.719113, 0.659902 to 0.727815, 0.646269 nohead lw 3
set arrow 6 from 0.146124, 0.166543 to 0.122877, 0.202983 nohead lw 3
set arrow 7 from 0.916548, 0.281649 to 0.904469, 0.332972 nohead lw 3
set arrow 8 from 0.546496, 0.228696 to 0.578698, 0.243247 nohead lw 3
set arrow 9 from 0.437417, 0.140369 to 0.463382, 0.111642 nohead lw 3
set arrow 10 from 0.079294, 0.379151 to 0.057892, 0.268941 nohead lw 3
set arrow 11 from 0.223727, 0.749023 to 0.218001, 0.843857 nohead lw 3
set arrow 12 from 0.000943, 0.261472 to 0.006116, 0.278872 nohead lw 3
set arrow 13 from 0.376779, 0.150888 to 0.338514, 0.131220 nohead lw 3
set arrow 14 from 0.105053, 0.004145 to 0.233339, 0.056881 nohead lw 3
set arrow 15 from 0.331587, 0.447603 to 0.347084, 0.480813 nohead lw 3
set arrow 16 from 0.006232, 0.546715 to 0.049531, 0.553399 nohead lw 3
set arrow 17 from 0.450523, 0.221786 to 0.523691, 0.183906 nohead lw 3
set arrow 18 from 0.233339, 0.056881 to 0.288474, 0.087122 nohead lw 3
set arrow 19 from 0.215628, 0.357045 to 0.079294, 0.379151 nohead lw 3
set arrow 20 from 0.783910, 0.337830 to 0.904469, 0.332972 nohead lw 3
set arrow 21 from 0.472988, 0.574674 to 0.470171, 0.642824 nohead lw 3
set arrow 22 from 0.737449, 0.095805 to 0.646703, 0.105843 nohead lw 3
set arrow 23 from 0.718998, 0.692212 to 0.719113, 0.659902 nohead lw 3
set arrow 24 from 0.505985, 0.473447 to 0.472988, 0.574674 nohead lw 3
set arrow 25 from 0.816430, 0.864225 to 0.792745, 0.682878 nohead lw 3
set arrow 26 from 0.507782, 0.637759 to 0.470171, 0.642824 nohead lw 3
set arrow 27 from 0.905078, 0.144712 to 0.916548, 0.281649 nohead lw 3
set arrow 28 from 0.486492, 0.063337 to 0.463382, 0.111642 nohead lw 3
set arrow 29 from 0.792745, 0.682878 to 0.718998, 0.692212 nohead lw 3
set arrow 30 from 0.218001, 0.843857 to 0.242910, 0.899160 nohead lw 3
set arrow 31 from 0.555897, 0.966069 to 0.816430, 0.864225 nohead lw 3
set arrow 32 from 0.646703, 0.105843 to 0.625485, 0.169339 nohead lw 3
set arrow 33 from 0.523691, 0.183906 to 0.546496, 0.228696 nohead lw 3
set arrow 34 from 0.235523, 0.601421 to 0.110614, 0.607811 nohead lw 3
set arrow 35 from 0.917691, 0.597943 to 0.864697, 0.610808 nohead lw 3
show arrow
plot 'ModificadoNodos.dat' using 1:2 with points pt 7
quit()
