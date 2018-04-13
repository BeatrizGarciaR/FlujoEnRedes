set term png
set output 'BFS.png'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize 2
set size square
set key off
set arrow 1 from 0.393288, 0.570400 to 0.336017, 0.705795 nohead filled lw 1
set arrow 2 from 0.336017, 0.705795 to 0.393288, 0.570400 nohead filled lw 1
set arrow 3 from 0.336017, 0.705795 to 0.376516, 0.724372 nohead filled lw 1
set arrow 4 from 0.376516, 0.724372 to 0.336017, 0.705795 nohead filled lw 1
set arrow 5 from 0.682205, 0.835108 to 0.860977, 0.950103 nohead filled lw 1
set arrow 6 from 0.860977, 0.950103 to 0.682205, 0.835108 nohead filled lw 1
set arrow 7 from 0.166509, 0.183280 to 0.182830, 0.269883 nohead filled lw 1
set arrow 8 from 0.182830, 0.269883 to 0.166509, 0.183280 nohead filled lw 1
set arrow 9 from 0.505328, 0.276286 to 0.559949, 0.209562 nohead filled lw 1
set arrow 10 from 0.559949, 0.209562 to 0.505328, 0.276286 nohead filled lw 1
set arrow 11 from 0.073488, 0.300945 to 0.182830, 0.269883 nohead filled lw 1
set arrow 12 from 0.182830, 0.269883 to 0.073488, 0.300945 nohead filled lw 1
set arrow 13 from 0.933850, 0.493207 to 0.951474, 0.497527 nohead filled lw 1
set arrow 14 from 0.951474, 0.497527 to 0.933850, 0.493207 nohead filled lw 1
set arrow 15 from 0.942229, 0.220217 to 0.785820, 0.167755 nohead filled lw 1
set arrow 16 from 0.785820, 0.167755 to 0.942229, 0.220217 nohead filled lw 1
set arrow 17 from 0.411160, 0.107121 to 0.420595, 0.035486 nohead filled lw 1
set arrow 18 from 0.420595, 0.035486 to 0.411160, 0.107121 nohead filled lw 1
set arrow 19 from 0.378399, 0.811301 to 0.376516, 0.724372 nohead filled lw 1
set arrow 20 from 0.376516, 0.724372 to 0.378399, 0.811301 nohead filled lw 1
set arrow 21 from 0.056310, 0.475122 to 0.073488, 0.300945 nohead filled lw 1
set arrow 22 from 0.073488, 0.300945 to 0.056310, 0.475122 nohead filled lw 1
set arrow 23 from 0.024181, 0.668428 to 0.089491, 0.781464 nohead filled lw 1
set arrow 24 from 0.089491, 0.781464 to 0.024181, 0.668428 nohead filled lw 1
set arrow 25 from 0.089491, 0.781464 to 0.133316, 0.770635 nohead filled lw 1
set arrow 26 from 0.133316, 0.770635 to 0.089491, 0.781464 nohead filled lw 1
set arrow 27 from 0.482401, 0.411822 to 0.505328, 0.276286 nohead filled lw 1
set arrow 28 from 0.505328, 0.276286 to 0.482401, 0.411822 nohead filled lw 1
set arrow 29 from 0.630711, 0.586941 to 0.613627, 0.535814 nohead filled lw 1
set arrow 30 from 0.613627, 0.535814 to 0.630711, 0.586941 nohead filled lw 1
set arrow 31 from 0.785820, 0.167755 to 0.775535, 0.057925 nohead filled lw 1
set arrow 32 from 0.775535, 0.057925 to 0.785820, 0.167755 nohead filled lw 1
set arrow 33 from 0.907095, 0.485736 to 0.933850, 0.493207 nohead filled lw 1
set arrow 34 from 0.933850, 0.493207 to 0.907095, 0.485736 nohead filled lw 1
set arrow 35 from 0.627594, 0.154748 to 0.559949, 0.209562 nohead filled lw 1
set arrow 36 from 0.559949, 0.209562 to 0.627594, 0.154748 nohead filled lw 1
set arrow 37 from 0.406786, 0.238245 to 0.505328, 0.276286 nohead filled lw 1
set arrow 38 from 0.505328, 0.276286 to 0.406786, 0.238245 nohead filled lw 1
set arrow 39 from 0.944749, 0.393826 to 0.907095, 0.485736 nohead filled lw 1
set arrow 40 from 0.907095, 0.485736 to 0.944749, 0.393826 nohead filled lw 1
set arrow 41 from 0.054177, 0.141084 to 0.166509, 0.183280 nohead filled lw 1
set arrow 42 from 0.166509, 0.183280 to 0.054177, 0.141084 nohead filled lw 1
set arrow 43 from 0.505328, 0.276286 to 0.627594, 0.154748 nohead filled lw 1
set arrow 44 from 0.627594, 0.154748 to 0.505328, 0.276286 nohead filled lw 1
set arrow 45 from 0.682205, 0.835108 to 0.420595, 0.035486 nohead filled lw 1
set arrow 46 from 0.420595, 0.035486 to 0.682205, 0.835108 nohead filled lw 1
set arrow 47 from 0.073488, 0.300945 to 0.482401, 0.411822 nohead filled lw 1
set arrow 48 from 0.482401, 0.411822 to 0.073488, 0.300945 nohead filled lw 1
set arrow 49 from 0.376516, 0.724372 to 0.951474, 0.497527 nohead filled lw 1
set arrow 50 from 0.951474, 0.497527 to 0.376516, 0.724372 nohead filled lw 1
set arrow 51 from 0.024181, 0.668428 to 0.627594, 0.154748 nohead filled lw 1
set arrow 52 from 0.627594, 0.154748 to 0.024181, 0.668428 nohead filled lw 1
set arrow 53 from 0.133316, 0.770635 to 0.378399, 0.811301 nohead filled lw 1
set arrow 54 from 0.378399, 0.811301 to 0.133316, 0.770635 nohead filled lw 1
set arrow 55 from 0.133316, 0.770635 to 0.336017, 0.705795 nohead filled lw 1
set arrow 56 from 0.336017, 0.705795 to 0.133316, 0.770635 nohead filled lw 1
set arrow 57 from 0.393288, 0.570400 to 0.024181, 0.668428 nohead filled lw 1
set arrow 58 from 0.024181, 0.668428 to 0.393288, 0.570400 nohead filled lw 1
set arrow 59 from 0.559949, 0.209562 to 0.420595, 0.035486 nohead filled lw 1
set arrow 60 from 0.420595, 0.035486 to 0.559949, 0.209562 nohead filled lw 1
set arrow 61 from 0.166509, 0.183280 to 0.944749, 0.393826 nohead filled lw 1
set arrow 62 from 0.944749, 0.393826 to 0.166509, 0.183280 nohead filled lw 1
set arrow 63 from 0.951474, 0.497527 to 0.860977, 0.950103 nohead filled lw 1
set arrow 64 from 0.860977, 0.950103 to 0.951474, 0.497527 nohead filled lw 1
set arrow 65 from 0.630711, 0.586941 to 0.056310, 0.475122 nohead filled lw 1
set arrow 66 from 0.056310, 0.475122 to 0.630711, 0.586941 nohead filled lw 1
set arrow 67 from 0.420595, 0.035486 to 0.133316, 0.770635 nohead filled lw 1
set arrow 68 from 0.133316, 0.770635 to 0.420595, 0.035486 nohead filled lw 1
set arrow 69 from 0.073488, 0.300945 to 0.907095, 0.485736 nohead filled lw 1
set arrow 70 from 0.907095, 0.485736 to 0.073488, 0.300945 nohead filled lw 1
set arrow 71 from 0.406786, 0.238245 to 0.627594, 0.154748 nohead filled lw 1
set arrow 72 from 0.627594, 0.154748 to 0.406786, 0.238245 nohead filled lw 1
plot 'niveles.dat' using 1:2:3 with points pt 7 lc var
show arrow
quit()
