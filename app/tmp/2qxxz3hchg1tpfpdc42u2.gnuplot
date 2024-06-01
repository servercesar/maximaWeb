set terminal png enhanced truecolor  size 400, 300
set out '/var/www/html/tmp/2qxxz3hchg1tpfpdc42u2.g.3.1.1.png'
if(GPVAL_VERSION >= 5.0){set for [i=1:8] linetype i dashtype i; set format '%h'}
set zero 0.0
set datafile separator whitespace
set size 1.0, 1.0
set origin 0.0, 0.0
set obj 1 rectangle behind from screen 0.0,0.0 to screen 1.0,1.0
set style rectangle fillcolor rgb '#ffffff' fs solid 1.0 noborder
set xrange [-1.0:1.0]
set yrange [-1.0:1.0]
set zrange [2.407412430484045e-31:2.0000000000000027]
set cbrange [*:*]
set title ''
set xlabel ''
set ylabel ''
set zlabel ''
set datafile missing 'NIL'
unset logscale x
unset logscale y
unset logscale z
set key top center
unset logscale cb
unset grid
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
set xtics norotate border autofreq
set ytics norotate border autofreq
set ztics norotate border autofreq
set cbtics autofreq
set view 60, 30, 1, 1

set pm3d at s depthorder explicit
set colorbox
set cblabel ''
set palette rgbformulae 7,5,15
splot '/var/www/html/tmp/2qxxz3hchg1tpfpdc42u2.data' index 0 notitle w l lw 1 lt 1 lc rgb '#0000ff'
unset output
