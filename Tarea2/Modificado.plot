set term png
set output 'ModificadoGraf.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.820719, 0.993352 to 0.846028, 0.990905 head lw 3
set arrow 2 from 0.867777, 0.800507 to 0.914357, 0.814115 head lw 3
set arrow 3 from 0.032845, 0.115763 to 0.045316, 0.225742 head lw 3
set arrow 4 from 0.783238, 0.444433 to 0.665218, 0.370803 head lw 3
set arrow 5 from 0.589056, 0.765626 to 0.642899, 0.789194 head lw 3
set arrow 6 from 0.731242, 0.661119 to 0.770825, 0.703411 head lw 3
set arrow 7 from 0.872278, 0.710758 to 0.856305, 0.703538 head lw 3
set arrow 8 from 0.469029, 0.117081 to 0.454160, 0.235232 head lw 3
set arrow 9 from 0.367034, 0.880422 to 0.364876, 0.826788 head lw 3
set arrow 10 from 0.531772, 0.937148 to 0.506162, 0.923464 head lw 3
set arrow 11 from 0.918983, 0.161261 to 0.862214, 0.123775 head lw 3
set arrow 12 from 0.941962, 0.415904 to 0.960663, 0.373831 head lw 3
set arrow 13 from 0.524536, 0.330805 to 0.454160, 0.235232 head lw 3
set arrow 14 from 0.506162, 0.923464 to 0.510865, 0.895406 head lw 3
set arrow 15 from 0.392323, 0.934606 to 0.367034, 0.880422 head lw 3
set arrow 16 from 0.259913, 0.154817 to 0.296571, 0.166474 head lw 3
set arrow 17 from 0.886398, 0.625191 to 0.918480, 0.558193 head lw 3
set arrow 18 from 0.390141, 0.274893 to 0.454160, 0.235232 head lw 3
set arrow 19 from 0.306496, 0.648782 to 0.311027, 0.670151 head lw 3
set arrow 20 from 0.024842, 0.603833 to 0.029014, 0.526575 head lw 3
set arrow 21 from 0.428524, 0.990495 to 0.392323, 0.934606 head lw 3
set arrow 22 from 0.994854, 0.421743 to 0.941962, 0.415904 head lw 3
set arrow 23 from 0.438772, 0.569434 to 0.521966, 0.556453 head lw 3
set arrow 24 from 0.142546, 0.552173 to 0.029014, 0.526575 head lw 3
set arrow 25 from 0.088088, 0.274819 to 0.045316, 0.225742 head lw 3
set arrow 26 from 0.003917, 0.353971 to 0.088088, 0.274819 head lw 3
set arrow 27 from 0.857489, 0.873757 to 0.867777, 0.800507 head lw 3
set arrow 28 from 0.429205, 0.861063 to 0.367034, 0.880422 head lw 3
set arrow 29 from 0.090407, 0.723797 to 0.024842, 0.603833 head lw 3
set arrow 30 from 0.352104, 0.393195 to 0.390141, 0.274893 head lw 3
set arrow 31 from 0.205641, 0.184907 to 0.259913, 0.154817 head lw 3
set arrow 32 from 0.250509, 0.311649 to 0.352104, 0.393195 head lw 3
set arrow 33 from 0.337729, 0.651533 to 0.306496, 0.648782 head lw 3
show arrow
plot 'ModificadoNodos.dat' using 1:2 with points pt 7
quit()
