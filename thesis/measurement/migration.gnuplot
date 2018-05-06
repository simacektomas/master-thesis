set term pdf font "times new roman"
set output "measurement_migration.pdf"
set title "Doba běhu migrace v závislosti\n na počtu přenášených zón a zvolené technice"
set key left nobox title "Techniky migrace"
set auto x
set xlabel "Počet současně migrovaných zón"
set grid y
set ylabel "Doba běhu [s]"
set yrange [0:2000]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
plot 'migration.dat' using 2:xtic(1) ti 'Přímá metoda', '' u 3 ti 'Archiv ZFS', '' u 4 ti 'Archiv UAR'
