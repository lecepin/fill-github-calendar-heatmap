#!/bin/bash

day=2

while ((day<31))
do
	((day++))
    _day=`printf "%02d\n" $day`    
    date "01${_day}080821"

    echo "$(date)" > s.txt

    git add .
    git commit -m "${RANDOM}"

    sleep 2s
done


# git push -u origin main