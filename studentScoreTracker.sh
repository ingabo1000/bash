#!/usr/bin/env bash

declare -a students
declare -A scores
highest_score=0
total_score=0
average_score=0

for((i=0; i<=2; i++))
do
  read -p "Enter your students name: " student_name
  read -p "Enter your score: " score

  students+=("$student_name")
  scores["$student_name"]=$score

  ((total_score+=$score))
  ((average_score=total_score / ${#students[@]}))

if [ $score -gt $highest_score ]
then
  highest_score=$score
fi
done

  echo "hightest_score = $highest_score"
  echo "total score = ${total_score}"
  echo "Average score = $average_score"


