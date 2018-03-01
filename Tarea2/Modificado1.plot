set term png
set output 'ModificadoGraf1.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.095780, 0.706885 to 0.126800, 0.733199 head lw 3
set arrow 2 from 0.975814, 0.608097 to 0.936007, 0.551225 head lw 3
set arrow 3 from 0.933091, 0.887891 to 0.944538, 0.998305 head lw 3
set arrow 4 from 0.738678, 0.960495 to 0.770143, 0.922641 head lw 3
set arrow 5 from 0.199021, 0.363480 to 0.243007, 0.355216 head lw 3
set arrow 6 from 0.249249, 0.722305 to 0.227523, 0.744260 head lw 3
set arrow 7 from 0.545048, 0.558238 to 0.500506, 0.515220 head lw 3
set arrow 8 from 0.533674, 0.783819 to 0.519775, 0.734221 head lw 3
set arrow 9 from 0.159857, 0.771583 to 0.126800, 0.733199 head lw 3
set arrow 10 from 0.043083, 0.361906 to 0.029377, 0.254688 head lw 3
set arrow 11 from 0.396471, 0.864740 to 0.544688, 0.918653 head lw 3
set arrow 12 from 0.346863, 0.713248 to 0.249249, 0.722305 head lw 3
set arrow 13 from 0.125458, 0.495292 to 0.035746, 0.504315 head lw 3
set arrow 14 from 0.500506, 0.515220 to 0.505351, 0.474346 head lw 3
set arrow 15 from 0.603538, 0.768918 to 0.533674, 0.783819 head lw 3
set arrow 16 from 0.275892, 0.494890 to 0.309804, 0.458214 head lw 3
set arrow 17 from 0.069826, 0.895001 to 0.159857, 0.771583 head lw 3
set arrow 18 from 0.743879, 0.608403 to 0.762871, 0.601226 head lw 3
set arrow 19 from 0.899781, 0.152712 to 0.924819, 0.174008 head lw 3
set arrow 20 from 0.134246, 0.195992 to 0.167457, 0.204199 head lw 3
set arrow 21 from 0.914333, 0.025603 to 0.821758, 0.023862 head lw 3
set arrow 22 from 0.545508, 0.174429 to 0.387237, 0.122619 head lw 3
set arrow 23 from 0.886959, 0.416810 to 0.911148, 0.338091 head lw 3
set arrow 24 from 0.519775, 0.734221 to 0.540932, 0.722346 head lw 3
set arrow 25 from 0.387237, 0.122619 to 0.251158, 0.084809 head lw 3
set arrow 26 from 0.823936, 0.631082 to 0.762871, 0.601226 head lw 3
set arrow 27 from 0.805220, 0.223938 to 0.768517, 0.310133 head lw 3
set arrow 28 from 0.544688, 0.918653 to 0.533674, 0.783819 head lw 3
set arrow 29 from 0.234056, 0.059751 to 0.251158, 0.084809 head lw 3
set arrow 30 from 0.788771, 0.795201 to 0.754527, 0.772847 head lw 3
set arrow 31 from 0.709854, 0.723051 to 0.754527, 0.772847 head lw 3
show arrow
plot 'ModificadoNodos.dat' using 1:2 with points pt 6
quit()
