#!/usr/bin/env bash

declare -a students
declare -A scores
highest_score=0
total_score=0

for((i=0; i<=2; i++))
do
  read -p "Enter your students name: " student_name
  read -p "Enter your score: " score

  students+=("$student_name")
  scores["$student_name"]=$score

  ((total_score+=$score))

if [ $score -gt $highest_score ]
then
  highest_score=$score
  echo "hightest_score = $highest_score"
fi

echo "total score = ${total_score}"
done



for student in "${students[@]}"
do echo "$student score ${scores[$student]}"
done
