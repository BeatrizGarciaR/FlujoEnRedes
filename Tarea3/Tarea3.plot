set term pdf
set output 'Tarea3.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .7
set size square
set key off
set arrow 1 from 0.832398, 0.074014 to 0.710074, 0.051037 nohead filled lw 1
set label font ',11' '7' at 0.766236,0.067525 tc rgb 'brown'
set arrow 2 from 0.637867, 0.517666 to 0.704880, 0.813187 nohead filled lw 1
set label font ',11' '1' at 0.666373,0.670426 tc rgb 'brown'
set arrow 3 from 0.704880, 0.813187 to 0.812654, 0.899654 nohead filled lw 1
set label font ',11' '1' at 0.753767,0.861420 tc rgb 'brown'
set arrow 4 from 0.259342, 0.184330 to 0.619956, 0.025730 nohead filled lw 1
set label font ',11' '6' at 0.434649,0.110030 tc rgb 'brown'
set arrow 5 from 0.619956, 0.025730 to 0.710074, 0.051037 nohead filled lw 1
set label font ',11' '4' at 0.660015,0.043384 tc rgb 'brown'
set arrow 6 from 0.532939, 0.965876 to 0.704880, 0.813187 nohead filled lw 1
set label font ',11' '6' at 0.613909,0.894531 tc rgb 'brown'
set arrow 7 from 0.832398, 0.074014 to 0.812654, 0.899654 nohead filled lw 1
set label font ',11' '3' at 0.817526,0.491834 tc rgb 'brown'
set arrow 8 from 0.637867, 0.517666 to 0.259342, 0.184330 nohead filled lw 1
set label font ',11' '7' at 0.443605,0.355998 tc rgb 'brown'
show arrow
plot 'Tarea3.dat' using 1:2 with points pt 7 lc 6
quit()
