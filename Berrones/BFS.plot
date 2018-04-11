set term png
set output 'BFS.png'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize 2
set size square
set key off
set arrow 1 from 0.392164, 0.162659 to 0.837513, 0.115946 nohead filled lw 1
set arrow 2 from 0.837513, 0.115946 to 0.392164, 0.162659 nohead filled lw 1
set arrow 3 from 0.250041, 0.905135 to 0.227796, 0.817467 nohead filled lw 1
set arrow 4 from 0.227796, 0.817467 to 0.250041, 0.905135 nohead filled lw 1
set arrow 5 from 0.945925, 0.115269 to 0.837513, 0.115946 nohead filled lw 1
set arrow 6 from 0.837513, 0.115946 to 0.945925, 0.115269 nohead filled lw 1
set arrow 7 from 0.608930, 0.646338 to 0.539537, 0.692599 nohead filled lw 1
set arrow 8 from 0.539537, 0.692599 to 0.608930, 0.646338 nohead filled lw 1
set arrow 9 from 0.812907, 0.693171 to 0.608930, 0.646338 nohead filled lw 1
set arrow 10 from 0.608930, 0.646338 to 0.812907, 0.693171 nohead filled lw 1
set arrow 11 from 0.113267, 0.541128 to 0.214249, 0.632093 nohead filled lw 1
set arrow 12 from 0.214249, 0.632093 to 0.113267, 0.541128 nohead filled lw 1
set arrow 13 from 0.227796, 0.817467 to 0.837513, 0.115946 nohead filled lw 1
set arrow 14 from 0.837513, 0.115946 to 0.227796, 0.817467 nohead filled lw 1
set arrow 15 from 0.837513, 0.115946 to 0.214249, 0.632093 nohead filled lw 1
set arrow 16 from 0.214249, 0.632093 to 0.837513, 0.115946 nohead filled lw 1
set arrow 17 from 0.812907, 0.693171 to 0.837513, 0.115946 nohead filled lw 1
set arrow 18 from 0.837513, 0.115946 to 0.812907, 0.693171 nohead filled lw 1
plot 'BFS.dat' using 1:2:3 with points pt 7 lc var
show arrow
quit()
