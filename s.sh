#!/bin/bash

day=0

while ((day<28))
do
	((day++))
    _day=`printf "%02d\n" $day`    
    date "02${_day}080821"

    echo "$(date)" > s.txt

    git add .
    git commit -m "${RANDOM}"

    sleep 2
done


# git push -u origin main