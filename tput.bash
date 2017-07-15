#!/bin/bash

tput setaf 0

for ((i=0; i < 257; i++))
do
    bcolor="$(tput setab $i)"

    #black bg set white fg
    if [ $i -eq 16 ] ; then 
	tput setaf bold
	tput setaf 7
    else
	tput sgr0
	tput setaf 0
    fi

    printf "%s%5.0d    "  $bcolor $i

    let "x = i % 10"
    if [ $x -eq 0 ] ; then printf "\n"; fi
done

normal="$(tput sgr0)"
printf "%s\n" $normal

#let "remainder = $dividend % $divisor"

    # for ((j=0; j < 256; j++))
    # do
    # 	bcolor="$(tput setaf $j)"
    # 	printf "%s %d "  $bcolor $j
    # done
  






