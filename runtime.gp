reset
set ylabel 'time(sec)'
set style data lines
set title 'Compute-pi'
set term png enhanced font 'Verdana,12'
set output 'plot.png'
set xtics rotate by 45 right
set datafile separator ","
set grid

plot [:][:0.015]'result_clock_gettime.csv' using 1:2  title 'Baseline', \
'' using 1:3  title 'OpenMP ( 2 threads )', \
'' using 1:4  title 'OpenMP ( 4 threads )', \
'' using 1:5  title 'AVX', \
'' using 1:6  title 'AVX + Unroll looping', \
'' using 1:7  title 'montecarlo+OpenMP', \
'' using 1:8  title 'MONTECARLO+PTHREAD( 8 threads )' 

