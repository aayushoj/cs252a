n=51 #number of intervals
max=50.5 #max value
min=-0.5 #min value
width=(max-min)/n #interval width
#function used to map a value to the intervals
hist(x,width)=width*floor(x/width)+width/2.0
set term eps #output terminal and file
set xrange [min:max]
#to put an empty boundary around the
#data inside an autoscaled graph.
set offset graph 0.05,0.05,0.05,0.0
set boxwidth width*0.9
set style fill solid 0.5 #fillstyle
set xlabel "x"
set ylabel "Frequency"
set xtics 5
#count and plot
set yrange [0:150]
set output "hist_bino3.eps"
plot "bino3.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:1500]
set output "hist_bino4.eps"
plot "bino4.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:15000]
set output "hist_bino5.eps"
plot "bino5.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:150000]
set output "hist_bino6.eps"
plot "bino6.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle
#poisson distribution
set yrange [0:150]
set output "hist_poiss3.eps"
plot "poiss3.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:1500]
set output "hist_poiss4.eps"
plot "poiss4.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:15000]
set output "hist_poiss5.eps"
plot "poiss5.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:150000]
set output "hist_poiss6.eps"
plot "poiss6.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle
#normal distribution
set yrange [0:150]
set output "hist_norm3.eps"
plot "norm3.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:1500]
set output "hist_norm4.eps"
plot "norm4.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:15000]
set output "hist_norm5.eps"
plot "norm5.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle

set yrange [0:150000]
set output "hist_norm6.eps"
plot "norm6.dat" u (hist($1,width)):(1.0) smooth freq w boxes lc rgb"blue" notitle
