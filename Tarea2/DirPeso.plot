set term pdf
set output 'DirPeso.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .7
set size square
set key off
<<<<<<< HEAD
set arrow 1 from 0.505160, 0.171810 to 0.767536, 0.054598 head filled lw 1
set label font ',10' '4' at 0.636348,0.118204 tc rgb 'brown'
set arrow 2 from 0.767536, 0.054598 to 0.809192, 0.061759 head filled lw 1
set label font ',10' '1' at 0.788364,0.063178 tc rgb 'brown'
set arrow 3 from 0.069817, 0.625948 to 0.197458, 0.453824 head filled lw 1
set label font ',10' '9' at 0.133637,0.544886 tc rgb 'brown'
set arrow 4 from 0.060070, 0.088246 to 0.197458, 0.453824 head filled lw 1
set label font ',10' '3' at 0.128764,0.276035 tc rgb 'brown'
set arrow 5 from 0.620648, 0.555823 to 0.469964, 0.464118 head filled lw 1
set label font ',10' '3' at 0.545306,0.514971 tc rgb 'brown'
set arrow 6 from 0.197458, 0.453824 to 0.342958, 0.461062 head filled lw 1
set label font ',10' '9' at 0.270208,0.462443 tc rgb 'brown'
set arrow 7 from 0.074584, 0.896562 to 0.069817, 0.625948 head filled lw 1
set label font ',10' '7' at 0.072200,0.766255 tc rgb 'brown'
set arrow 8 from 0.469964, 0.464118 to 0.342958, 0.461062 head filled lw 1
set label font ',10' '1' at 0.406461,0.467590 tc rgb 'brown'
=======
set arrow 1 from 0.831211, 0.736654 to 0.829482, 0.717936 head filled lw 1
set label font ',11' '9' at 0.825346,0.732295 tc rgb 'brown'
set arrow 2 from 0.427676, 0.908748 to 0.496274, 0.964432 head filled lw 1
set label font ',11' '9' at 0.456975,0.941590 tc rgb 'brown'
set arrow 3 from 0.547580, 0.865873 to 0.554577, 0.821564 head filled lw 1
set label font ',11' '4' at 0.546078,0.848719 tc rgb 'brown'
set arrow 4 from 0.743876, 0.878877 to 0.772269, 0.852875 head filled lw 1
set label font ',11' '6' at 0.753073,0.870876 tc rgb 'brown'
set arrow 5 from 0.102482, 0.408878 to 0.090635, 0.366479 head filled lw 1
set label font ',11' '4' at 0.091559,0.392679 tc rgb 'brown'
set arrow 6 from 0.384137, 0.191454 to 0.316388, 0.240941 head filled lw 1
set label font ',11' '8' at 0.345262,0.221197 tc rgb 'brown'
set arrow 7 from 0.611039, 0.791850 to 0.554577, 0.821564 head filled lw 1
set label font ',11' '9' at 0.577808,0.811707 tc rgb 'brown'
set arrow 8 from 0.733712, 0.292510 to 0.716975, 0.379403 head filled lw 1
set label font ',11' '4' at 0.720344,0.340957 tc rgb 'brown'
set arrow 9 from 0.718048, 0.392340 to 0.716975, 0.379403 head filled lw 1
set label font ',11' '6' at 0.712511,0.390872 tc rgb 'brown'
set arrow 10 from 0.053520, 0.408120 to 0.102482, 0.408878 head filled lw 1
set label font ',11' '5' at 0.073001,0.413499 tc rgb 'brown'
set arrow 11 from 0.828995, 0.171743 to 0.920463, 0.066754 head filled lw 1
set label font ',11' '9' at 0.869729,0.124249 tc rgb 'brown'
set arrow 12 from 0.614783, 0.220588 to 0.524672, 0.179894 head filled lw 1
set label font ',11' '7' at 0.564727,0.205241 tc rgb 'brown'
set arrow 13 from 0.406010, 0.678651 to 0.496239, 0.768432 head filled lw 1
set label font ',11' '5' at 0.446124,0.728542 tc rgb 'brown'
set arrow 14 from 0.055593, 0.818164 to 0.073676, 0.721550 head filled lw 1
set label font ',11' '7' at 0.059634,0.774857 tc rgb 'brown'
set arrow 15 from 0.666307, 0.451884 to 0.718048, 0.392340 head filled lw 1
set label font ',11' '4' at 0.687178,0.427112 tc rgb 'brown'
set arrow 16 from 0.367411, 0.475601 to 0.189303, 0.485142 head filled lw 1
set label font ',11' '2' at 0.273357,0.485371 tc rgb 'brown'
set arrow 17 from 0.011303, 0.125555 to 0.019069, 0.249538 head filled lw 1
set label font ',11' '6' at 0.010186,0.192547 tc rgb 'brown'
set arrow 18 from 0.942996, 0.322657 to 0.828995, 0.171743 head filled lw 1
set label font ',11' '5' at 0.880995,0.252200 tc rgb 'brown'
set arrow 19 from 0.572440, 0.065262 to 0.495623, 0.028827 head filled lw 1
set label font ',11' '7' at 0.529031,0.052045 tc rgb 'brown'
set arrow 20 from 0.122763, 0.265343 to 0.116471, 0.363337 head filled lw 1
set label font ',11' '1' at 0.114617,0.319340 tc rgb 'brown'
set arrow 21 from 0.116471, 0.363337 to 0.090635, 0.366479 head filled lw 1
set label font ',11' '9' at 0.098553,0.369908 tc rgb 'brown'
set arrow 22 from 0.251667, 0.648460 to 0.406010, 0.678651 head filled lw 1
set label font ',11' '3' at 0.323838,0.668555 tc rgb 'brown'
set arrow 23 from 0.496239, 0.768432 to 0.554577, 0.821564 head filled lw 1
set label font ',11' '3' at 0.520408,0.799998 tc rgb 'brown'
set arrow 24 from 0.999702, 0.065993 to 0.920463, 0.066754 head filled lw 1
set label font ',11' '8' at 0.955082,0.071374 tc rgb 'brown'
set arrow 25 from 0.697360, 0.748828 to 0.611039, 0.791850 head filled lw 1
set label font ',11' '3' at 0.649200,0.775339 tc rgb 'brown'
set arrow 26 from 0.556550, 0.384053 to 0.666307, 0.451884 head filled lw 1
set label font ',11' '2' at 0.606428,0.422969 tc rgb 'brown'
set arrow 27 from 0.590800, 0.955200 to 0.496274, 0.964432 head filled lw 1
set label font ',11' '4' at 0.538537,0.964816 tc rgb 'brown'
set arrow 28 from 0.019069, 0.249538 to 0.122763, 0.265343 head filled lw 1
set label font ',11' '10' at 0.065916,0.262441 tc rgb 'brown'
set arrow 29 from 0.189303, 0.485142 to 0.102482, 0.408878 head filled lw 1
set label font ',11' '9' at 0.140893,0.452010 tc rgb 'brown'
>>>>>>> 09b1a3a0c923cbd9a979fa0e1604a8f6b880fb10
show arrow
plot 'DirPesoNodos.dat' using 1:2 with points pt 7 lc 6
quit()
