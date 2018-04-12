set term png
set output 'BFS.png'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize 2
set size square
set key off
set arrow 1 from 0.455797, 0.239609 to 0.574082, 0.122226 nohead filled lw 1
set arrow 2 from 0.574082, 0.122226 to 0.455797, 0.239609 nohead filled lw 1
set arrow 3 from 0.234968, 0.668850 to 0.312059, 0.562906 nohead filled lw 1
set arrow 4 from 0.312059, 0.562906 to 0.234968, 0.668850 nohead filled lw 1
set arrow 5 from 0.438581, 0.706166 to 0.362311, 0.842488 nohead filled lw 1
set arrow 6 from 0.362311, 0.842488 to 0.438581, 0.706166 nohead filled lw 1
set arrow 7 from 0.845939, 0.808277 to 0.624324, 0.483971 nohead filled lw 1
set arrow 8 from 0.624324, 0.483971 to 0.845939, 0.808277 nohead filled lw 1
set arrow 9 from 0.047883, 0.753621 to 0.026377, 0.626429 nohead filled lw 1
set arrow 10 from 0.026377, 0.626429 to 0.047883, 0.753621 nohead filled lw 1
set arrow 11 from 0.293007, 0.475632 to 0.312059, 0.562906 nohead filled lw 1
set arrow 12 from 0.312059, 0.562906 to 0.293007, 0.475632 nohead filled lw 1
set arrow 13 from 0.563588, 0.043753 to 0.574082, 0.122226 nohead filled lw 1
set arrow 14 from 0.574082, 0.122226 to 0.563588, 0.043753 nohead filled lw 1
set arrow 15 from 0.026377, 0.626429 to 0.069755, 0.535413 nohead filled lw 1
set arrow 16 from 0.069755, 0.535413 to 0.026377, 0.626429 nohead filled lw 1
set arrow 17 from 0.624324, 0.483971 to 0.438581, 0.706166 nohead filled lw 1
set arrow 18 from 0.438581, 0.706166 to 0.624324, 0.483971 nohead filled lw 1
set arrow 19 from 0.139835, 0.057722 to 0.455797, 0.239609 nohead filled lw 1
set arrow 20 from 0.455797, 0.239609 to 0.139835, 0.057722 nohead filled lw 1
set arrow 21 from 0.770113, 0.144699 to 0.574082, 0.122226 nohead filled lw 1
set arrow 22 from 0.574082, 0.122226 to 0.770113, 0.144699 nohead filled lw 1
set arrow 23 from 0.574082, 0.122226 to 0.293007, 0.475632 nohead filled lw 1
set arrow 24 from 0.293007, 0.475632 to 0.574082, 0.122226 nohead filled lw 1
set arrow 25 from 0.293007, 0.475632 to 0.438581, 0.706166 nohead filled lw 1
set arrow 26 from 0.438581, 0.706166 to 0.293007, 0.475632 nohead filled lw 1
set arrow 27 from 0.362311, 0.842488 to 0.455797, 0.239609 nohead filled lw 1
set arrow 28 from 0.455797, 0.239609 to 0.362311, 0.842488 nohead filled lw 1
set arrow 29 from 0.455797, 0.239609 to 0.293007, 0.475632 nohead filled lw 1
set arrow 30 from 0.293007, 0.475632 to 0.455797, 0.239609 nohead filled lw 1
set arrow 31 from 0.047883, 0.753621 to 0.563588, 0.043753 nohead filled lw 1
set arrow 32 from 0.563588, 0.043753 to 0.047883, 0.753621 nohead filled lw 1
set arrow 33 from 0.026377, 0.626429 to 0.438581, 0.706166 nohead filled lw 1
set arrow 34 from 0.438581, 0.706166 to 0.026377, 0.626429 nohead filled lw 1
set arrow 35 from 0.438581, 0.706166 to 0.047883, 0.753621 nohead filled lw 1
set arrow 36 from 0.047883, 0.753621 to 0.438581, 0.706166 nohead filled lw 1
set arrow 37 from 0.312059, 0.562906 to 0.574082, 0.122226 nohead filled lw 1
set arrow 38 from 0.574082, 0.122226 to 0.312059, 0.562906 nohead filled lw 1
plot 'BFS.dat' using 1:2:3 with points pt 7 lc var
show arrow
quit()
