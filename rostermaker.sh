#usage: bash rostermaker.sh fullroster.csv 9
for index in {1..3}
 do cat $1 | grep -w $index > rosters$index.csv
done
