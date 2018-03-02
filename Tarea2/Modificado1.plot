set term eps
set output 'ModificadoGraf1.eps'
set xrange [0:1]
set yrange [0:1]
set pointsize 1.5
set size square
set key off
set arrow 1 from 0.177123, 0.415421 to 0.209175, 0.309471 nohead filled lw 3
set arrow 2 from 0.106640, 0.731901 to 0.025932, 0.796200 nohead filled lw 3
set arrow 3 from 0.615428, 0.044204 to 0.489165, 0.172125 nohead filled lw 3
set arrow 4 from 0.364889, 0.362653 to 0.349400, 0.379252 nohead filled lw 3
set arrow 5 from 0.693864, 0.746583 to 0.829406, 0.779247 nohead filled lw 3
set arrow 6 from 0.156728, 0.218143 to 0.141672, 0.233159 nohead filled lw 3
set arrow 7 from 0.599897, 0.288695 to 0.527439, 0.303249 nohead filled lw 3
set arrow 8 from 0.829406, 0.779247 to 0.918235, 0.773260 nohead filled lw 3
set arrow 9 from 0.367391, 0.638229 to 0.310681, 0.733089 nohead filled lw 3
set arrow 10 from 0.433059, 0.271580 to 0.515232, 0.319462 nohead filled lw 3
set arrow 11 from 0.245786, 0.322421 to 0.209175, 0.309471 nohead filled lw 3
set arrow 12 from 0.337474, 0.901043 to 0.310681, 0.733089 nohead filled lw 3
set arrow 13 from 0.789866, 0.124819 to 0.703287, 0.242460 nohead filled lw 3
set arrow 14 from 0.427669, 0.395308 to 0.364889, 0.362653 nohead filled lw 3
set arrow 15 from 0.242754, 0.695393 to 0.310681, 0.733089 nohead filled lw 3
set arrow 16 from 0.271596, 0.111669 to 0.307015, 0.196160 nohead filled lw 3
set arrow 17 from 0.703287, 0.242460 to 0.599897, 0.288695 nohead filled lw 3
set arrow 18 from 0.871920, 0.942381 to 0.995927, 0.943393 nohead filled lw 3
set arrow 19 from 0.817045, 0.534325 to 0.900709, 0.459690 nohead filled lw 3
set arrow 20 from 0.293030, 0.329705 to 0.245786, 0.322421 nohead filled lw 3
set arrow 21 from 0.022155, 0.268201 to 0.141672, 0.233159 nohead filled lw 3
set arrow 22 from 0.918235, 0.773260 to 0.988984, 0.740782 nohead filled lw 3
set arrow 23 from 0.012406, 0.616957 to 0.106640, 0.731901 nohead filled lw 3
set arrow 24 from 0.307015, 0.196160 to 0.266748, 0.277449 nohead filled lw 3
set arrow 25 from 0.417391, 0.089333 to 0.358463, 0.044934 nohead filled lw 3
set arrow 26 from 0.016642, 0.111176 to 0.164194, 0.118849 nohead filled lw 3
set arrow 27 from 0.594775, 0.430079 to 0.500226, 0.519798 nohead filled lw 3
set arrow 28 from 0.515232, 0.319462 to 0.527439, 0.303249 nohead filled lw 3
set arrow 29 from 0.158357, 0.029016 to 0.164194, 0.118849 nohead filled lw 3
set arrow 30 from 0.489165, 0.172125 to 0.417391, 0.089333 nohead filled lw 3
set arrow 31 from 0.164194, 0.118849 to 0.147001, 0.186951 nohead filled lw 3
set arrow 32 from 0.929512, 0.620456 to 0.962420, 0.532040 nohead filled lw 3
set arrow 33 from 0.147001, 0.186951 to 0.156728, 0.218143 nohead filled lw 3
set arrow 34 from 0.459960, 0.710572 to 0.367391, 0.638229 nohead filled lw 3
set arrow 35 from 0.453843, 0.553016 to 0.500226, 0.519798 nohead filled lw 3
set arrow 36 from 0.994896, 0.388179 to 0.900709, 0.459690 nohead filled lw 3
set arrow 37 from 0.457771, 0.482383 to 0.500226, 0.519798 nohead filled lw 3
set arrow 38 from 0.266748, 0.277449 to 0.245786, 0.322421 nohead filled lw 3
set arrow 39 from 0.900709, 0.459690 to 0.962420, 0.532040 nohead filled lw 3
show arrow
plot 'ModificadoNodos.dat' using 1:2 with points pt 7 lc 6
quit()
