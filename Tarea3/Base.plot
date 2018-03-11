set term pdf
set output 'Base.pdf'
set xrange [-.1:1.1]
set yrange [-.1:1.1]
set pointsize .7
set size square
set key off
set arrow 1 from 0.257264, 0.448513 to 0.170624, 0.566459 nohead filled lw 1
set label font ',11' '3' at 0.208944,0.512486 tc rgb 'brown'
set arrow 2 from 0.115332, 0.815517 to 0.100860, 0.818580 nohead filled lw 1
set label font ',11' '3' at 0.103096,0.822048 tc rgb 'brown'
set arrow 3 from 0.233325, 0.992729 to 0.283558, 0.992315 nohead filled lw 1
set label font ',11' '2' at 0.253441,0.997522 tc rgb 'brown'
set arrow 4 from 0.712346, 0.644825 to 0.646238, 0.658399 nohead filled lw 1
set label font ',11' '1' at 0.674292,0.656612 tc rgb 'brown'
set arrow 5 from 0.850053, 0.883339 to 0.918652, 0.779227 nohead filled lw 1
set label font ',11' '10' at 0.879352,0.836283 tc rgb 'brown'
set arrow 6 from 0.296055, 0.037814 to 0.145180, 0.042019 nohead filled lw 1
set label font ',11' '4' at 0.215617,0.044917 tc rgb 'brown'
set arrow 7 from 0.856116, 0.411036 to 0.888383, 0.289685 nohead filled lw 1
set label font ',11' '1' at 0.867250,0.355361 tc rgb 'brown'
set arrow 8 from 0.506350, 0.965317 to 0.596459, 0.888741 nohead filled lw 1
set label font ',11' '4' at 0.546404,0.932029 tc rgb 'brown'
set arrow 9 from 0.091862, 0.392360 to 0.218469, 0.292653 nohead filled lw 1
set label font ',11' '2' at 0.150166,0.347506 tc rgb 'brown'
set arrow 10 from 0.218469, 0.292653 to 0.254987, 0.254335 nohead filled lw 1
set label font ',11' '10' at 0.231728,0.278494 tc rgb 'brown'
set arrow 11 from 0.587799, 0.427972 to 0.646238, 0.658399 nohead filled lw 1
set label font ',11' '1' at 0.612019,0.548185 tc rgb 'brown'
set arrow 12 from 0.257264, 0.448513 to 0.506350, 0.965317 nohead filled lw 1
set label font ',11' '5' at 0.376807,0.711915 tc rgb 'brown'
set arrow 13 from 0.115332, 0.815517 to 0.850053, 0.883339 nohead filled lw 1
set label font ',11' '10' at 0.477693,0.854428 tc rgb 'brown'
set arrow 14 from 0.100860, 0.818580 to 0.257264, 0.448513 nohead filled lw 1
set label font ',11' '4' at 0.174062,0.638547 tc rgb 'brown'
set arrow 15 from 0.233325, 0.992729 to 0.506350, 0.965317 nohead filled lw 1
set label font ',11' '8' at 0.364837,0.984023 tc rgb 'brown'
set arrow 16 from 0.712346, 0.644825 to 0.850053, 0.883339 nohead filled lw 1
set label font ',11' '9' at 0.776200,0.769082 tc rgb 'brown'
set arrow 17 from 0.850053, 0.883339 to 0.100860, 0.818580 nohead filled lw 1
set label font ',11' '5' at 0.470457,0.855959 tc rgb 'brown'
set arrow 18 from 0.296055, 0.037814 to 0.850053, 0.883339 nohead filled lw 1
set label font ',11' '2' at 0.568054,0.465577 tc rgb 'brown'
set arrow 19 from 0.856116, 0.411036 to 0.115332, 0.815517 nohead filled lw 1
set label font ',11' '5' at 0.480724,0.618276 tc rgb 'brown'
set arrow 20 from 0.888383, 0.289685 to 0.712346, 0.644825 nohead filled lw 1
set label font ',11' '1' at 0.795365,0.472255 tc rgb 'brown'
show arrow
plot 'Base.dat' using 1:2 with points pt 7 lc 6
quit()
