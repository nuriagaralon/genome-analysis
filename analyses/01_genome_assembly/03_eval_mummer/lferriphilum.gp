set terminal postscript color solid "Courier" 8
set output "lferriphilum.ps"
set xtics rotate ( \
 "ENA|OBMB01000001|OBMB01000001.1" 1, \
 "ENA|OBMB01000002|OBMB01000002.1" 2569357, \
 "" 2610531 \
)
set ytics ( \
 "tig00000059" 1, \
 "tig00000061" 48946, \
 "tig00004063" 51542, \
 "tig00004064" 72684, \
 "" 2636043 \
)
set size 1,1
set grid
unset key
set border 0
set tics scale 0
set xlabel "REF"
set ylabel "QRY"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
set mouse clipboardformat "[%.0f, %.0f]"
set xrange [1:2610531]
set yrange [1:2636043]
set style line 1  lt 1 lw 2 pt 6 ps 0.5
set style line 2  lt 3 lw 2 pt 6 ps 0.5
set style line 3  lt 2 lw 2 pt 6 ps 0.5
plot \
 "lferriphilum.fplot" title "FWD" w lp ls 1, \
 "lferriphilum.rplot" title "REV" w lp ls 2
