#!/bin/bash

INFO=$(uptime -p | sed 's/^ *//g' | sed 's/days,/d/g' | sed 's/day,/d/g'| sed 's/hours,/h/g' | sed 's/hour,/h/g' | sed 's/minutes/m/g' | sed 's/minute/m/g' | sed 's/up//g' | sed 's/ //g')

echo "UP : $INFO" 
