set term pdf
set output 'Base.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .7
set size square
set key off
set arrow 1 from 0.983780, 0.017578 to 0.601307, 0.251783 nohead filled lw 1
set label font ',11' '6' at 0.787543,0.139680 tc rgb 'brown'
set arrow 2 from 0.143543, 0.146286 to 0.201784, 0.408094 nohead filled lw 1
set label font ',11' '1' at 0.167664,0.282190 tc rgb 'brown'
set arrow 3 from 0.052344, 0.444613 to 0.201784, 0.408094 nohead filled lw 1
set label font ',11' '6' at 0.122064,0.431354 tc rgb 'brown'
set arrow 4 from 0.846932, 0.952968 to 0.591090, 0.807505 nohead filled lw 1
set label font ',11' '2' at 0.714011,0.885236 tc rgb 'brown'
set arrow 5 from 0.601307, 0.251783 to 0.201784, 0.408094 nohead filled lw 1
set label font ',11' '3' at 0.396546,0.334939 tc rgb 'brown'
set arrow 6 from 0.591090, 0.807505 to 0.481763, 0.826619 nohead filled lw 1
set label font ',11' '8' at 0.531426,0.822062 tc rgb 'brown'
set arrow 7 from 0.983780, 0.017578 to 0.846932, 0.952968 nohead filled lw 1
set label font ',11' '3' at 0.910356,0.490273 tc rgb 'brown'
set arrow 8 from 0.143543, 0.146286 to 0.601307, 0.251783 nohead filled lw 1
set label font ',11' '6' at 0.367425,0.204035 tc rgb 'brown'
set arrow 9 from 0.052344, 0.444613 to 0.591090, 0.807505 nohead filled lw 1
set label font ',11' '9' at 0.316717,0.631059 tc rgb 'brown'
set arrow 10 from 0.846932, 0.952968 to 0.601307, 0.251783 nohead filled lw 1
set label font ',11' '8' at 0.719120,0.607375 tc rgb 'brown'
set arrow 11 from 0.601307, 0.251783 to 0.591090, 0.807505 nohead filled lw 1
set label font ',11' '7' at 0.591198,0.534644 tc rgb 'brown'
show arrow
plot 'Base.dat' using 1:2 with points pt 7 lc 6
quit()
