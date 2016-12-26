#!/usr/bin/gnuplot
TITLE = system("echo $TITLE")
LEGEND = system("echo $LEGEND")
SVGTITLE= system("echo $SVGTITLE")
set term svg size 1920,1080 enhanced font "Biolinum,10" name "".SVGTITLE
set grid
set xdata time
set title "".TITLE
set timefmt "%Y-%m-%d"
set format x "%Y-%m-%d"
set autoscale
set xzeroaxis
plot "<cat" using 1:2 with linespoints title "".LEGEND
