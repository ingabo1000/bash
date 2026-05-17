#!/usr/bin/env bash

correct_user="admin"
correct_pass="1234"

attempts=0

while [ $attempts -lt 3 ]
do
  read -p "Username: " username
  read -p "Password: " password

  if [ "$username" = "$correct_user" ] && [ "$password" = "$correct_pass" ]; then
    echo "Access granted"
    exit 0
  fi

  ((attempts++))

  remaining=$((3 - attempts))

  echo "Wrong credentials"
  echo "Attempts remaining: $remaining"
done

echo "Account locked"












