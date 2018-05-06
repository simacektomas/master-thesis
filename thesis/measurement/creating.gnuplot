set term pdf font "times new roman"
set output "measurement_creation.pdf"
set title "Doba běhu vytváření zón v závislosti \n na počtu vytvářených zón a zvolené technice"
set key left nobox title "Techniky vytváření"
set auto x
set xlabel "Počet současně vytvářených zón"
set grid y
set ylabel "Doba běhu [s]"
set yrange [0:2400]
set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9
plot 'creating.dat' using 2:xtic(1) ti 'Klonování', '' u 3 ti 'Šablona', '' u 4 ti 'Vzdálená zóna'
