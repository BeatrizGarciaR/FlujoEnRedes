set term pdf
set output 'DirPeso.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .6
set size square
set key off
set arrow 1 from 0.462403, 0.310828 to 0.363671, 0.332583 nohead filled lw 1
set label font ',11' '6' at 0.408037,0.326706 tc rgb 'brown'
set arrow 2 from 0.627024, 0.927893 to 0.756586, 0.937680 nohead filled lw 1
set label font ',11' '5' at 0.686805,0.937787 tc rgb 'brown'
set arrow 3 from 0.034137, 0.139575 to 0.363671, 0.332583 nohead filled lw 1
set label font ',11' '7' at 0.193904,0.241079 tc rgb 'brown'
set arrow 4 from 0.676321, 0.234520 to 0.705479, 0.151291 nohead filled lw 1
set label font ',11' '2' at 0.685900,0.197905 tc rgb 'brown'
set arrow 5 from 0.826219, 0.162523 to 0.705479, 0.151291 nohead filled lw 1
set label font ',11' '8' at 0.760849,0.161907 tc rgb 'brown'
set arrow 6 from 0.643687, 0.399113 to 0.617463, 0.460057 nohead filled lw 1
set label font ',11' '3' at 0.625575,0.434585 tc rgb 'brown'
set arrow 7 from 0.414410, 0.071240 to 0.471114, 0.021202 nohead filled lw 1
set label font ',11' '5' at 0.437762,0.051221 tc rgb 'brown'
set arrow 8 from 0.099232, 0.921448 to 0.330202, 0.782271 nohead filled lw 1
set label font ',11' '9' at 0.209717,0.856860 tc rgb 'brown'
set arrow 9 from 0.649674, 0.059282 to 0.568642, 0.117236 nohead filled lw 1
set label font ',11' '10' at 0.604158,0.093259 tc rgb 'brown'
set arrow 10 from 0.330202, 0.782271 to 0.336360, 0.663643 nohead filled lw 1
set label font ',11' '1' at 0.328281,0.727957 tc rgb 'brown'
set arrow 11 from 0.336360, 0.663643 to 0.276295, 0.627823 nohead filled lw 1
set label font ',11' '6' at 0.301327,0.650733 tc rgb 'brown'
set arrow 12 from 0.563763, 0.418011 to 0.617463, 0.460057 nohead filled lw 1
set label font ',11' '6' at 0.585613,0.444034 tc rgb 'brown'
set arrow 13 from 0.748044, 0.704236 to 0.756586, 0.937680 nohead filled lw 1
set label font ',11' '2' at 0.747315,0.825958 tc rgb 'brown'
show arrow
plot 'DirPesoNodos.dat' using 1:2 with points pt 7 lc 6
quit()
