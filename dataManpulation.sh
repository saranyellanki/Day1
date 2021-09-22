#Data Analysis and Manipulation

#i)
awk '$4 > 10000' data.csv | awk '{ print $2 " " $7 }'

#a)
awk '$4 > 100000' data.csv | awk '{ print }'
#b)
awk '$4 > 10000' data.csv | awk '{ print $2 " " $7 }'

#ii)
awk '/CAPTAIN/ { sum+=$7 }END{ print sum }' data.csv

#a)
awk '/CAPTAIN/ { print }' data.csv
#b)
awk '/CAPTAIN/ { sum+=$7 }END{ print sum }' data.csv

#iii)
awk '{ if ($5 > 7000 && $5 < 10000) print $3 " " $5 }' data.csv

#iv)
awk '{ sum+=$4 }END{ print sum/NR }' data.csv
