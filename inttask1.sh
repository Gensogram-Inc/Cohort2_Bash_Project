#!/bin/bash

#Interactive Calculator Script (task1.sh)

echo "Welcome to the Interactive Calculator!"
echo "----------------------------------------"

# Ask for first number
read -p "Enter first number: " num1
if ! [[ "$num1" =~ ^-?[0-9]+$ ]]; then
  echo "❌ Error: First input is not a valid integer."
  exit 1
fi

# Ask for operator
read -p "Enter operator (+, -, *, /): " op
if ! [[ "$op" =~ ^[\+\-\*/]$ ]]; then
  echo "❌ Error: Invalid operator. Use +, -, *, or /"
  exit 1
fi

# Ask for second number
read -p "Enter second number: " num2
if ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
  echo "❌ Error: Second input is not a valid integer."
  exit 1
fi

# Handle division by zero
if [[ "$op" == "/" && "$num2" -eq 0 ]]; then
  echo "⚠️ Cannot divide by zero."
  exit 1
fi

# Perform the calculation
result=$(expr "$num1" "$op" "$num2")
echo "Answer = $result"

