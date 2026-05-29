#!/usr/bin/env bash

function login() {
  local username="admin"
  local password=1234

  read -p "Enter username " name
  read -p "Enter password: " passwrd

  if [[ $name != $username ]] || [[ $passwrd != $password ]]; 
  then
    echo "Incorrect username or password"
    echo "Please try again"
    login 
  else
     echo "Logged in successfuly" 
  fi
}

login
