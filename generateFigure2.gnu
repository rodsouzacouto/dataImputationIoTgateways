set term postscript eps "Times-Roman" 21 color;
#set encoding iso_8859_1
set encoding utf8

#set xrange [0.5:5.5]
set yrange [0:]
set style data histogram
set style histogram cluster gap 1
#set style fill solid border -1
set style fill pattern

set xlabel "Year"
set ylabel 'Percentage of missing data (%)'
set xtics ("2011" 1 , "2012" 2, "2013" 3 , "2014" 4, "2015" 5, "2016" 6, "2017" 7, "2018" 8, "2019" 9)
#set xtics ("COff" 1 , "TPar" 2 ,"APar" 3 ,"PracS" 4 )
#set xtics mirro rotate by -45
set xtics offset graph 0.02
#set xtics 1
#set ytics 0.025
#set ytics ("0" 0, "5" 5000, "10" 10000, "15" 15000, "20" 20000, "25" 25000)
#set key at 0.05,0.099;
set key left;

set boxwidth 0.2 absolute

plot "figure2press.dt" using ($1):2 with boxes title "Pres" fill pattern 1 lc 6 lt 1 lw 1,\
     "figure2rh.dt" using ($1+0.2):2 with boxes title "Temp" fill pattern 2 lc 2 lt 1 lw 1,\
     "figure2temp.dt" using ($1+0.4):2 with boxes title "RH" fill pattern 3 lc 3 lt 1 lw 1,\

set output "missingData.eps"

show xlabel

replot
