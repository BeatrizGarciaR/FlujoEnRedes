set term png
set output 'ModificadoGraf.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.703259, 0.692446 to 0.762825, 0.666320 nohead lw 3
set arrow 2 from 0.452778, 0.057159 to 0.417829, 0.067939 nohead lw 3
set arrow 3 from 0.499002, 0.156698 to 0.519763, 0.149476 nohead lw 3
set arrow 4 from 0.089769, 0.298599 to 0.007334, 0.245401 nohead lw 3
set arrow 5 from 0.375998, 0.360194 to 0.393742, 0.316815 nohead lw 3
set arrow 6 from 0.307040, 0.593519 to 0.304600, 0.557427 nohead lw 3
set arrow 7 from 0.195607, 0.262666 to 0.223382, 0.342060 nohead lw 3
set arrow 8 from 0.626959, 0.863715 to 0.566047, 0.876653 nohead lw 3
set arrow 9 from 0.984498, 0.057447 to 0.911165, 0.304666 nohead lw 3
set arrow 10 from 0.222561, 0.830390 to 0.209751, 0.805470 nohead lw 3
set arrow 11 from 0.812463, 0.580380 to 0.890155, 0.581013 nohead lw 3
set arrow 12 from 0.715157, 0.294839 to 0.715602, 0.194866 nohead lw 3
set arrow 13 from 0.494553, 0.871558 to 0.566047, 0.876653 nohead lw 3
set arrow 14 from 0.441516, 0.602524 to 0.456835, 0.585644 nohead lw 3
set arrow 15 from 0.569205, 0.005013 to 0.452778, 0.057159 nohead lw 3
set arrow 16 from 0.911165, 0.304666 to 0.903176, 0.499714 nohead lw 3
set arrow 17 from 0.559719, 0.524863 to 0.456835, 0.585644 nohead lw 3
set arrow 18 from 0.937269, 0.800056 to 0.929019, 0.784941 nohead lw 3
set arrow 19 from 0.458008, 0.417784 to 0.375998, 0.360194 nohead lw 3
set arrow 20 from 0.265887, 0.754752 to 0.242361, 0.785162 nohead lw 3
set arrow 21 from 0.411076, 0.974625 to 0.494553, 0.871558 nohead lw 3
set arrow 22 from 0.914664, 0.715721 to 0.929019, 0.784941 nohead lw 3
set arrow 23 from 0.213563, 0.018323 to 0.147902, 0.109353 nohead lw 3
set arrow 24 from 0.037871, 0.707577 to 0.074537, 0.840653 nohead lw 3
set arrow 25 from 0.903176, 0.499714 to 0.890155, 0.581013 nohead lw 3
set arrow 26 from 0.223382, 0.342060 to 0.266626, 0.397016 nohead lw 3
set arrow 27 from 0.074537, 0.840653 to 0.114155, 0.884050 nohead lw 3
set arrow 28 from 0.562114, 0.179858 to 0.550553, 0.202961 nohead lw 3
set arrow 29 from 0.938551, 0.979802 to 0.937269, 0.800056 nohead lw 3
set arrow 30 from 0.138611, 0.484820 to 0.266626, 0.397016 nohead lw 3
set arrow 31 from 0.383030, 0.630802 to 0.441516, 0.602524 nohead lw 3
set arrow 32 from 0.236969, 0.913558 to 0.222561, 0.830390 nohead lw 3
set arrow 33 from 0.625948, 0.682483 to 0.703259, 0.692446 nohead lw 3
set arrow 34 from 0.242361, 0.785162 to 0.209751, 0.805470 nohead lw 3
show arrow
plot 'ModificadoNodos.dat' using 1:2 with points pt 7
quit()
