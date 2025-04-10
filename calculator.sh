#!/bin/bash

# Check if user provided 3 arguments (num1 operator num2)
if [ "$#" -ne 3 ]; then
    echo "Missing input - Usage: ./calc.sh <num1> <operator> <num2>"
    exit 1
fi

num1=$1
op=$2
num2=$3

case $op in
    +) result=$(($num1 + $num2)) ;;
    -) result=$(($num1 - $num2)) ;;
    /) result=$(($num1 / $num2)) ;;
    *) result=$(($num1 * $num2)) ;;
esac

echo "Result: $result"
 
