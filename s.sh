#!/bin/bash

day=0

while ((day<30))
do
	((day++))
    _day=`printf "%02d\n" $day`    
    date "09${_day}080821"

    echo "$(date)" > s.txt

    git add .
    git commit -m "${RANDOM}"

    # sleep 1
done


# git push -u origin main