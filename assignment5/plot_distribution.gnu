set term postscript eps enhanced color 24
set output 'graph.eps'
set xlabel "event"
set ylabel "Distribution Functions"
set title "Probability distribution functions"
set label "{/Symbol m}" at 15,-0.005
set label "+" at 15,0
set label "np" at 15,-0.012
set label "{/Symbol l}" at 15,-0.019

set key top right
plot 'distribution_data' u 1:2 title "binomial" w lp, 'distribution_data' u 1:3 title "poisson" w lp, 'distribution_data' u 1:4 title "guassian" w lp
