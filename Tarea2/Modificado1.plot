set term eps
set output 'ModificadoGraf1.eps'
set xrange [0:1]
set yrange [0:1]
set pointsize 1.5
set size square
set key off
set arrow 1 from 0.225074, 0.242146 to 0.289704, 0.215342 head filled lw 3
set arrow 2 from 0.622789, 0.054908 to 0.703317, 0.022030 head filled lw 3
set arrow 3 from 0.963959, 0.590140 to 0.991863, 0.684786 head filled lw 3
set arrow 4 from 0.344732, 0.363115 to 0.313325, 0.334592 head filled lw 3
set arrow 5 from 0.002405, 0.307120 to 0.023839, 0.428774 head filled lw 3
set arrow 6 from 0.225623, 0.013825 to 0.151950, 0.124749 head filled lw 3
set arrow 7 from 0.848279, 0.031918 to 0.827217, 0.129638 head filled lw 3
set arrow 8 from 0.492071, 0.538406 to 0.516962, 0.616776 head filled lw 3
set arrow 9 from 0.013341, 0.475262 to 0.023839, 0.428774 head filled lw 3
set arrow 10 from 0.761177, 0.905824 to 0.747503, 0.938275 head filled lw 3
set arrow 11 from 0.892132, 0.206749 to 0.827217, 0.129638 head filled lw 3
set arrow 12 from 0.603446, 0.814094 to 0.548463, 0.779950 head filled lw 3
set arrow 13 from 0.542398, 0.129389 to 0.517697, 0.161429 head filled lw 3
set arrow 14 from 0.319352, 0.643012 to 0.300920, 0.729324 head filled lw 3
set arrow 15 from 0.689594, 0.398517 to 0.703743, 0.379558 head filled lw 3
set arrow 16 from 0.652847, 0.661437 to 0.516962, 0.616776 head filled lw 3
set arrow 17 from 0.138945, 0.501304 to 0.146553, 0.526298 head filled lw 3
set arrow 18 from 0.937525, 0.090556 to 0.848279, 0.031918 head filled lw 3
set arrow 19 from 0.272359, 0.319394 to 0.313325, 0.334592 head filled lw 3
set arrow 20 from 0.718084, 0.056732 to 0.703317, 0.022030 head filled lw 3
set arrow 21 from 0.813761, 0.887986 to 0.761177, 0.905824 head filled lw 3
set arrow 22 from 0.101193, 0.531371 to 0.146553, 0.526298 head filled lw 3
set arrow 23 from 0.443933, 0.062584 to 0.480855, 0.096611 head filled lw 3
set arrow 24 from 0.933901, 0.870149 to 0.813761, 0.887986 head filled lw 3
set arrow 25 from 0.182191, 0.797138 to 0.125771, 0.704011 head filled lw 3
set arrow 26 from 0.125771, 0.704011 to 0.191618, 0.653810 head filled lw 3
set arrow 27 from 0.143817, 0.150707 to 0.151950, 0.124749 head filled lw 3
set arrow 28 from 0.315839, 0.818201 to 0.300920, 0.729324 head filled lw 3
set arrow 29 from 0.651848, 0.974689 to 0.747503, 0.938275 head filled lw 3
set arrow 30 from 0.675677, 0.319728 to 0.703743, 0.379558 head filled lw 3
set arrow 31 from 0.228084, 0.620714 to 0.191618, 0.653810 head filled lw 3
set arrow 32 from 0.756961, 0.275326 to 0.675677, 0.319728 head filled lw 3
set arrow 33 from 0.815640, 0.402340 to 0.703743, 0.379558 head filled lw 3
set arrow 34 from 0.063465, 0.773844 to 0.125771, 0.704011 head filled lw 3
show arrow
plot 'ModificadoNodos.dat' using 1:2 with points pt 7 lc 6
quit()
