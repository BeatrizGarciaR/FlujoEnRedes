set term png
set output 'graficaPrueba.png'
set xrange [0:1]
set yrange [0:1]
set pointsize 3
set size square
set key off
set arrow 1 from 0.322848, 0.412722 to 0.274790, 0.414093 nohead lw 3
set arrow 2 from 0.885995, 0.018821 to 0.999666, 0.160725 nohead lw 3
set arrow 3 from 0.434951, 0.775138 to 0.456178, 0.778850 nohead lw 3
set arrow 4 from 0.164231, 0.662182 to 0.251290, 0.654402 nohead lw 3
set arrow 5 from 0.157598, 0.479103 to 0.112064, 0.482869 nohead lw 3
set arrow 6 from 0.057771, 0.248512 to 0.144897, 0.085483 nohead lw 3
set arrow 7 from 0.760459, 0.640732 to 0.709181, 0.616909 nohead lw 3
set arrow 8 from 0.466297, 0.452223 to 0.471830, 0.408604 nohead lw 3
set arrow 9 from 0.761822, 0.485524 to 0.729765, 0.422869 nohead lw 3
set arrow 10 from 0.891635, 0.313699 to 0.855214, 0.345593 nohead lw 3
set arrow 11 from 0.144897, 0.085483 to 0.272237, 0.121231 nohead lw 3
set arrow 12 from 0.182246, 0.539900 to 0.157598, 0.479103 nohead lw 3
set arrow 13 from 0.404374, 0.306494 to 0.437715, 0.264335 nohead lw 3
set arrow 14 from 0.008915, 0.597416 to 0.112064, 0.482869 nohead lw 3
set arrow 15 from 0.874145, 0.252310 to 0.927399, 0.271271 nohead lw 3
set arrow 16 from 0.351334, 0.509356 to 0.373781, 0.556978 nohead lw 3
set arrow 17 from 0.234426, 0.465038 to 0.274790, 0.414093 nohead lw 3
set arrow 18 from 0.767294, 0.303927 to 0.674385, 0.317356 nohead lw 3
set arrow 19 from 0.287815, 0.540651 to 0.351334, 0.509356 nohead lw 3
set arrow 20 from 0.458800, 0.544256 to 0.485626, 0.603698 nohead lw 3
set arrow 21 from 0.543385, 0.823522 to 0.556983, 0.892778 nohead lw 3
set arrow 22 from 0.673552, 0.668976 to 0.709181, 0.616909 nohead lw 3
set arrow 23 from 0.674385, 0.317356 to 0.619168, 0.256443 nohead lw 3
set arrow 24 from 0.999666, 0.160725 to 0.951361, 0.209640 nohead lw 3
set arrow 25 from 0.599959, 0.542201 to 0.485626, 0.603698 nohead lw 3
set arrow 26 from 0.272237, 0.121231 to 0.337100, 0.131779 nohead lw 3
set arrow 27 from 0.962747, 0.959158 to 0.760459, 0.640732 nohead lw 3
set arrow 28 from 0.251290, 0.654402 to 0.335572, 0.659330 nohead lw 3
set arrow 29 from 0.977091, 0.516931 to 0.881995, 0.553286 nohead lw 3
set arrow 30 from 0.493370, 0.174366 to 0.511241, 0.157280 nohead lw 3
set arrow 31 from 0.386375, 0.791366 to 0.434951, 0.775138 nohead lw 3
set arrow 32 from 0.927399, 0.271271 to 0.891635, 0.313699 nohead lw 3
set arrow 33 from 0.881995, 0.553286 to 0.874686, 0.505078 nohead lw 3
set arrow 34 from 0.951361, 0.209640 to 0.927399, 0.271271 nohead lw 3
show arrow
plot 'nodosprueba.dat' using 1:2:3 with points pt 7 lc var
quit()
