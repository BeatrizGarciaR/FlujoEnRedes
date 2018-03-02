set term eps
set output 'DirPeso.eps'
set xrange [0:1]
set yrange [0:1]
set pointsize 1.5
set size square
set key off
set arrow 1 from 0.160110, 0.578594 to 0.200332, 0.637872 head filled lw 1
set label '2' at 0.180221,0.608233
set arrow 2 from 0.842129, 0.950830 to 0.917604, 0.757664 head filled lw 1
set label '5' at 0.879866,0.854247
set arrow 3 from 0.691307, 0.669120 to 0.690086, 0.705880 head filled lw 1
set label '8' at 0.690696,0.687500
set arrow 4 from 0.623850, 0.604003 to 0.647080, 0.611284 head filled lw 1
set label '4' at 0.635465,0.607644
set arrow 5 from 0.071246, 0.407135 to 0.231299, 0.475460 head filled lw 1
set label '3' at 0.151272,0.441298
set arrow 6 from 0.844581, 0.071913 to 0.859531, 0.035055 head filled lw 1
set label '8' at 0.852056,0.053484
set arrow 7 from 0.585620, 0.766939 to 0.690086, 0.705880 head filled lw 1
set label '2' at 0.637853,0.736410
set arrow 8 from 0.758804, 0.604580 to 0.806958, 0.639605 head filled lw 1
set label '5' at 0.782881,0.622092
set arrow 9 from 0.181995, 0.268481 to 0.071246, 0.407135 head filled lw 1
set label '2' at 0.126620,0.337808
set arrow 10 from 0.747196, 0.184840 to 0.772830, 0.118309 head filled lw 1
set label '6' at 0.760013,0.151574
set arrow 11 from 0.566699, 0.308319 to 0.477871, 0.191513 head filled lw 1
set label '6' at 0.522285,0.249916
set arrow 12 from 0.695394, 0.079763 to 0.735750, 0.009781 head filled lw 1
set label '6' at 0.715572,0.044772
set arrow 13 from 0.231299, 0.475460 to 0.229713, 0.558611 head filled lw 1
set label '7' at 0.230506,0.517036
set arrow 14 from 0.615837, 0.452441 to 0.623850, 0.604003 head filled lw 1
set label '9' at 0.619843,0.528222
set arrow 15 from 0.008119, 0.905557 to 0.019712, 0.813881 head filled lw 1
set label '7' at 0.013916,0.859719
set arrow 16 from 0.879330, 0.315138 to 0.784564, 0.287564 head filled lw 1
set label '5' at 0.831947,0.301351
set arrow 17 from 0.079247, 0.080443 to 0.181995, 0.268481 head filled lw 1
set label '3' at 0.130621,0.174462
set arrow 18 from 0.122199, 0.678948 to 0.100931, 0.698974 head filled lw 1
set label '6' at 0.111565,0.688961
set arrow 19 from 0.917604, 0.757664 to 0.825865, 0.630648 head filled lw 1
set label '9' at 0.871735,0.694156
set arrow 20 from 0.526867, 0.012758 to 0.553572, 0.148840 head filled lw 1
set label '1' at 0.540219,0.080799
set arrow 21 from 0.537399, 0.608566 to 0.623850, 0.604003 head filled lw 1
set label '1' at 0.580624,0.606285
set arrow 22 from 0.054182, 0.649486 to 0.008053, 0.614222 head filled lw 1
set label '2' at 0.031117,0.631854
set arrow 23 from 0.806958, 0.639605 to 0.825865, 0.630648 head filled lw 1
set label '10' at 0.816412,0.635126
set arrow 24 from 0.472000, 0.976032 to 0.450116, 0.903444 head filled lw 1
set label '8' at 0.461058,0.939738
set arrow 25 from 0.229713, 0.558611 to 0.160110, 0.578594 head filled lw 1
set label '1' at 0.194911,0.568603
set arrow 26 from 0.846385, 0.130588 to 0.844581, 0.071913 head filled lw 1
set label '3' at 0.845483,0.101250
set arrow 27 from 0.553572, 0.148840 to 0.477871, 0.191513 head filled lw 1
set label '6' at 0.515722,0.170177
show arrow
plot 'DirPesoNodos.dat' using 1:2 with points pt 7 lc 6
quit()
