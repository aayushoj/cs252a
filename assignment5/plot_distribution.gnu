set term postscript eps enhanced color 24
set output 'graph.eps'
set xlabel "event"
set ylabel "Distribution Functions"
set title "Probability distribution functions"
set label "{/Symbol d} = 3" at 4
set key top left
plot 'distribution_data' u 1:2 title "Quadratic" w lp, 'distribution_data' u 1:3 title "Cubic" w lp, 'distribution_data' u 1:4 title "Exponential" w lp
