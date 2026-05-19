#!/usr/bin/env bash

declare -a numbers
declare -a even_numbers
declare -a odd_numbers
sum=0
largest_number=0

while true
do
    read -p "Enter a number: " number
    numbers+=("$number")

  if [ "${#numbers[@]}" -eq 5 ]; then
    break 
  fi
done

  for num in "${numbers[@]}" 
  do

    ((sum+=$num))

    if [ $num -gt $largest_number ]  
    then
      largest_number=$num
    fi

    if  (( $num % 2 != 0 ))
    then
      odd_numbers+=("$num")
    fi

    if  (( $num % 2 == 0 ))
       then 
         even_numbers+=("$num")
    fi

  done

  echo "sum: $sum" 
  echo "larget_number: $largest_number"

  for number in "${even_numbers[@]}"
  do echo "even numbers: $number"
  done
  
  for value in "${odd_numbers[@]}"
  do echo "odd numbers: $value"
  done

