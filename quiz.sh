#!/bin/bash

score=0

echo "Welcome to the Quiz Game!"
echo "Answer the following:"

# Question 1
read -p "1. What is 2+2? " ans
if [ "$ans" -eq 4 ]; then
    ((score++))
fi

# Question 2
read -p "2. Capital of France? " ans
if [ "${ans,,}" = "paris" ]; then
    ((score++))
fi

# Question 3
read -p "3. True or False: Linux is an OS (T/F)? " ans
if [ "${ans^^}" = "T" ]; then
    ((score++))
fi

# Question 4
read -p "4. Number of bits in a byte? " ans
if [ "$ans" -eq 8 ]; then
    ((score++))
fi

# Question 5
read -p "5. What is 3*5? " ans
if [ "$ans" -eq 15 ]; then
    ((score++))
fi

echo "Your score: $score/5"

