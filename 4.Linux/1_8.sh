#!/bin/bash
count=0
ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0
while [ "$count" -lt 700 ]; do
VAR=$(shuf -i 0-5 -n 1)
let "count += 1"
case "$VAR" in
0) let"$ones += 1";;
1) let"$twos += 1";;
2) let "$threes += 1";;
3) let "$fours += 1";;
4) let "$fives += 1";;
5) let "$sixes += 1";;
esac
done
echo "единиц   =   $ones"
echo "двоек    =   $twos"
echo "троек    =   $threes"
echo "четверок =   $fours"
echo "пятерок  =   $fives"
echo "шестерок =   $sixes"
