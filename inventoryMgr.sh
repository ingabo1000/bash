#!/usr/bin/env bash


declare -A products_array

while true # or while :  (:)-> means do nothing
do 
read -p "Enter product name: " product_name
read -p "Enter product quantity: " product_quantity

 products_array["$product_name"]="$product_quantity"

  if [ "${#products_array[@]}" -eq 4 ]
  then
    break
   # exit 0  
   # exit zero completely terminates the script
   # break is better for loops so that scripts after the loop can run
  fi

 ((count++))

# log the array to check its content
   for i in "${!products_array[@]}"
   do
     echo "$i: ${products_array[$i]}"
  done
done

echo "----- Final Inventory -----"

for i in "${!products_array[@]}"
do
    echo "$i: ${products_array[$i]}"
done

